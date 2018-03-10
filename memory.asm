; Author: Rico H Adrian
; Date: Thursday, 13 October 2016
; Subject: CS 311 Lab 03, Memory

;question 1

        segment        .data
a       db             35       ;assign a decimal value 35 to the field of type byte                        
b       dw             70       ;assign the decimal value 70 to the field of type word
c       dd             120      ;assign the decimal value 120 to the field of type double word
d       dq             180      ;assign the decimal value 180 to the field of type quad word
e       dw             "This is CS311 course" , 0  ; assign the string value to the field of type word
f       dd             35.375   ;assign the value 35.375(floating point number) to the field of type double word
g       times          30 dw 5  ;assign an array of 30 words and initialize the value of each word to 5 
h       dd             0xa46b0  ;assign a base-16 value 0xa46b0(equal to 673456 in decimal) to the field of type double word 
                                ;dd is the minimum data type we can use for this value. (dw range is only 0-65,535 for decimal)  

;question 2

        segment        .bss
i       resd           25       ;reserve an array of 25 double words
j       resb           100      ;reserve an array of 100 bytes
k       resw           20       ;reserve an array of 20 words

