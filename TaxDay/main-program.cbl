       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
           REPOSITORY.
               FUNCTION IS-LEAP-YEAR.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-TODAY PIC X(5).
           01 WS-TODAY-DAY PIC 99.
           01 WS-TODAY-MONTH PIC 99.
           01 WS-TODAY-YEAR PIC 9999.
          
       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE(5:2) TO WS-TODAY-MONTH.
           MOVE FUNCTION CURRENT-DATE(7:2) TO WS-TODAY-DAY
           MOVE FUNCTION CURRENT-DATE(1:4) TO WS-TODAY-YEAR.
           STRING WS-TODAY-MONTH "-" WS-TODAY-DAY 
           INTO WS-TODAY
           END-STRING.
   
           CALL "customer-filterer" USING "03-01", "2022".
           
           