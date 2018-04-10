// Brennan Huber
// Homework 2 Part 1
#define NULL 0;

#include <stdio.h>
#include <stdlib.h>

// All of the functions for the HW.
double* Sort(double* a, int size);
double Min(double* a, int size);
double Max(double* a, int size);
double Mean(double* a, int size);
double Median(double* a, int size);
double Mode(double* a, int size);

int main()
{
   // initializing basic variables.
   int count;
   int i;
   double curr;

   // getting user input
   printf("How many values do you wish to enter: ");
   scanf("%d", &count);

   // allocating memory for the array of user values.
   double* values = (double*)malloc(count*sizeof(double));

   for(i = 0; i < count; i++)
   {
      scanf("%lf", &curr);
      values[i] = curr;
   }

   // sorting the array of user values.
   values = Sort(values, count);

   // printing out the calculated values.
   printf("Minimum value: %lf\n", Min(values, count));
   printf("Maximum value: %lf\n", Max(values, count));
   printf("Mean value: %lf\n", Mean(values, count));
   printf("Median value: %lf\n", Median(values, count));
   printf("Mode value: %lf\n", Mode(values, count));

   // releasing the memory.
   free(values);

   return 0;
}

// Most basic sorting method there is.
double* Sort(double* a, int size)
{
   int i, j;
   double temp;

   for(i = 1; i < size; i++)
   {
      for(j = i; j > 0; j--)
      {
         if(a[j] < a[j - 1])
         {
            temp = a[j];
            a[j] = a[j - 1];
            a[j - 1] = temp;
         }
      }
   }

   return a;
}

double Min(double* a, int size)
{
   return a[0];
}

double Max(double* a, int size)
{
   return a[size - 1];
}

double Mean(double* a, int size)
{
   int i;
   double sum = 0.0;

   for(i = 0; i < size; i++)
   {
      sum += a[i];
   }

   return sum/(double) size;
}

double Median(double* a, int size)
{
   if(size % 2 == 0)
   {
      double avg = (a[size/2] + a[(size/2) - 1])/2;

      return avg;
   }
   else
      return a[size/2];
}

double Mode(double* a, int size)
{
   int curr = 0;
   int i;
   int mode = 0;
   double mode_value = 0;

   for(i = 0; i < size - 1; i++)
   {
      if(a[i] == a[i + 1])
      {
         curr++;

         if(curr > mode)
         {
            mode = curr;
            mode_value = a[i];
         }
      }
      else
         curr = 0;
   }

   return mode_value;
}
