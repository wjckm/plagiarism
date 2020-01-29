#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    std::string getFileExtension(const std::string &s);

signals:
    void error();
    void done();

public slots:
    void dialog();
    void open();
    double compare(std::string, std::string,int);
    void clear();
    void viewTable();


private:
    Ui::MainWindow *ui;
    QString directoryName;
    std::vector <std::vector <std::string>> allProjects;
    int algorithmsUsed=0x00;
    int numberOfAlgorithmsUsed=0;
    std::vector <std::vector <std::vector <std::vector <double>>>> allResults;
    std::vector <std::string> allPaths;
    std::vector <std::string> ProjectNames;
};

#endif // MAINWINDOW_H
