CIS 301: Spring 2018  
Homework Assignment #1: Circuits and Truth Tables  
Due Date: January 26,  11:59pm  
30 points  

Purpose of Assignment: 
=======
To help you...
1. learn the syntax of propositional logic formulas
2. determine the meaning (determine the truth value) of a
    propositional logic formula using truth tables
3. understand the correspondence between 
     - proposition logic formulas and circuits, and 
     - tracing the execution of a circuit and building a truth table
4. become acquainted with the Logika tool

We have created some automated grading tools to speed the grading of
homeworks.  To apply those tools, we need to make sure that each
student uses a consistent naming for all their solutions file.
Therefore, we have created an IntelliJ project with template files
for your solution.  DON'T CHANGE THE NAME OF ANY OF THE FILES that
we give you.  

Getting started
==
You can find examples of completed Logika truth tables in the
Logika example repository (included in the class examples that you
downloaded (as illustrated in the "Step #2" videos).  Here is a direct
link to the truth table portion of those examples:  
https://github.com/sireum/v3-logika-examples/tree/release/src/truthtable

Considerations
==
1. All files must run in the Sireum IVE
2. To receive any points a problem must:
   - be a Logika Truth Table (see examples and class slides) 
   - contain the proper logic proposition
   - identify the correct logical connective with an *
   - i.e. you must answer the correct question  
3. Partial credit may be received if
   - Some truth assignments are incorrect
   - There are errors in the Tautology/Contradictory/Contingent section  
4. Do not change the variable name
5. List all variables alphabetically ( "p q r" not "r p q" )

Problems
==
1. (4 points) Write the truth table for the proposition below:  
      ¬p → q V r

2. (3 points) To see the impact of precedence, write the truth table for:   
    ¬(p → q) V r

3. (4 points) Write the truth table for:   
    (p → q) ∧ (q → r)
    
4. (5 points)  Write a truth table for the following circuit:  
![Image](Picture1.png)

5. (11 points) Consider the two propositions below.  Are they equivalent?  
Justify your answer with appropriate truth tables and a short supporting  
comment.  Comments in Logika, like C, begin with //.  
   (p → q)→ r  
   p → (q → r)
  
6.  (3 points)  Using two variables p and q, write a logical proposition and  
truth table for a Tuatology.

What to submit
==
Commit and push your project containing the solutions to your github  
repository (see videos) before the deadline.  A good practice is to commit/push  
whenever meaningful progress is made (like you finish a question   
or fix a bug). 