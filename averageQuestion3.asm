; Author: Rico H Adrian
; Date: Thursday, 3 November 2016
; Subject: CS 311 Lab 05, Question 3, average 
        
              
        segment         .data 
a       dd              86,34,65,75
b       dq              4
avg     dq              0       

                    
        segment         .text
        global          main
main:   
        
        movsxd          rax,dword[a]
        movsxd          rbx,dword[a+4]
        add             rax,rbx
        movsxd          rbx,dword[a+8]
        add             rax,rbx
        movsxd          rbx,dword[a+12]
        add             rax,rbx
        mov             rbx,[b]
        xor             rdx,rdx
        idiv            rbx
        mov             [avg],rax
        
        ret
        
        
                                                    
                                
                                      
                                            
                                                  
                                                        
       
