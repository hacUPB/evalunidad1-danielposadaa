// Daniel Santiago Posada Arana
// 000420675	
// daniel.posadaa@upb.edu.co

(INIT)
        @KBD
        D=M
        @84
        D=D-A
        @DLINE
        D;JEQ

        @KBD
        D=M
        @67
        D=D-A 
        @EMTY
        D;JEQ

        @INIT
        0;JMP

(EMTY)
        @16384 
    D=A
    @coordx 
    M=D 
    @8192
    D=A
    @contx
    M=D
    @1
    D=A 
    @saltox
    M=D
    @colorx
    M=0
    @DRAWR
    0;JMP

(DLINE)
        @16400 //16384 (pantalla completa) + fila * 32 + columna/16
        D=A
    @coord 
    M=D 
    @256 //Las filas que se pintaran
    D=A
    @cont
    M=D
    @32
    D=A 
    @salto
    M=D
        @256
        D=A
    @color
    M=D

    @DRAW
    0;JMP

(CLINE)

    @20480
    D=A
    @coordx
    M=D
    @32
    D=A
    @contx
    M=D
    @1
    D=A
    @saltox
    M=D
    @colorx
    M=-1

        @DRAWR
    0;JMP

(DRAW)
        @coord
        D=M
        @pscreen
        M=D

(DRAWL)
        @cont
        D=M
        @CLINE
        D;JEQ

        @color
        D=M
        @pscreen
        A=M
        M=D

        @cont
        M=M-1

        @salto
        D=M

        @pscreen
        M=M+D

        @DRAWL
        0;JMP

(DRAWR)
        @coordx
        D=M
        @pscreen
        M=D

(DRAWN)
        @contx
        D=M
        @END
        D;JEQ

        @colorx
        D=M
        @pscreen
        A=M
        M=D

        @contx
        M=M-1

        @saltox
        D=M

        @pscreen
        M=M+D

        @DRAWN
        0;JMP


(END)
        @INIT
        0;JMP

