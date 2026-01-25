//****************************************************************************** 
// File name:		SampleClassTests.cpp
// Author:			CS, Pacific University
// Date:				
// Class:				CS 250
// Assignment:  
// Purpose:			This file is written to unit test all functions that are part
//              of the included interface.
// Hours:
//******************************************************************************

#include <gtest/gtest.h>

// interface to unit test
#include "../include/SampleClass.h"

// Each unit test for a given function is added below
TEST (SampleClassTest, factorial) {
  SampleClass cSampleClass;

  EXPECT_EQ (1, cSampleClass.factorial (0));
  EXPECT_EQ (1, cSampleClass.factorial (1));
  EXPECT_EQ (2, cSampleClass.factorial (2));
  EXPECT_EQ (6, cSampleClass.factorial (3));
  EXPECT_EQ (24, cSampleClass.factorial (4));
}
