      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTRADA-SALIDA.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  NOMBRE  PIC A(20).
       77  EDAD    PIC 9(02).

       PROCEDURE DIVISION.

            DISPLAY "Primer programa en cobol.".
            DISPLAY "Como es tu nombre?".
            ACCEPT NOMBRE.
            DISPLAY "Cual es tu edad?".
            ACCEPT EDAD.
            DISPLAY "Tu nombre es: ", NOMBRE, "y tenes ", EDAD.

            STOP RUN.

       END PROGRAM ENTRADA-SALIDA.
