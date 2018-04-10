// Brennan Huber
// Homework 2 Part 2
#define NULL 0

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

char RandomChar();
char* Populate(char* c, int width, int size);

int main(int argc, char* argv[])
{
   // initializing basic variables.
   int height = atoi(argv[2]);
   int width = atoi(argv[1]);
   int size = ((width + 1)*height) + 1;

   // allocating space for the array
   char* chars = (char*) malloc(size*sizeof(char));
   // null terminating the end of the array.
   chars[size - 1] = '\0';

   // populating the array of characters.
   chars = Populate(chars, width, size);

   // Printing the randomly generated character matrix
   printf("%s", chars);

   // releasing the memory
   free(chars);

   return 0;
}

// Method used to populate and array with random characters
char* Populate(char* c, int width, int size)
{
   int i;
   srand(time(NULL));
   for(i = 0; i < size - 1; i++)
   {
      if(i % (width + 1) == 0)
         c[i] = '\n';
      else
         c[i] = RandomChar();
   }

   return c;
}

char RandomChar()
{
   // Random Letter
   int l = rand() % 26;

   //ascii table:  65-90 = caps, 97-122 = lower case
   if(rand() % 2 == 0)
      l += 65;
   else
      l += 97;

   return l;
}
