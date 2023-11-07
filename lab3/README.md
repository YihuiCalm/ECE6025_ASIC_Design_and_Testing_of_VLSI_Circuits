# Lab 3: Testbench design
## Description
Design a self-checking testbench for synthesized full adder.
## Tools:
* Cadence XCelium
## Result:
* Successful situation:  

    ```
    ================TESTBENCH==============
    PASS: a=0 b=0 ci=1 s=1 co=0    @ 3000
    PASS: a=0 b=1 ci=0 s=1 co=0    @ 5000
    PASS: a=0 b=1 ci=1 s=0 co=1    @ 7000
    PASS: a=1 b=0 ci=0 s=1 co=0    @ 9000
    PASS: a=1 b=0 ci=1 s=0 co=1    @11000
    PASS: a=1 b=1 ci=0 s=0 co=1    @13000
    PASS: a=1 b=1 ci=1 s=1 co=1    @15000
    PASS: a=0 b=0 ci=0 s=0 co=0    @17000
    =================FINISH================
    ```
* Failed situation:
    ```
    ================TESTBENCH==============
    *FAIL: a=0 b=0 ci=1 s=1 co=0   @ 3000
    PASS: a=0 b=1 ci=0 s=1 co=0    @ 5000
    *FAIL: a=0 b=1 ci=1 s=0 co=1   @ 7000
    PASS: a=1 b=0 ci=0 s=1 co=0    @ 9000
    *FAIL: a=1 b=0 ci=1 s=0 co=1   @11000
    PASS: a=1 b=1 ci=0 s=0 co=1    @13000
    *FAIL: a=1 b=1 ci=1 s=1 co=1   @15000
    PASS: a=0 b=0 ci=0 s=0 co=0    @17000
    =================FINISH================
    ```