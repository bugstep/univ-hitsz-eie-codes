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
uchar code disp1[16][8]=
{     
 {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   子
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 电  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 川
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//丰

   {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   子
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 电  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 川
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//丰

  {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   子
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 电  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 川
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//丰

  {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   子
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 电  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 川
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//丰


// {0x08,0xff,0xb2,0xd4,0x4c,0xec,0xba,0x331},//5	   欢
 //{0xbe,0x3a6,0x26,0xe6,0x76,0x76,0xc4,0xbf},//6	 迎
 //{0x0,0x3E,0x22,0x4, 0x8, 0x8, 0x8, 0x8},//7	   您
 //{0x0,0x60,0x40,0x40,0x0,0x40,0x60,0x0},//8		 ！
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
