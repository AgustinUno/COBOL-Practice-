       IDENTIFICATION DIVISION.
       PROGRAM-ID. READER.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT Reader 
           ASSIGN TO "/home/lloyd/Documents/GitHub/COBOL-Practice-/data.txt".

       DATA DIVISION.
       FILE SECTION.
       FD Reader.
       01 InputRecord.
           05 InputString PIC X(30).
       
       WORKING-STORAGE SECTION.
       01 WS-EOF-SWITCH PIC X(1) VALUE 'N'.
       
       PROCEDURE DIVISION.
           OPEN INPUT Reader
           PERFORM UNTIL WS-EOF-SWITCH = 'Y'
               READ Reader
               AT END
                    MOVE 'Y' TO WS-EOF-SWITCH
               NOT AT END
                    DISPLAY InputString
       END-READ
       END-PERFORM
       CLOSE Reader
           STOP RUN.
       