     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION 

 MOV R0, #0x333;	Storing any number in R0
 AND R0, R0, #0x1;		Bitwise AND of R0 with all bits 0 exept last(i.e. 1)
;If the last bit of R0 after AND is 0 then the number is even else the number is odd 

stop	B stop ; stop program
	ENDFUNC
	END