// TU NOMBRE COMPLETO = Daniel Santiago POSADA ARANA
// TU ID = 000420675
// TU CORREO ELECTRÓNICO = daniel.posadaa@upb.edu.co

(Comienzo)
            @16400
            D=A
            @pscreen
            M=D
            @256
            D=A
            @cont
            M=D
            @32
            D=A
            @cont2
            M=D
            @4096
            D=A
            @START
            M=D
            @KBD
            D=M
            @84
            D=D-A
            @Vertical
            D;JEQ
            @KBD
            D=M
            @67
            D=D-A
            @SETCL
            D;JEQ
            @Comienzo
            0;JMP
(Vertical)
            @cont
            D=M
            @Horizontal 
            D;JEQ
            @256
            D=A
            @pscreen
            A=M
            M=D
            @cont
            M=M-1
            @32
            D=A
            @pscreen
            M=M+D
            @Vertical 
            0;JMP
(Horizontal)
            @START
            D=M
            @SCREEN
            A=A+D
            M=-1
            @START
            M=M+1
            @cont2
            M=M-1
            D=M
            @Final
            D;JEQ
            @Horizontal
            0;JMP
(SETCL)
            @16384
            D=A
            @coord
            M=D
            @8192
            D=A
            @cont
            M=D
            @1
            D=A
            @salto
            M=D
            @color
            M=0
            @RECT
            0;JMP
(RECT)
            @coord
            D=M
            @pscreen
            M=D
(Dibujar)
            @cont
            D=M
            @Final
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
            @Dibujar
            0;JMP
(Final)
            @Comienzo
            0;JMP
