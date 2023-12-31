IDENTIFICATION DIVISION.
PROGRAM-ID. OrderingSystem.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SOURCE-COMPUTER. IBM-PC.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ITEM-CODE PIC X(10).
01 QUANTITY PIC 999.
01 PRICE PIC 999V99.
01 TOTAL-COST PIC 999V99.

PROCEDURE DIVISION.
    DISPLAY "Enter item code: " WITH NO ADVANCING.
    ACCEPT ITEM-CODE.

    DISPLAY "Enter quantity: " WITH NO ADVANCING.
    ACCEPT QUANTITY.

    DISPLAY "Enter price: " WITH NO ADVANCING.
    ACCEPT PRICE.

    COMPUTE TOTAL-COST = QUANTITY * PRICE.

    DISPLAY "Order Summary:".
    DISPLAY "Item Code: " ITEM-CODE.
    DISPLAY "Quantity: " QUANTITY.
    DISPLAY "Price per item: $" PRICE.
    DISPLAY "Total Cost: $" TOTAL-COST.

    STOP RUN.
