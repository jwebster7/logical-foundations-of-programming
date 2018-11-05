CIS 301: Spring 2018  
Homework Assignment #7: More Programming Logic
Due Date: May 2, 11:59pm  
30 points 

Purpose of Assignment: 
=======
To help you understand ...
1. Use/Creation of function contracts
2. Use/Creation of invariants
3. Use/Implementation of the client/server model for contract use
4. Programming logic with sequences

We have created some automated grading tools to speed the grading of
homeworks.  To apply those tools, we need to make sure that each
student uses a consistent naming for all their solutions file.
Therefore, we have created an IntelliJ project with template files
for your solution.  DON'T CHANGE THE NAME OF ANY OF THE FILES that
we give you.  

SETUP
=

In this homework, you will run logika in SimExe mode.  As a reminder,
you set this in Settings/Sireum/Logika.  One accesses the Settings 
through either the File or the Intelij menu.

Getting started
==
You can find examples of completed Logika programming proofs in the
Logika example repository (included in the class examples that you
downloaded (as illustrated in the "Step #2" videos).  Here is a direct
link to the predicate logic proofs portion of those examples:  
https://github.com/sireum/v3-logika-examples/tree/release/src/predicate

Considerations
==
1. All files must run in the Sireum IVE
2. This SimExe mode, you may get get a program to Logika Check and still be
   incomplete. Carefully read all requirements for each problem
4. Partial credit may be received part of the requirements are met
5. Correct claims that do not add to solving the problems will not hurt you
6. In general pre/post/invariants  will be less than a dozen lines long
   Figuring them out can be time consuming.


Problems
==
1. (6 points) The purpose of this program is to simulate a key-value pair dictionary implemented with parallel arrays.  First read entire program to understand the calculation.  Second create the post condition for findKey, which ensure that if the key is in the sequent, its index is returned, if not -1 is returned.  Next, write the pre and post condition for fetch value.  Finally, fix the if condition in the client code so the final assertion is true.

2. (8 points) Consider an application in which we have a vending machine that
     holds one flavor of Gatorade only (Glacier Freeze).  The contents of
     the vending machine are replenished by a service man who takes
     Gatorade from a warehouse and puts it in the vending machine.

     The application has two global variables :
       (1) machine_count holds the number of Gatorades currently in the
           vending machine, and
       (2) warehouse_count holds the number of Gatorades in the warehouse.

     A company hired a programmer named Gerald Slackster to write the
     code for the application.  Unfortunately, Gerald never learned about
     program logic or the software contract paradigm.  Your task for
     this question is to take Gerarld's procedure declarations (which includes informal
     documentation) and add software contracts (including the different
     "conditions" plus appropriate invariants for globals) in the space provided
     in the code below.  Note that Gerald's documentation doesn't spell
     everything out in detail.  In some cases, you will need to add
     contract information and global invariants that you believe are
     appropriate -- to establish reasonable properties that you would
     want for this application.   Then complete the coding of the procedures declared
     by Gerald and prove that they satisfy the contracts that you have
     written.  Note that for this question, your contracts should be as
     precise as possible.

     Hints for this exercise:

     in the body of a producedure...
      - in the post-condition of a procedure, you can refer to the initial
        value of a global g by writing "g_in".
      - at the beginning of the body of a procedure, one is allowed to deduce
          g == g_in
        using the premise rule.
     You can use the above mechanism to define, for a particular
     procedure, a post-condition that specifies the output value of a
     global variable g in terms of its input value g_in.

     Give the program + function pre/post conditions and loop invariants necessary to
     demonstrate that your program is correct.
     
3. (10 points) In this problem you will complete both client and server functions to check if a sequence contains values larger than a certain value and create a second sequence containing only those values. Read the entire program to understand its structure.  First write loop code and invariants for someGreaterThan to meet the post-conditions. When seeing the sequent (1, 5, 7, 12) and 8, someGreaterthan should return true, 12 is greater than 8 .. (1, 5, 12, 7) and 12 should return false.   Next write the function post conditions and loop invariant for reduces. Seeing (1, 5, 7, 12) and 6 it returns (7,12).  Finally, in main(), change the variable assignment to bigenough, and the parameters passed to reduce to ensure the program has no errors (does not crash if reduce returns an empty array).  No additional if conditions or assumes may be added to the client.


4. (6 points) In the final problem the function takes a sequence (1,2,3,4,5) and returns a palindrome of it starting from the front (1,2,3,2,1). Your task is to provide Loop invariants which ensure the post conditions are met. Add a post condition proving the size the returned array is the same size as the array passed in.


What to submit
==
Commit and push your project containing the solutions to your github repository (see videos) before the deadline.  A good practice is to commit/push whenever meaningful progress is made (like you finish a question or fix a bug). 
