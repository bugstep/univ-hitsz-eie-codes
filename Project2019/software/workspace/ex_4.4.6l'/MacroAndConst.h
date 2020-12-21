/*
 * Macro.h
 *
 *  Created on: 2018年1月24日
 *      Author: peter.liu
*     [使用说明]                                              *
*           1、该库文件属于基础库文件。                    *
 */
/********************
*   系 统 宏 定 义  *
********************/



#ifndef MACROANDCONST_H_
#define MACROANDCONST_H_



# define xtal  8
/*------------------*
*   常 数 宏 定 义  *
*------------------*/
# define True    0x01
# define TRUE    0x01
# define False   0x00
# define FALSE   0x00
# define High    0x01
# define HIGH    0x01
# define Low     0x00
# define LOW     0x00




/*------------------*
*   动 作 宏 定 义  *
*------------------*/



#ifndef NULL
    # define NULL    0
#endif




#define UBOUND(a) (sizeof(a)/sizeof(a[0]))

# define SAFE_CODE_PERFORMANCE(Code)     CLI();Code;SEI();


//
//# define SET(Reg,n)    Reg |= BIT(n);
//# define CLR(Reg,n)    Reg &= ~BIT(n);
//# define set(Reg,n)    Reg |= BIT(n);
//# define clr(Reg,n)    Reg &= ~BIT(n);
//# define NOT(Reg,n)    Reg ^= BIT(n);
# define SET(Reg,n)    Reg |= n
# define CLR(Reg,n)    Reg &= ~n;
# define set(Reg,n)    Reg |= n;
# define clr(Reg,n)    Reg &= ~n;
# define NOT(Reg,n)    Reg ^= n;


#endif /* MACROANDCONST_H_ */
