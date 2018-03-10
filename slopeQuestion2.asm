; Author: Rico H Adrian
; Date: Thursday, 3 November 2016
; Subject: CS 311 Lab 05, question 2, slope
        
              
            segment         .data 
x           dq              7,5
y           dq              7,15
distance    dq              0 
top         dq              0
bottom      dq              0
raxValue    dq              0,1  

                    
        segment         .text
        global          main
main:   
        mov          rbx,[x+8]
        mov          rcx,[y+8]
        sub          rcx,rbx
        mov          [top],rcx
        mov          rbx,[x]
        mov          rcx,[y]
        sub          rcx,rbx
        mov          [bottom],rcx
        cmovz        rax,[raxValue+8]
        cmovnz       rax,[raxValue]
        
        ret
