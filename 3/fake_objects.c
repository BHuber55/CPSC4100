//Brennan Huber
// HW3

#include <stdio.h>
#include <stdlib.h>

typedef struct student
{
   char* name;
   int age;

   void (*setAge)(struct student*, int);
   int (*getAge)(struct student*);

   void (*setName)(struct student*, char*);
   char* (*getName)(struct student*);

   void (*print)(struct student*);

} student;


/* a method definition */
void student_setAge(student* this, int age)
{
   this->age = age;
}

/* a method definition */
int student_getAge(student* this)
{
   return this->age;
}

// Another Method definiton
void student_setName(student* this, char* name)
{
   this->name = name;
}

// Another Method definiton
char* student_getName(student* this)
{
   return this->name;
}

// Another Method definiton
void student_print(student* this)
{
   printf("Name: %s\nAge: %d\n", this->name, this->age);
}

// constructor
void student_construct(student* this, char* name,int age)
{
   this->name = name;
   this->age = age;

   this->setAge = student_setAge;
   this->getAge = student_getAge;

   this->setName = student_setName;
   this->getName = student_getName;

   this->print = student_print;
}

/* -- end `student' class */

/* generic object construction and manipulation macros */
#define NEW(class, obj, ...) class obj; class ## _construct(&obj, ## __VA_ARGS__)
#define METHOD(this, method, ...) this.method(&this, ## __VA_ARGS__)


int main(int argc, char *argv[])
{
   // contructor
   NEW(student, s, "Brennan", 22);

   // testing getters
   printf("Name: %s\n", METHOD(s, getName));
   printf("Age: %d\n", METHOD(s, getAge));

   // testing setters
   METHOD(s, setName, "Huber");
   METHOD(s, setAge, 88);

   printf("After having set name to Huber, and age to 88\n");

   // testing the print method.
   METHOD(s, print);

   return 0;
}
