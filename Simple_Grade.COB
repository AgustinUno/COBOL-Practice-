IDENTIFICATION DIVISION.
PROGRAM-ID. GradeCalculator.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SOURCE-COMPUTER. IBM-PC.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 SCORE PIC 999.
01 GRADE PIC X.

PROCEDURE DIVISION.
    DISPLAY "Enter your score: " WITH NO ADVANCING.
    ACCEPT SCORE.

    IF SCORE >= 90
        MOVE "A" TO GRADE
    ELSE IF SCORE >= 80
        MOVE "B" TO GRADE
    ELSE IF SCORE >= 70
        MOVE "C" TO GRADE
    ELSE IF SCORE >= 60
        MOVE "D" TO GRADE
    ELSE
        MOVE "F" TO GRADE.

    DISPLAY "Your grade is: " GRADE.
    STOP RUN.
