#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QStateMachine>
#include <QHistoryState>
#include <QFileDialog>
#include <QDebug>
#include <QMessageBox>
#include <QString>
#include <QDirIterator>
#include <QTableWidget>
#include <QtCore/qmath.h>
//#include "../../src/mainCompare2Files.cpp"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    auto stateMachine = new QStateMachine(this);

    auto SelectFile = new QState(stateMachine);
    auto PathSelected = new QState(stateMachine);
    auto Error = new QState(stateMachine);
    auto Compare = new QState(stateMachine);
    auto ViewResult = new QState(stateMachine);

    SelectFile->assignProperty(ui->pbStart, "enabled", false);
    SelectFile->assignProperty(ui->pbSelect, "enabled", true);
    SelectFile->assignProperty(ui->tePath, "enabled", true);
    SelectFile->assignProperty(ui->tePath, "placeholderText", "No file selected...");
    SelectFile->assignProperty(ui->cbAlgo, "checked", true);

    connect(ui->pbSelect, SIGNAL(clicked()), this, SLOT(dialog()));
    SelectFile->addTransition(ui->tePath, SIGNAL(textChanged()), PathSelected);

    PathSelected->assignProperty(ui->pbStart, "enabled", true);
    PathSelected->assignProperty(ui->pbStart, "text", "START");
    PathSelected->assignProperty(ui->pbSelect, "enabled", true);

    PathSelected->addTransition(ui->pbStart, SIGNAL(clicked()), Compare);

    connect(Compare, SIGNAL(entered()), this, SLOT(open()));
    Compare->assignProperty(ui->pbStart, "text", "CANCEL");
    Compare->assignProperty(ui->pbSelect, "enabled", false);
    Compare->addTransition(ui->pbStart, SIGNAL(clicked()), PathSelected);

    Compare->addTransition(this, SIGNAL(done()), ViewResult);    
    Compare->addTransition(this, SIGNAL(error()), Error);

    Error->assignProperty(ui->pbStart, "enabled", false);
    Error->assignProperty(ui->pbSelect, "enabled", true);
    Error->addTransition(ui->tePath, SIGNAL(textChanged()), PathSelected);

    ViewResult->assignProperty(ui->pbStart, "enabled", false);
    ViewResult->assignProperty(ui->pbSelect, "enabled", true);
    ViewResult->assignProperty(ui->pbStart, "text", "DONE");
    ViewResult->addTransition(ui->tePath, SIGNAL(textChanged()), PathSelected);
    ViewResult->addTransition(ui->horizontalSlider, &QSlider::sliderReleased, Compare);
    ViewResult->addTransition(ui->cbAlgo, SIGNAL(clicked()), PathSelected);
    ViewResult->addTransition(ui->cbAlgo_2, SIGNAL(clicked()), PathSelected);
    ViewResult->addTransition(ui->cbAlgo_3, SIGNAL(clicked()), PathSelected);
    ViewResult->addTransition(ui->cbAlgo_4, SIGNAL(clicked()), PathSelected);

    stateMachine->setInitialState(SelectFile);

    stateMachine->start();
    viewTable();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::clear()
{
    allProjects.clear();
}

void MainWindow::viewTable()
{
    int numberOfProjects=4;

    QStringList stringlist;
    QString projectsNames[4] = { "Projekt1" , "Projekt2", "Project3", "Project4"};

    //=====================
    for( int i=0; i<=2; i++)
        stringlist << projectsNames[i];

    //===================== Procenty
<<<<<<< HEAD
    double wyniki[16] = {0, 15,25,50,15,25,42,75,25,50,75,100,50,75,100,100};
=======
    double wyniki[16] = {0, 15,35,50,15,35,50,65,35,50,65,85,50,65,85,100};
>>>>>>> f641193b27cd119bf4d77a9cfbb0f0ba5e103361

    ui->tableWidget->setRowCount(numberOfProjects);
    ui->tableWidget->setColumnCount(numberOfProjects);

    int k=0;
        for(int i=0; i<numberOfProjects; i++)
        {
            ui->tableWidget->setHorizontalHeaderItem(i, new QTableWidgetItem(projectsNames[i]));
            ui->tableWidget->setVerticalHeaderItem(i, new QTableWidgetItem(projectsNames[i]));
            for( int j=0; j<numberOfProjects; j++)
            {
                double wartosc = wyniki[k++];
                QString valueAsString = QString::number(wartosc);
                ui->tableWidget->setItem(i,j, new QTableWidgetItem(valueAsString));

                //COLORS
                int red = 255;
                int green = 255;
                double color = 255/50;    //wspolczynnik koloru dla jednego punktu procentowego

                if( wartosc > 50.0)
                    green = qFloor((100-wartosc)*color);
                else if( wartosc < 50.0)
                    red = qFloor(wartosc*color);

                // test for color palette
                red=255;
                green=255;

                if( wartosc > 50.0)
                {
                    green=(100-wartosc)*2*255/100;
                }
                else if( wartosc < 50.0)
                {
                    red=wartosc*2*255/100;
                }

                ui->tableWidget->item(i,j)->setBackgroundColor(QColor(red, green , 0, 127));
            }
        }

}

