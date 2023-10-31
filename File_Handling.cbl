IDENTIFICATION DIVISION.
PROGRAM-ID. StudentInfoProgram.
DATA DIVISION.
FILE SECTION.
FD StudentFile.
01 StudentRecord.
   05 StudentName     PIC X(50).
   05 StudentNumber   PIC X(10).

WORKING-STORAGE SECTION.
01 FileName          PIC X(50).
01 Choice            PIC X.
01 EndOfFile         PIC X VALUE 'N'.

PROCEDURE DIVISION.
    DISPLAY "Enter the filename for the text file: ".
    ACCEPT FileName.

    OPEN OUTPUT StudentFile
        FILE NAME IS FileName.

    PERFORM UNTIL EndOfFile = 'Y'
        DISPLAY "1. Add Student Info".
        DISPLAY "2. View List".
        DISPLAY "3. Exit".
        DISPLAY "Enter your choice: ".
        ACCEPT Choice.

        EVALUATE Choice
            WHEN '1'
                PERFORM AddStudentInfo
            WHEN '2'
                PERFORM ViewList
            WHEN '3'
                MOVE 'Y' TO EndOfFile
            WHEN OTHER
                DISPLAY "Invalid choice. Please try again."
        END-EVALUATE.
    END-PERFORM.

    CLOSE StudentFile.
    STOP RUN.

AddStudentInfo.
    DISPLAY "Enter student name: ".
    ACCEPT StudentName.
    DISPLAY "Enter student number: ".
    ACCEPT StudentNumber.

    WRITE StudentRecord FROM StudentName AFTER ADVANCING 1
    WRITE StudentRecord FROM StudentNumber AFTER ADVANCING 1.
    DISPLAY "Student information added successfully.".

ViewList.
    DISPLAY "Student List:".
    DISPLAY "--------------------------------------".
    OPEN INPUT StudentFile.
    PERFORM UNTIL EndOfFile = 'Y'
        READ StudentFile
            AT END
                MOVE 'Y' TO EndOfFile
            NOT AT END
                DISPLAY "Name: " StudentName " Number: " StudentNumber
        END-READ.
    END-PERFORM.

    CLOSE StudentFile.
