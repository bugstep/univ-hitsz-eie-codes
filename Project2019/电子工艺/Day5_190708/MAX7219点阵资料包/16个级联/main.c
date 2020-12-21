//��Ƭ������12M
//��ʾ0-9�й�
#include <reg52.h>
#include <intrins.h>
#define uchar unsigned char
#define uint  unsigned int

#define count 16           //��������
//����Max7219�˿�
sbit Max7219_pinCLK = P2^2;
sbit Max7219_pinCS  = P2^1;
sbit Max7219_pinDIN = P2^0;
uchar code disp1[16][8]=
{     
 {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   ��
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 ��  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 ��
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//��

   {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   ��
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 ��  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 ��
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//��

  {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   ��
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 ��  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 ��
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//��

  {0xfe,0x0c,0x10,0xff,0x10,0x10,0x10,0x30},//4		   ��
 {0x10,0xfe,0x92,0xfe,0x92,0xfe,0x91,0x1e},//3		 ��  
 {0x52,0x52,0x52,0x52,0x52,0x52,0x92,0x82},//2 ��
  {0x10,0xfe,0x10,0x7e,0x10,0xff,0x10,0x10},//��


// {0x08,0xff,0xb2,0xd4,0x4c,0xec,0xba,0x331},//5	   ��
 //{0xbe,0x3a6,0x26,0xe6,0x76,0x76,0xc4,0xbf},//6	 ӭ
 //{0x0,0x3E,0x22,0x4, 0x8, 0x8, 0x8, 0x8},//7	   ��
 //{0x0,0x60,0x40,0x40,0x0,0x40,0x60,0x0},//8		 ��
};
void Delay_xms(uint x);
void Write_Max7219_byte(uchar DATA);//д��һ�ֽ�
void Write_Max7219(uchar address1,uchar dat1,uchar address2,uchar dat2);
void Init_MAX7219(void);
                      // �������Ӧ�Ĵ���


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
        Write_Max7219_byte(i);           //д���ַ��������ܱ��
        Write_Max7219_byte(disp1[count-1-j][i-1]);              //д�����ݣ����������ʾ���� 
  	      _nop_();
     }
     Max7219_pinCS=1;    
 
   }
   Delay_xms(1000);
  
 } 
}
void Init_MAX7219(void)
{ 
/*   Write_Max7219(0x09, 0x00,0x09, 0x00);       //���뷽ʽ��BCD��
  Write_Max7219(0x0a, 0x03,0x0a, 0x03);       //���� 
  Write_Max7219(0x0b, 0x07,0x0b, 0x07);       //ɨ����ޣ�8���������ʾ
  Write_Max7219(0x0c, 0x01,0x0c, 0x01);       //����ģʽ��0����ͨģʽ��1
  Write_Max7219(0x0f, 0x00,0x0f, 0x00);       //��ʾ���ԣ�1�����Խ�����������ʾ��0
  */
uchar  i;
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x09); //���뷽ʽ��BCD��       
    Write_Max7219_byte(0x00);    
  }
  Max7219_pinCS=1;
  _nop_();
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0a); //����    
    Write_Max7219_byte(0x03);    
  }
  Max7219_pinCS=1;
 _nop_();
   Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0b); // //ɨ����ޣ�8���������ʾ  
    Write_Max7219_byte(0x07);    
  }
  Max7219_pinCS=1;
  _nop_();
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0c); //   //����ģʽ��0����ͨģʽ��1
    Write_Max7219_byte(0x01);    
  }
  Max7219_pinCS=1;
  Max7219_pinCS=0;
  for(i=0;i<count;i++)
  {
    Write_Max7219_byte(0x0f); //��ʾ���ԣ�1�����Խ�����������ʾ��0
    Write_Max7219_byte(0x00);    
  }
  Max7219_pinCS=1;
  _nop_();
}
void Write_Max7219(uchar address1,uchar dat1,uchar address2,uchar dat2)
{ 
     uchar i;
     Max7219_pinCS=0;
     Write_Max7219_byte(address1);           //д���ַ��������ܱ��
     Write_Max7219_byte(dat1);              //д�����ݣ����������ʾ���� 
     Write_Max7219_byte(address2);           //д���ַ��������ܱ��
     Write_Max7219_byte(dat2);      //д�����ݣ����������ʾ���� 
	      _nop_();
     
     Max7219_pinCS=1;                        
}
//--------------------------------------------
//���ܣ���MAX7219(U3)д���ֽ�
//��ڲ�����DATA 
//���ڲ�������
//˵����
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