void MainWindow::dialog()
{
    this->directoryName = QFileDialog::getExistingDirectory(this, tr("Open file"), "..");
    ui->tePath->setPlainText(directoryName);
}

void MainWindow::open()
{
QDir dir(ui->tePath->toPlainText());
    if (dir.exists()==0)
    {
        QMessageBox::information(this, tr("Error"), "Directory doesn't exist.");
        emit error();
        return;
    }


    QDirIterator projectIter(ui->tePath->toPlainText(), QDir::Dirs | QDir::Readable | QDir::NoDotAndDotDot);

    while(projectIter.hasNext())
    {        
        QDirIterator fileIter(projectIter.next(), QDir::Files | QDir::Readable, QDirIterator::Subdirectories);
        std::vector <std::string> allPaths;
        while(fileIter.hasNext())
        {
            QFile file(fileIter.next());
            qDebug() << fileIter.filePath();
            if (!file.open(QIODevice::ReadOnly)) {
                QMessageBox::information(this, tr("Error"), file.errorString());
                emit error();
                return;
            }
            else {
                allPaths.push_back(fileIter.filePath().toStdString());
                file.close();
            }
        }
        allProjects.push_back(allPaths);
        qDebug() << projectIter.filePath() << " NAZWA PROJEKTU\n";

    }


    if(ui->cbAlgo->checkState())
    {
        algorithmsUsed|=0x01;
        numberOfAlgorithmsUsed++;
    }
    if(ui->cbAlgo_2->checkState())
    {
        algorithmsUsed|=0x02;
        numberOfAlgorithmsUsed++;
    }
    if(ui->cbAlgo_3->checkState())
    {
        algorithmsUsed|=0x04;
        numberOfAlgorithmsUsed++;
    }
    if(ui->cbAlgo_4->checkState())
    {
        algorithmsUsed|=0x08;
        numberOfAlgorithmsUsed++;
    }

    std::vector <std::vector <std::vector <std::vector <double>>>> allResults;

    for(unsigned long a=0;a<allProjects.size(); a++)
    {
        allResults.resize(a+1);
        for(unsigned long b=0;b<allProjects.size(); b++)
        {
            allResults[a].resize(b+1);
            if(a<b) // round-robin for projects
            {
                for(unsigned long i=0;i<allProjects[a].size(); i++)
                {
                    allResults[a][b].resize(i+1);
                    for(unsigned long j=0;j<allProjects[b].size(); j++)
                    {
                        allResults[a][b][i].resize(j+1);
                        qDebug() << QString::fromStdString(allProjects[a][i]) << "\n" << QString::fromStdString(allProjects[b][j]);
                        allResults[a][b][i][j] = compare(allProjects[a][i], allProjects[b][j], algorithmsUsed); // result of comparing file i with file j, in projects a and project b
                        qDebug() << QString("%1").arg(allResults[a][b][i][j]) << "\n";
                    }
                }
            }
            else if(a>b)
            {
                allResults[a][b].resize(allProjects[a].size());
                for(unsigned long i=0;i<allProjects[a].size(); i++)
                {
                    allResults[a][b][i].resize(allProjects[b].size());
                    for(unsigned long j=0;j<allProjects[b].size(); j++)
                    {
                        qDebug() << QString::fromStdString(allProjects[a][i]) << "\n" << QString::fromStdString(allProjects[b][j]);
                        allResults[a][b][i][j] = allResults[b][a][j][i];    // cutting number of compare() usages by half
                        qDebug() << QString("%1").arg(allResults[a][b][i][j]) << "\n";
                    }
                }
            }
        }
    }
    algorithmsUsed=0;
    numberOfAlgorithmsUsed=0;
    QMessageBox::information(this, tr("Success"), QString("Directory compared to database."));
    emit done();
}

double MainWindow::compare(std::string file1, std::string file2, int algorithmsUsed)
{
    //qDebug() << "Inside comparing function... please implement.";
   // qDebug() << "algos used: " << algorithmsUsed;

    /* Algorytmy, które masz użyć są zapisane binarnie w zmiennej algorithmsUsed
        wartość 1 to algorytm 1. wartość 2 to algo 2, 3 to algorytmy 1 i 2 itd. */

    // 1. WYBRAĆ WARTOŚĆ Z TABELI WYNIKÓW PORÓWNANIA DWÓCH PLIKÓW

    // 2. ZWRÓCIĆ ŚREDNIĄ TYCH WYNIKÓW DO RETURNA, zmień randa na twój wynik procentowy
    return rand()%100/numberOfAlgorithmsUsed;
}
