;Word Finding Algorithm in Assembly language
;Author: Rahimullah Shaheen, Hadeesa Muskan, Bakhtawar Yousaf


.LC0:
        .string "\n  Enter the length of the word:\n"
.LC1:
        .string "%d"
.LC2:
        .string "cls"
.LC3:
        .string "\n\n"
.LC4:
        .string "\t\t   "
.LC5:
        .string "\t\t%2d  "
.LC6:
        .string "%5d"
.LC7:
        .string "%4c "
.LC8:
        .string "\n"
.LC9:
        .string "Enter the number of column letter %d falls in :"
.LC10:
        .string "\t\t"
.LC11:
        .string " %4d"
.LC12:
        .string " %4c"
.LC13:
        .string "Enter the number of column the %d letter is fall in :"
.LC14:
        .string "\n\n\n\n\n"
.LC15:
        .string "\t\t\t\t"
.LC16:
        .string " %c"
.LC17:
        .string " *"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 3808
        mov     DWORD PTR [rbp-4], 0
        lea     rdx, [rbp-3632]
        mov     eax, 0
        mov     ecx, 450
        mov     rdi, rdx
        rep stosq
        mov     DWORD PTR [rbp-20], 65
        mov     DWORD PTR [rbp-24], 0
        mov     DWORD PTR [rbp-28], 0
        mov     edi, 43
        call    SetColor
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        mov     edi, 46
        call    SetColor
        lea     rax, [rbp-3636]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     DWORD PTR [rbp-8], 0
.L11:
        add     DWORD PTR [rbp-4], 1
        cmp     DWORD PTR [rbp-8], 0
        jne     .L2
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        jmp     .L3
.L2:
        mov     eax, DWORD PTR [rbp-8]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
.L3:
        mov     DWORD PTR [rbp-12], 1
        jmp     .L4
.L8:
        cmp     DWORD PTR [rbp-8], 0
        jne     .L5
        mov     eax, DWORD PTR [rbp-12]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC6
        mov     eax, 0
        call    printf
        jmp     .L6
.L5:
        mov     eax, DWORD PTR [rbp-12]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-8]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 4
        sub     rax, rdx
        add     rax, rax
        lea     rdx, [rax+rcx]
        mov     eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-3632+rdx*4], eax
        add     DWORD PTR [rbp-20], 1
        mov     eax, DWORD PTR [rbp-12]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-8]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 4
        sub     rax, rdx
        add     rax, rax
        add     rax, rcx
        mov     eax, DWORD PTR [rbp-3632+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC7
        mov     eax, 0
        call    printf
        cmp     DWORD PTR [rbp-20], 91
        je      .L35
.L6:
        add     DWORD PTR [rbp-12], 1
.L4:
        mov     eax, DWORD PTR [rbp-3636]
        cmp     DWORD PTR [rbp-12], eax
        jle     .L8
        jmp     .L7
.L35:
        nop
.L7:
        mov     edi, OFFSET FLAT:.LC8
        call    puts
        cmp     DWORD PTR [rbp-20], 91
        je      .L36
        add     DWORD PTR [rbp-8], 1
        jmp     .L11
.L36:
        nop
        mov     edi, 10
        call    putchar
        mov     edi, 43
        call    SetColor
        mov     DWORD PTR [rbp-8], 0
        jmp     .L12
.L13:
        mov     eax, DWORD PTR [rbp-8]
        add     eax, 1
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC9
        mov     eax, 0
        call    printf
        lea     rdx, [rbp-3728]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        add     DWORD PTR [rbp-8], 1
.L12:
        mov     eax, DWORD PTR [rbp-3636]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L13
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     edi, OFFSET FLAT:.LC8
        call    puts
        mov     DWORD PTR [rbp-8], 0
        jmp     .L14
.L21:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rbp-3728+rax*4]
        mov     DWORD PTR [rbp-24], eax
        cmp     DWORD PTR [rbp-8], 0
        jne     .L15
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-12], 0
        jmp     .L16
.L17:
        mov     eax, DWORD PTR [rbp-12]
        add     eax, 1
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC11
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-12], 1
.L16:
        mov     eax, DWORD PTR [rbp-4]
        sub     eax, 1
        cmp     DWORD PTR [rbp-12], eax
        jl      .L17
        mov     edi, OFFSET FLAT:.LC8
        call    puts
.L15:
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-12], 0
        jmp     .L18
.L20:
        mov     eax, DWORD PTR [rbp-24]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-12]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 4
        sub     rax, rdx
        add     rax, rax
        add     rax, rcx
        mov     eax, DWORD PTR [rbp-3632+rax*4]
        test    eax, eax
        je      .L19
        mov     eax, DWORD PTR [rbp-24]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-12]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 4
        sub     rax, rdx
        add     rax, rax
        add     rax, rcx
        mov     eax, DWORD PTR [rbp-3632+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC12
        mov     eax, 0
        call    printf
.L19:
        add     DWORD PTR [rbp-12], 1
.L18:
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-4]
        jl      .L20
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        add     DWORD PTR [rbp-8], 1
.L14:
        mov     eax, DWORD PTR [rbp-3636]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L21
        mov     DWORD PTR [rbp-8], 0
        jmp     .L22
.L23:
        mov     eax, DWORD PTR [rbp-8]
        add     eax, 1
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC13
        mov     eax, 0
        call    printf
        lea     rdx, [rbp-3808]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        add     DWORD PTR [rbp-8], 1
.L22:
        mov     eax, DWORD PTR [rbp-3636]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L23
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     DWORD PTR [rbp-16], 0
        jmp     .L24
.L32:
        cmp     DWORD PTR [rbp-16], 0
        jne     .L25
        mov     edi, OFFSET FLAT:.LC14
        call    puts
.L25:
        mov     edi, OFFSET FLAT:.LC15
        mov     eax, 0
        call    printf
        mov     DWORD PTR [rbp-12], 0
        jmp     .L26
.L31:
        cmp     DWORD PTR [rbp-16], 1
        jne     .L27
        mov     edi, 42
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L28
.L29:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rbp-3728+rax*4]
        mov     DWORD PTR [rbp-24], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        mov     eax, DWORD PTR [rbp-3808+rax*4]
        mov     DWORD PTR [rbp-28], eax
        mov     eax, DWORD PTR [rbp-24]
        movsx   rcx, eax
        mov     eax, DWORD PTR [rbp-28]
        movsx   rdx, eax
        mov     rax, rdx
        sal     rax, 4
        sub     rax, rdx
        add     rax, rax
        add     rax, rcx
        mov     eax, DWORD PTR [rbp-3632+rax*4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC16
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-8], 1
.L28:
        mov     eax, DWORD PTR [rbp-3636]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L29
        mov     edi, OFFSET FLAT:.LC17
        mov     eax, 0
        call    printf
        jmp     .L30
.L27:
        mov     edi, 42
        call    putchar
        add     DWORD PTR [rbp-12], 1
.L26:
        mov     eax, DWORD PTR [rbp-3636]
        lea     edx, [rax-1]
        mov     eax, DWORD PTR [rbp-3636]
        add     edx, eax
        mov     eax, DWORD PTR [rbp-3636]
        add     eax, edx
        cmp     DWORD PTR [rbp-12], eax
        jl      .L31
.L30:
        mov     edi, 10
        call    putchar
        add     DWORD PTR [rbp-16], 1
.L24:
        cmp     DWORD PTR [rbp-16], 2
        jle     .L32
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     eax, 0
        call    getch
        mov     eax, 0
        leave
        ret