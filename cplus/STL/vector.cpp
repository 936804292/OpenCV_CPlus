#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
using namespace std;

//void test()
//{
  //  vector<int> v;
   // v.push_back(10);
   // v.push_back(20);
   // v.push_back(30);
/*   //通过迭代其访问
    vector<int>::iterator itBegin = v.begin();
    vector<int>::iterator itEnd = v.end();
    //便利
    while(itBegin!=itEnd)
    {
        cout<<*itBegin<<endl;
        itBegin++;
    }
    */
    /*
    //第二种便利
    for(vector<int>::iterator it=v.begin();it!=v.end();it++)
    {
        cout<<*it<<endl;
    }*/

  //第三种  for_each(v.begin(),v.end(),func())
  

//}


class Person
{
public:
    int m_age;
    string m_name;
    Person(string name,int age)
    {
        this->m_name = name;
        this->m_age = age;

    }
};

void test()
{
    vector<Person> v;
    Person p1("wang",1);
    Person p2("wu",2);
    Person p3("zhao",3);

    v.push_back(p1);
    v.push_back(p2);
    v.push_back(p3);
    for(vector<Person>::iterator it = v.begin();it!=v.end();it++)
    {
        cout<<"xingming:"<<(*it).m_name<<endl;
        cout<<"ninaling:"<<(*it).m_age<<endl;
    }
}

int main()
{
    test();
}

