#include <iostream>
using namespace std;


void swap(int a,int  b)
{
    int temp=a;
    a = b;
    b = temp;

}


void swap1(int* a,int* b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    int a = 1;
    int b = 2;
    swap(a,b);
    cout<<"a:"<<a<<"b:"<<b<<endl;      //结果输出a:1 b:2,没有交换
    cout<<"-----------------"<<endl;
    int c = 3;
    int d = 4;
    swap1(&c,&d);
    cout<<"c:"<<c<<"d:"<<d<<endl;      //结果输出c：4 b：3交换了
    
    return 0;
}
