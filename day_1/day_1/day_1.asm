		;.EQU PORTA = $1B
		;.EQU DDRA = $1a
		.cseg
		jmp RESET ; Reset Handler
		jmp EXT_INT0 ; IRQ0 Handler
		jmp EXT_INT1 ; IRQ1 Handler
		jmp TIM2_COMP ; Timer2 Compare Handler
		jmp TIM2_OVF ; Timer2 Overflow Handler
		jmp TIM1_CAPT ; Timer1 Capture Handler
		jmp TIM1_COMPA ; Timer1 CompareA Handler
		jmp TIM1_COMPB ; Timer1 CompareB Handler
		jmp TIM1_OVF ; Timer1 Overflow Handler
		jmp TIM0_OVF ; Timer0 Overflow Handler
		jmp SPI_STC ; SPI Transfer Complete Handler
		jmp USART_RXC ; USART RX Complete Handler
		jmp USART_UDRE ; UDR Empty Handler
		jmp USART_TXC ; USART TX Complete Handler
		jmp ADC_HANDLER ; ADC Conversion Complete Handler
		jmp EE_RDY ; EEPROM Ready Handler
		jmp ANA_COMP ; Analog Comparator Handler
		jmp TWSI ; Two-wire Serial Interface Handler
		jmp EXT_INT2 ; IRQ2 Handler
		jmp TIM0_COMP ; Timer0 Compare Handler
		jmp SPM_RDY ; Store Program Memory Ready Handler
;
RESET:  ldi r16,high(RAMEND)
		out SPH,r16
		ldi r16,low(RAMEND)
		out	SPL,r16
		sei
		clr r16
		ser r17
		out DDRA,r17
Main:	out PORTA,r17
		out PORTA,r16
		rjmp Main

EXT_INT0: ; IRQ0 Handler
EXT_INT1: ; IRQ1 Handler
TIM2_COMP: ; Timer2 Compare Handler
TIM2_OVF: ; Timer2 Overflow Handler
TIM1_CAPT: ; Timer1 Capture Handler
TIM1_COMPA: ; Timer1 CompareA Handler
TIM1_COMPB: ; Timer1 CompareB Handler
TIM1_OVF: ; Timer1 Overflow Handler
TIM0_OVF: ; Timer0 Overflow Handler
SPI_STC: ; SPI Transfer Complete Handler
USART_RXC: ; USART RX Complete Handler
USART_UDRE: ; UDR Empty Handler
USART_TXC: ; USART TX Complete Handler
ADC_HANDLER: ; ADC Conversion Complete Handler
EE_RDY: ; EEPROM Ready Handler
ANA_COMP: ; Analog Comparator Handler
TWSI: ; Two-wire Serial Interface Handler
EXT_INT2: ; IRQ2 Handler
TIM0_COMP: ; Timer0 Compare Handler
SPM_RDY: ; Store Program Memory Ready Handler