extern printf
extern scanf
global main
segment .text

main:
	push rbp
	mov rdi, msg
	mov rax, 0
	call printf
	call printInteger
	call printString
	pop rbp
	mov rax, 0
	ret

printInteger:
	push rbp
	mov rdi, int
	mov rsi, number
	mov rax, 0
	call scanf
	mov rdi, intMsg
	mov rsi, [number]
	mov rax, 0
	call printf
	pop rbp
	mov rax, 0
	ret

printString:
	push rbp
	mov rdi, str
	mov rsi, string
	mov rax, 0
	call scanf
	mov rdi, strMsg
	mov rsi, string
	mov rax, 0
	call printf
	pop rbp
	mov rax, 0
	ret

segment .data
	int: db "%d",10,0
	str: db "%s",0,10
	msg: db "Give Input(Integer then String):",0
	intMsg: db "The number you entered is: %d",10,0
	strMsg: db "The string you entered is: %s",0

segment .bss
	number resb 4
	string resb 100

