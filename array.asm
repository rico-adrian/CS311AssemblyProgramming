; Author: Rico H Adrian
; Date: Thursday, 20 October 2016
; Subject: CS 311 Lab 04, Array
        
        
        
        segment         .data 
a       dw              112 ,67 ,121      ; assign the decimal value 112, 67, and 121 to the field of type word
sum     dq              0                 ; initialize the field sum to 0 and set it as a memory to store the sum
diff    dq              0                 ; initialize the field diff to 0 and set it as a memory to store the difference

        segment         .text
        global          main
main:   
        mov             rcx , 0           ; set the value of rcx to 0
        movsx           rax, word[a]      ; move the value of the first number in field a(112) to rax
        add             rcx, rax          ; add the current value of rax to rcx(0+112=112)
        movsx           rax, word[a+2]    ; move the value of the second number in field a which is 67 to rax
        add             rcx, rax          ; add the current value of rax to rcx(112+67=179)
        movzx           rax, word[a+4]    ; move the value of third number in field a which is 121 to rax
        add             rcx,rax           ; add the current value of rax to rcx(179+121=300)
        mov             [sum],rcx         ; move/store the value of rcx(300) to the field sum
        movzx           rax, word[a]      ; move the value of the first number in field a(112) to rax
        movzx           rbx, word[a+2]    ; move the value of the second number in field a(67) to rax
        sub             rax, rbx          ; subtract rbx to rax(112-67=45) and store the value to rax
        movzx           rbx, word[a+4]    ; move the value of the third number in field a(121) to rbx
        sub             rax,rbx           ; subtract rbx to rax(45-121=-76) and store the value to rax
        mov             [diff],rax        ; move/store the value of rax(-76) to the field diff 
        xor             rax,rax           ; zero out rax
        ret                 
                  
       
        

         
                
                     
        
        
                 
      

        
