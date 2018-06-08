# Práctica 1: Torres de Hanoi
# Andrea
# Aitor Mancisidor
# 08/06/2018

.data

.text

	addi $s0, $zero, 3	# Número de discos
	addi $s4, $zero, $s0	# Copia de n
	
	addi $s1, $zero, 0x10010000	# Dirección torre 1
	addi $s2, $zero, 0x10010020	# Dirección torre 2
	addi $s3, $zero, 0x10010040	# Dirección torre 3
	
LlenarTorre:
	
	beq $s4, $zero, Hanoi	# Salta a la parte recursiva cuando estpen llenas las torres
	sw $s4, 0($s1)		# Guarda el anillo en memoria
	addi $s4, $s4, -1	# n = n - 1
	addi $s1, $s1, 4	# Puntero + 4
	j LlenarTorre		# Salta de vuelta

Hanoi:


Exit: