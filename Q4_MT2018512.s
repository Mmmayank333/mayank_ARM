     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
	
	   MOV R0,#0x9  
	   MOV R1,#0x3 
 
       CMP R0, #8
       ITTEE LT
       ITE LT
	   SUBLT R0 ,R0, R1; 	   
	   MOVGE R0, R1;  
	   MOVGE R1, R0 ; 
	   SUBGE R1 ,R1, R0; 
stop    B stop ; stop program
     ENDFUNC
     END 
		 
; Nested If then else block will not work 
; Error encountered: A1603E: This instruction inside IT block has UNPREDICTABLE results 
; Even if we use ITTEE, we can write 2 then and else statements at max but ITE block must have 3 lines of code. So this is not possible.