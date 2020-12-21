/*
 * key.h
 *
 *  Created on: 2018-4-12
 *
 */

#ifndef KEY_H_
#define KEY_H_

#define uint16	unsigned int

typedef struct{
	unsigned char S1;					//S1按键按下标志
	unsigned char S2;					//S1按键按下标志
	unsigned char S3;					//S1按键按下标志
	unsigned char S4;					//S4按键按下标志
}StrKeyFlag;

extern StrKeyFlag KeyFlag;
void IO_Init(void);
void ScanKey(void);

#endif /* KEY_H_ */
