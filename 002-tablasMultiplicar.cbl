      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLAS-MULTIPLICAR.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUMERO          PIC 9(02).
       01  MULTIPLICADOR   PIC 9(03).
       01  RESULTADO       PIC 9(04).
       01  OPC-MENU        PIC 9(01).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "****** Tabla de multiplicacion ******".
           DISPLAY "1. Realizar consulta. ".
           DISPLAY "2. Salir del programa ".
           ACCEPT OPC-MENU.

           IF OPC-MENU = 1
              PERFORM REINICIA-PROGRAMA
              PERFORM INTRODUCE-NUMERO
              PERFORM MOSTRAR-TABLA
           ELSE IF OPC-MENU = 2
              GO TO FINALIZAR
           ELSE
              DISPLAY "Opcion incorrecta."
              DISPLAY " "
              PERFORM INICIO
           END-IF.

       FINALIZAR.
           STOP RUN.

       REINICIA-PROGRAMA.
            MOVE 0 TO MULTIPLICADOR.

       INTRODUCE-NUMERO.
            DISPLAY "Introducir un numero: " WITH NO ADVANCING.
            ACCEPT NUMERO.

       MOSTRAR-TABLA.
            DISPLAY "La tabla del " NUMERO " es:".
            PERFORM CALCULOS.

       CALCULOS.
            ADD 1 TO MULTIPLICADOR.
            COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
            DISPLAY NUMERO " * " MULTIPLICADOR " = " RESULTADO.

            IF MULTIPLICADOR < 10
               GO TO CALCULOS
            ELSE
               DISPLAY "------------------------------"
               DISPLAY " "
               PERFORM INICIO
            END-IF.

       END PROGRAM TABLAS-MULTIPLICAR.
