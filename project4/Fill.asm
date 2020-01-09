// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


//First check whether to add or remove, >0 or ==0
//go to one of two loops, one blackens the other whitens
//'blacken' loop: while loop, address increments, until n at 24576 is reached
//'whiten' loop: while loop, address decrements until begin at 16384 is reached
//then goes to checker to check if input is >0 or ==0 and repeat



 @16384
 D=A
 @address
 M=D

 @24576
 D=M

 @BLACKEN
 D;JGT

 @WHITEN
 D;JEQ


(BLACKEN)
 
 @address
 A=M
 M=-1

 @24575
 D=A

 @address
 D=M-D

 @INFINITE_LOOP
 D;JEQ
 
 @address
 M=M+1

 @BLACKEN
 0;JMP


(WHITEN)
 @address
 A=M
 M=0

 @16384
 D=A

 @address
 D=M-D

 @INFINITE_LOOP
 D;JEQ
 
 @address
 M=M-1

 @WHITEN
 0;JMP

(INFINITE_LOOP)
 @24576
 D=M

 @BLACKEN
 D;JGT

 @WHITEN
 D;JEQ

