	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 
__main  FUNCTION 

 MOV R0, #0x0; Storing 0 in R0
 MOV R1, #0x1; Storing 1 in R1

branch
 ADD R2, R0 ,R1; Adding value of R0 and R1 and storing it in R3
 MOV R0, R1; Moving the value of R1 in R0
 MOV R1, R2; Moving the value of R2 in R1
 B branch     ;Again returning to the inial of the loop for getting the next number of fibbonacci series

stop	B stop ; stop program
	ENDFUNC
	END 
