; Examnen
; Alumno; Ramirez Diez Brian Michel
.org 0000h
	ld a,89h
	out (CW),a
	ld SP, 27ffh
	JP 50H
.ORG 50h
rutina:
	IN a, (KEYB)
	out (LED), a
	ld h, 00h
	ld l, a
	ld a, (HL)
	out (DIS), a
	jp rutina

;tabla de datos
	.org 44h
	.db 06h
	.org 42h
	.db 5Bh
	.org 41h
	.db 4Fh
	.org 24h
	.db 66h
	.org 22h
	.db 6Dh
	.org 21h
	.db 5Fh
	.org 14h
	.db 07h
	.org 12h
	.db 7Fh
	.org 11h
	.db 67H
	.org 0AH
	.db 00H

;segmento de datos
 .org 700h

;constante

DIS:  .equ 00h
LED:  .equ 01h
KEYB: .equ 02h
CW:   .equ 03h

end