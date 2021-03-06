//
// Created by khamza on 22.12.2019.
//
#include "../includes/Includes.h"
int main(int argc, char* argv[]) {
    if( argc < 2 ) {
        perror("Wrong number of parameters!\n");
        return -1;
    }
    std::ifstream file1;
    file1.open(argv[1]);
    if( !file1.is_open() ){
        std::cout<<"Error opening: "<<argv[1]<<std::endl;
        return -1;
    }
    std::ifstream file2;
    file2.open(argv[2]);
    if( !file2.is_open() ){
        std::cout<<"Error opening: "<<argv[2]<<std::endl;
        return -1;
    }
    Compare s{};
    s.simpleCompare(file1, file2);
    file1.close();
    file2.close();
    return 0;
}
