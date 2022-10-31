

	#seta instrumento
	addi $a2, $zero, 2
	#seta volume
	addi $a3, $zero, 127	
	
	
	#	B 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 71
	syscall
	
	addi $t0, $zero, 500
	jal sleep
	
	#	E 1500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 1500
	#nota
	addi $a0, $zero, 64
	syscall
	
	addi $t0, $zero, 1500
	jal sleep
	
	#	G 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 67
	syscall
	
	addi $t0, $zero, 500
	jal sleep
	
	#	F# 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 66
	syscall
	
	addi $t0, $zero, 500
	jal sleep
	
	#	E 1500 sleep 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 1500
	#nota
	addi $a0, $zero, 64
	syscall
	
	addi $t0, $zero, 2000
	jal sleep
	
	#	A 2000
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 2000
	#nota
	addi $a0, $zero, 69
	syscall
	
	addi $t0, $zero, 2000
	jal sleep
	
	#	F# 2000 sleep 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 2000
	#nota
	addi $a0, $zero, 66
	syscall
	
	addi $t0, $zero, 2500
	jal sleep
	
	#	E 1000
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 1000
	#nota
	addi $a0, $zero, 64
	syscall
	
	addi $t0, $zero, 1000
	jal sleep
	
	#	G 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 67
	syscall
	
	addi $t0, $zero, 500
	jal sleep
	
	#	F# 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 66
	syscall
	
	addi $t0, $zero, 500
	jal sleep
	
	#	Eb 1000 sleep 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 1000
	#nota
	addi $a0, $zero, 63
	syscall
	
	addi $t0, $zero, 1500
	jal sleep
	
	#	F 500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 500
	#nota
	addi $a0, $zero, 65
	syscall
	
	addi $t0, $zero, 750
	jal sleep
	
	#	B 2500
	#MIDI out
	li $v0, 31
	#tempo da nota
	addi $a1, $zero, 2500
	#nota
	addi $a0, $zero, 60
	syscall
	
	addi $t0, $zero, 3000
	jal sleep
	
	
	
	li $v0, 55
	la $a0, str
	li $a1, 1
	syscall
	j fim


sleep:
	#sleep
	li $v0, 32
	#tempo do sleep
	subi $a0, $t0, 250
	syscall
	#####
	jr $ra
	
fim:

.data
str: 	.asciiz "Fim do programa"