; AddTwo.asm
; Description:
;	Subtracts three integers using only 32-bit registers. Insert a call DumpRegs statement to display the register values.
; HW2

include Irvine32.inc

.data
num_to_sub		DWORD	100h		; One WORD eqaul 16 bits that is 2 bytes
val1			DWORD	30h			; First num to be sub
val2			DWORD	10h			; Second num to be sub
val3			DWORD	5h			; Last num to be sub

.code
main proc
	xor eax, eax					; Init EAX
	mov	eax, num_to_sub				; Move num_to_sub into EAX
	xor edx, edx					; Init EDX
	mov edx, val1					; Move val1 into EDX
	add edx, val2					; EDX += val2
	add edx, val3					; EDX += val3
	sub eax, edx					; EAX -= EDX

	call DumpRegs

	exit
main endp
end main