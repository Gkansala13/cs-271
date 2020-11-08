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

(LOOP)
    @SCREEN 
	D=A  
	@i
	M=D 

	@KBD  
	D=M
	@BLACK
	D;JNE
	

	(WHITE)
		@i
		A=M
		M=0

		@i
		M=M+1
		@i
        
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@WHITE
		D;JLE
	
	
	(BLACK)
		@i
		A=M
		M=-1

		@i
		M=M+1
		@i
        
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@BLACK
		D;JLE