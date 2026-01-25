//******************************************************************************
// File name:   main.cpp
// Author:      CS, Pacific University
// Date:        
// Class:       
// Assignment:  
// Purpose:     Simple driver to execute SampleClass class
// Hours:       
//******************************************************************************

#include <iostream>
#include "../include/SampleClass.h"

int main () {
  SampleClass cSampleClass;

  std::cout << "Factorial of 1: " << cSampleClass.factorial (0) << std::endl;

  std::cout << "Process Completed" << std::endl;

  return EXIT_SUCCESS;
}