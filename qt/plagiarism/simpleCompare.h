#pragma once
#include "Includes.h"
class simpleCompare : Compare
{
private:
    int Size = 0;
public:
    float compare(const std::string &FilePath1, const std::string &FilePath2) override; //compare strings line by line
};
