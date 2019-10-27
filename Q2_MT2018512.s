	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY
__main  FUNCTION  
	 
  MOV R1, #0x5; Storing a number(5) in R1
  MOV R2, #0x9; Storing a number(9) in R2
  MOV R3, #0x3; Storing a number(3) in R3

  cmp R1, R2   ;Comparing R1 and R2
  ble branch1  ;If R1<=R2, control will be sent to branch1 
  cmp R1, R3	;Comparing R1 and R3
  ble branch2	;If R1<=R3, control will be sent to branch2
  MOV R0, #0x1;    If this statement gets executed then this means that largest value is of R1 and 1 will be stored in R0
  b stop
 
branch1  cmp R2,R3		;Comparing R2 and R3
  ble branch3			;If R2<=R3, control will be sent to branch3
  MOV R0, #0x2;		If this statement gets executed then this means that largest value is of R2 and 2 will be stored in R0
  b stop

branch2  MOV R0, #0x3;		If this statement gets executed then this means that largest value is of R3 and 3 will be stored in R0
  b stop
branch3  MOV R0, #0x3;  	If this statement gets executed then this means that largest value is of R3 and 3 will be stored in R0
  b stop

stop    B stop ; stop program
     ENDFUNC
     END