/*
  Helper functions for sorting algorithms 
  Liam Muro (lmuro1@swarthmore.edu) (liammuro123@icloud.com)
*/

#include "helperLib.h"
using namespace std;


void swap(int* array, int index1, int index2) {
    int temp = array[index1];
    array[index1] = array[index2];
    array[index2] = temp;
}