    segment  .data 
x   dq        0     ; the number for comparison 
t   dq        0     ; temporary variable
scanf_format db     "%ld",0 
printf_format db    "The number less than fibonacci(%ld) is = %ld",0x0a,0


    segment .text 
    global   main      ; let the linker know about main 
    global  fibonacci  ; declaration of fibonacci function 
    extern  scanf      ; resolve write and exit from libc 
    extern  printf


main:
        push    rbp                     ; push the base pointer(establish the stack frame)
        mov     rbp, rsp                ; move register stack pointer to the base pointer that was already pushed by now
        sub     rsp, 16                 ; space for shadow parameters
        lea     rcx, [scanf_format]     ; set arg 1
        lea     rdx, [x]                ; set arg 2 for scanf call scanf
        xor     eax, eax                ; zero out rax because it will be used on fibonacci function
        call    scanf                   ; call scanf to reads in a number
        mov     rcx, [x]                ; move x for fibonacci call
        call    fibonacci               ; call fibonacci function
        lea     rcx, [printf_format]    ; set arg 1
        mov     rdx, [x]                ; move the value of number for comparison(0) to stack pointer
        mov     r8, rax                 ; move the result of computation in fibonacci function to rdx
        xor     eax, eax                ; zero out rax so that the register can be used for printf function
        call    printf                  ; call printf to print the result of computation of fibonacci
        xor     eax, eax                ; zero out the rax in the end of program
        leave                           ; leave to destroy the stack frame
        ret                             ; return the result in main

fibonacci:                              ; recursive fibonacci function
n       equ     8                       ; place n in stack frame
        push    rbp                     ; keep pushing rbp during the recursion
        mov     rbp, rsp                ; move rsp to rbp
        sub     rsp, 16                 ; subtract rsp by 16 for each recursion
        mov     r9,rax                  ; move the value of rax(0) to r9
        mov     rbx,[t]                 ; move the temporary value to rbx(value always change)
        mov     [rsp],rbx               ; move the value of rbx to first stack
        mov     [rsp+n],r9              ; move the value of r9 to second stack
        mov     r8,[rsp+n]              ; move the value of second stack to r8
        mov     [t],r8                  ; move the r8 to temporary variable
        add     r8,[rsp]                ; add the value of first stack into second stack
        mov     rax,r8                  ; move the value to rax
        cmp     [x],rax                 ; comparing the value of addition and the user input
        jle     greater                 ; otherwise(else), jump to function greater to calculate the result of fibonacci
        call    fibonacci               ; function that call itself as long as the number is not greater than user input
        leave  
        ret
         
greater: 
         mov     rax,[rsp+n]            ; move the current value of second stack into rax(go backward one step) because 
                                        ; if the addition is equal or greater, that's not the number that we want
         leave                          ;to destroy the stack frame, leave
         ret                            ;return the value to the caller
    

