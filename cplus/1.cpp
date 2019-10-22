#include <iostream>
#include <string>
using namespace std;

class Animal
{
public:
     virtual void speak()
    {
    }

};

class Cat:public Animal{
public:
    void speak()
    {
    }
}; 

class Dog:public Animal{
    void speak()
    {
    }
};

//地址早邦定
//如果想让cat说话，就不能提前保定
void doSpeak(Animal &animal)
{
    animal.speak();
}

void test()
{
    Cat cat;
    doSpeak(cat);
    Dog d;
    doSpeak(d);
}

int main()
{
    test();
}
