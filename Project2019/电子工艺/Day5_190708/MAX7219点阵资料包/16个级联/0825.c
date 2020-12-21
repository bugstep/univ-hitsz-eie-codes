 //单片机晶振12M
//显示0-9中国
#include <reg52.h>
#include <intrins.h>
#define uchar unsigned char
#define uint  unsigned int

#define count 16           //级联个数
//定义Max7219端口
sbit Max7219_pinCLK = P2^2;
sbit Max7219_pinCS  = P2^1;
sbit Max7219_pinDIN = P2^0;
uchar code disp1[20][8]=
{     
 {0x3C,0x42,0x42,0x42,0x42,0x42,0x42,0x3C},//0
 {0x10,0x30,0x50,0x10,0x10,0x10,0x10,0x38},//1
 {0x7E,0x2,0x2,0x7E,0x40,0x40,0x40,0x7E},//2
 {0x3E,0x2,0x2,0x3E,0x2,0x2,0x3E,0x0},//3
 {0x8,0x18,0x28,0x48,0xFE,0x8,0x8,0x00},//4
 {0x0,0x3C,0x20,0x20,0x3C,0x4,0x4,0x3C},//5
 {0x0,0x3C,0x20,0x20,0x3C,0x24,0x24,0x3C},//6
 {0x0,0x3E,0x22,0x4, 0x8, 0x8, 0x8, 0x8},//7
 {0x0,0x3E,0x22,0x22,0x3E,0x22,0x22,0x3E},//8
 {0x3E,0x22,0x22,0x3E,0x2,0x2,0x3E,0x00},//9
 {0x0,0x8,0x14,0x22,0x3E,0x22,0x22,0x22},//A
 {0x0,0x3C,0x22,0x22,0x3E,0x22,0x22,0x3C},//B
 {0x0,0x3C,0x40,0x40,0x40,0x40,0x40,0x3C},//C
 {0x0,0x7C,0x42,0x42,0x42,0x42,0x42,0x7C},//D
 {0x7C,0x40,0x40,0x7C,0x40,0x40,0x7c,0x00},//E
 {0x00,0x7C,0x40,0x40,0x7C,0x40,0x40,0x40},//F
 {0x00,0x3C,0x40,0x40,0x40,0x44,0x44,0x3C},//G
 {0x00,0x44,0x44,0x44,0x7C,0x44,0x44,0x44},//H
 {0x00,0x10,0xFE,0x92,0x92,0xFE,0x10,0x10},//中
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
  // for(i=1;i<9;i++)
 //   Write_Max7219(i,disp1[1][i-1],i,disp1[0][i-1]);

   for(i=1;i<9;i++)
   {
   
 //  Write_Max7219(i,disp1[1][i-1],i,disp1[0][i-1]);

    Max7219_pinCS=0;
    for(j=0;j<count;j++)
    {
        Write_Max7219_byte(i);           //写入地址，即数码管编号
        Write_Max7219_byte(disp1[count-1-j][i-1]);              //写入数据，即数码管显示数字 
  	      _nop_();
     }
     Max7219_pinCS=1;    
 
   }
   Delay_xms(1000);
  
 } 
}
void Init_MAX7219(void)
{ 
/*   Write_Max7219(0x09, 0x00,0x09, 0x00);       //译码方式：BCD码
  Write_Max7219(0x0a, 0x03,0x0a, 0x03);       //亮度 
  Write_Max7219(0x0b, 0x07,0x0b, 0x07);       //扫描界限；8个数码管显示
  Write_Max7219(0x0c, 0x01,0x0c, 0x01);       //掉电模式：0，普通模式：1
  Write_Max7219(0x0f, 0x00,0x0f, 0x00);       //显示测试：1；测试结束，正常显示：0
  */
uchar  i;
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x09); //译码方式：BCD码       
    Write_Max7219_byte(0x00);    
  }
  Max7219_pinCS=1;
  _nop_();
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0a); //亮度    
    Write_Max7219_byte(0x03);    
  }
  Max7219_pinCS=1;
 _nop_();
   Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0b); // //扫描界限；8个数码管显示  
    Write_Max7219_byte(0x07);    
  }
  Max7219_pinCS=1;
  _nop_();
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0c); //   //掉电模式：0，普通模式：1
    Write_Max7219_byte(0x01);    
  }
  Max7219_pinCS=1;
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0f); //显示测试：1；测试结束，正常显示：0
    Write_Max7219_byte(0x00);    
  }
  Max7219_pinCS=1;
  _nop_();
}
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
