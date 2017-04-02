 ; Sword of Mana Couch Coop Hack by illinx
 ; main.asm

 ; v1--right now the patch just replaces the register
 ; used to query controls for p1, and replaces them with 
 ; the register used for p2


.gba					; Set the architecture to GBA
.thumb					; THUMB instructions
.open "Sword of Mana (USA, Australia).gba", "Sword of Mana Couch Coop.gba", 8000000h

.org 0x080010F4			; the first location the literal pool is defined

	.word 0x4000138

.org 0x0808E1CC			; the second location the literal pool is queried

	.word 0x4000138

.close

; blank line