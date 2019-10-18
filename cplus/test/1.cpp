#include <iostream>
using namespace std;

class Home{
public:
    string m_SittingRome;
private:
    string m_Bedroom;
public:
    Home()
    {
        this->m_Bedroom 
    }

    friend void goodGay(Home &ho)
    {
        cout<<"好jiyou正在访问："<<ho.m_Bedroom="卧室"<<endl;
    }
};
