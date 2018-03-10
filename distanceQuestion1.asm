; Author: Rico H Adrian
; Date: Thursday, 20 October 2016
; Subject: CS 311 Lab 05,question 1, distance 
        
              
            segment         .data 
x           dd              7,5         ; declare variable x of type double word , x is a coordinate(7,5)
y           dd              12,-7       ; declare variable y of type double word, y is a coordinate(12,-7)
distance    dq              0           ; declare variable distance to save the distance value later

                    
        segment         .text
        global          main
main:   
        
        movsxd       rax,dword[x]       ; move the first value of x, in this case x1(7) into rax 
        movsxd       rbx,dword[y]       ; move the first value of y, in this case y1(12) into rbx
        sub          rbx,rax            ; subtract rax from rbx(rbx-rax = y1-x1 = 12-7= 5) and store the value in rbx   
        imul         rbx,rbx            ; multiply rbx by rbx(or rbx squared = 5^2 = 25) and store the value in rbx
        movsxd       rax,dword[x+8]     ; move the second value of x, in this case x2(5) into rax 
        movsxd       rcx,dword[y+8]     ; move the second value of y, in this case y2(-7) into rcx   
        sub          rcx,rax            ; subtract rax from rcx(rcx-rax = y2-x2 = -7-(5) = -12) and store the value in rcx
        imul         rcx,rcx            ; multiply rcx by rcx(rcx squared = 12^2 = 144) and store the value in rcx
        add          rbx,rcx            ; add rcx into rbx( the formula of distance is sqrt of ((y2-x2)^2 + (x2-x1)^2 )
                                        ; therefore, the distance squared is just ((y2-x2)^2+(x2-x1)^2 = 144+25 = 169 )
        mov          [distance],rbx     ; move rbx which is the final value of distance squared into the variable distance
        xor          rax,rax            ; zero out the rax
        ret                         
