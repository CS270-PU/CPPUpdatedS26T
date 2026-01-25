//******************************************************************************
// File name:   SampleClass.cpp
// Author:      CS, Pacific University
// Date:        
// Class:       
// Assignment:  
// Purpose:     SampleClass implementation
// Hours:       
//******************************************************************************
#include <iostream>
#include "../include/SampleClass.h"

/*******************************************************************************
Function:     factorial

Description:  The factorial of a number is defined using the folloiwng formula
              n! = n * (n - 1) * (n - 2) * ... * 2 * 1
              The factorial of 0 is defined to be 1
              
Parameter:    uInt - the number to calculate the factorial of

Returned      The factorial of the passed in value
*******************************************************************************/
unsigned int SampleClass::factorial (unsigned int uInt) {
  unsigned int result = 1;

  for (unsigned int i = uInt; i >= 2; i--) {
    result *= i;
  }

  return result;
}