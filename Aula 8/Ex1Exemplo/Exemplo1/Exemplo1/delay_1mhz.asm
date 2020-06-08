;delays_1mhz.asm
; — — — — — — — — — — — — — — — — — — — — — — — — — —
delay_5ms:
		rcall delay_1ms
		rcall delay_1ms
		rcall delay_1ms
		rcall delay_1ms
		rcall delay_1ms
		ret
; — — — — — — — — — — — — — — — — — — — — — — — — — —
; — — — — — — — — — — — — — — — — — — — — — — — — — —
delay_1ms:
		push r16 ;salva o valor no r16 da região  GPR
		ldi r16,99 ;accounts for overhead of 12 cycles.
		delay_1ms1: ; 10 us/loop
		nop ; [1 cycle ]
		nop
		nop
		nop
		nop
		nop
		nop
		dec r16
		brne delay_1ms1 ; [2 cycles ]
		pop r16 ;restore the value in r16
		ret
; — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —