//单片机晶振12M
//显示中国
#include <reg52.h>
#include <intrins.h>
#define uchar unsigned char
#define uint  unsigned int
//定义Max7219端口
sbit Max7219_pinCLK = P2^2;
sbit Max7219_pinCS  = P2^1;
sbit Max7219_pinDIN = P2^0;
uchar code disp1[2][8]=
{     
  {0x10,0xFE,0x92,0x92,0xFE,0x10,0x10,0x10},//中
  {0xFE,0xBA,0x92,0xBA,0x92,0x9A,0xBA,0xFE},//国
};
void Delay_xms(uint x);
void Write_Max7219_byte(uchar DATA);//写入一字节
void Write_Max7219(uchar address1,uchar dat1,uchar address2,uchar dat2);
void Init_MAX7219(void);
                      // 锁存进相应寄存器


void main(void)
{
 uchar i,j;
 Delay_xms(50);
 Init_MAX7219();  
 while(1)
 {

   for(i=1;i<9;i++)
   
   Write_Max7219(i,disp1[1][i-1],i,disp1[0][i-1]);


   Delay_xms(1000);
  
 } 
}
void Init_MAX7219(void)
{
  Write_Max7219(0x09, 0x00,0x09, 0x00);       //译码方式：BCD码
  Write_Max7219(0x0a, 0x03,0x0a, 0x03);       //亮度 
  Write_Max7219(0x0b, 0x07,0x0b, 0x07);       //扫描界限；8个数码管显示
  Write_Max7219(0x0c, 0x01,0x0c, 0x01);       //掉电模式：0，普通模式：1
  Write_Max7219(0x0f, 0x00,0x0f, 0x00);       //显示测试：1；测试结束，正常显示：0
}
//-------------------------------------------
//功能：向MAX7219写入数据
//入口参数：address、dat
//出口参数：无
//说明：
void Write_Max7219(uchar address1,uchar dat1,uchar address2,uchar dat2)
{ 
     uchar i;
     Max7219_pinCS=0;
     Write_Max7219_byte(address1);           //写入地址，即数码管编号
     Write_Max7219_byte(dat1);              //写入数据，即数码管显示数字 
     Write_Max7219_byte(address2);           //写入地址，即数码管编号
     Write_Max7219_byte(dat2);      //写入数据，即数码管显示数字 
	      _nop_();
     
     Max7219_pinCS=1;                        
}

//--------------------------------------------
//功能：向MAX7219(U3)写入字节
//入口参数：DATA 
//出口参数：无
//说明：
void Write_Max7219_byte(uchar DATA)         
{
    	uchar i;    
	    for(i=8;i>=1;i--)
          {		  
            Max7219_pinCLK=0;
            Max7219_pinDIN=DATA&0x80;
            DATA=DATA<<1;
            Max7219_pinCLK=1;
           }                                 
}
void Delay_xms(uint x)
{
 uint i,j;
 for(i=0;i<x;i++)
  for(j=0;j<112;j++);
}
