	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY
__main  FUNCTION

		MOV R0, #6;		Storing 6 in R0  
		MOV R1, #15;	Storing 15 in R1

branch2	CMP R0, R1 ; Comparing R0 and R1
		BNE branch ; Branch if R0 is not equal to R1
stop    B stop ; stop program

branch 	BGT branch3 ; If R0>R1, control is given to branch3

		SUB R1, R1, R0 ; This statement will be executed if R1>R0
		B DONE
branch3	SUB R0, R0, R1 ; This statement will be executed if R0>R1


DONE	CMP R0, R1
		BNE branch2
 
	ENDFUNC
	END
