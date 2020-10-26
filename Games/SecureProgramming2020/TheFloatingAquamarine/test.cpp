#include<iostream>
using namespace std;

int main()
{
 int a;
 cout<<"输入一个字母:"<<endl;
 cin>>a; //int型变量中放了char型数据,failbit置1
 //cout<<"cin.fail()="<<cin.fail()<<endl;   //输出1

 //cin.clear();
 //cin.sync();
 cout<<"输入一个数字:"<<endl;   //由于failbit值为1,输入流不能正常工作
 cin>>a;                        //故此处的输入无效
 cout<<a<<endl;                 //输出不确定值

 cin.clear();                   //此处用cin.clear()流标志复位
 //cin.sync();
 cout<<"cin.fail()="<<cin.fail()<<endl;       //此处failbit已为0

 cout<<"输入一个数字:"<<endl;
 //但刚才输入的字符并没有从流中清除,所以cin>>a又把那个字符放入a中,流输入流又不能正常工作
 cin>>a;
 cout<<a<<endl; //输出不确定值
 cout<<"cin.fail()="<<cin.fail()<<endl;   //在此处failbit又为1

 cin.clear();           //再次修复输入流
 cin.ignore();           //取走刚才流中的字符
 cout<<"输入一个数字:"<<endl;   //再次接收用记输入,这次输入数字,正常输出了
 cin>>a;
 cout<<"a="<<a<<endl;
 //现在再看一下输入流的failbit
 cout<<"cin.fail()="<<cin.fail()<<endl;//输出0,表明输入流已恢复正常
 return 0;
}
