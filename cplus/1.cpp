#include <iostream>
#include <string>
using namespace std;

class Animal
{
public:
     virtual void speak()
    {
        cout<<"动物说话"<<endl;
    }

};

class Cat:public Animal{
public:
    void speak()
    {
        cout<<"猫叫"<<endl;
    }
}; 

class Dog:public Animal{
    void speak()
    {
        cout<<"小狗说话"<<endl;
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
