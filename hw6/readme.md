CIS 301: Spring 2018  
Homework Assignment #6: Programming Logic -- Assignment and Loops
Due Date: April 18, 11:59pm  
30 points 

Purpose of Assignment: 
=======
To help you understand ...
1. how apply logic rules for programming 
2. how to prove the logical correctness of a program
3. how truth is updated and preserved through assignment
   and conditional executions
   
We have created some automated grading tools to speed the grading of the
homeworks.  To apply those tools, we need to make sure that each
student uses a consistent naming for all their solutions file.
Therefore, we have created an IntelliJ project with template files
for your solution.  DON'T CHANGE THE NAME OF ANY OF THE FILES that
we give you.  

Hints:
=

Getting started
==
You can find examples of completed Logika programming proofs in the
Logika example repository (included in the class examples that you
downloaded (as illustrated in the "Step #2" videos).  Here is a direct
link to the predicate logic proofs portion of those examples:  
https://github.com/sireum/v3-logika-examples/tree/release/src/programming/manual

Considerations
==
1. All files must run in the Sireum IVE
2. You must provide adequate l"""{ *logika stuff* }""" blocks to satisfy all 
   assertions in each .logika file
3. YOU MAY NOT ADD "assume(...)" statements in the programs you submit  
     If you use the for troubleshooting you must delete them  
     You may use assumptions in your l"""{ *logika stuff* }""" blocks
4. To receive any points a problem must:
   - be a correct Logika Programs (logika verified in manual (not auto/simex) mode)
   - contain the correct (original) source code
4. Partial credit may be received if the proof is not finished.
5. Correctly proven claims that do not progress the proof will not impact your grade
7. Point values are proportional to difficulty.

Using PBC
==
Proof by contradiction, like any other rule, can be used to justify claims. Subproofs can be confusing or require additional work. Therefore, PBC should be avoided if possible. When trying to prove a claim, there is a simple test on whether PBC should be used to prove the claim. Only in these cases should PBC be used:
1.  The claim is just an atom i.e. p(x), or q
2.  The top level of the claim is or i.e. (p->q) V r
3.  The top level of the claim is the existential quantifier i.e. ∃ x p(x)

However sometimes, these can be justified without PBC. Sometimes these *can* be done directly. In any other case, there is a direct approach to build the claim using the previously justified claims.



Problems
==
1. (6 Points)  
a. *Our hero Harry, has won the Triwizard tournament and needs his winnings in Knuts. He knows a goblin who will trade Galleons for Sickles and another who will trade Sickles for Knuts.   Harry intends to invest these Knuts in the Weasley twin’s business, Weasley’s Wizard Wheezes.*  
b. Add the logical steps to program 1.logika to prove that converting 1000 Galleons to Knuts by first converting to Sickles then Knuts provides the same number as a direct conversion (493 Knuts per Galleon).  
c. The final assertion ensures that the value of the 2-stage conversion is the value of the direct conversion.  

2. (6 Points)  
a. *Weasley’s Wizard Wheezes does not provide Knuts as change.  They round to the “nearest” Sickle.  To ensure they don’t lose money, they want 15 Knuts to round down.*   
b. Add the logical steps to program 2.logika to show that when less than 16 Knuts should be returned, the number of Sickles is rounded down and when 16-or-more Knuts should be returned the number of Sickles is rounded up.  
c. The three middle assertions check this behavior.     
d. The three bottom assertions check to make sure the Knuts are converted properly to Sickles.  

3. (4 points)  
a. *The Weasleys twins are worried they may lose money, and want stronger proof that the “nearest” is always in the favor of the business.*  
b. Copy your entire working solution from 2.logika into 3.logika.  Uncomment the last assertion at the bottom.  Expand the existing logika proofs to satisfy the new assertion.   
c. The final assertion checks that the total error (the difference in the amount given back as Sickles versus the value which should be returned in Knuts) is always 15-or-less; but when it is 15, the change rounds down (in favor of the business).   

4. (8 points)  
a. *To more efficiently accomplish her Arithmancy charts, Hermione needs to quickly approximate square roots.  We have provided her with a program which calculates the ceiling of the square root for numbers above 1.  The ceiling is the smallest natural number AT LEAST as large the value you want (we over-estimate the square root when the number is not a perfect square).*  
b. Add the logical steps to program 4.logika to show that the assertions at the end of the program hold.  
c. The Loop invariant is that we have not yet guessed the correct number.  
d. The first assertion shows that the guess squared is at least as big as the number you started with.  
e. The second demonstrates that the guess cannot be any smaller.  

5.  (8 points )  
a. *The Weaslesy twins have finally paid Harry back for his investment in Weasley’s Wizard Wheezes. Tragically, they have paid him back in the Knuts they did not give out as change.  We have provided Harry a program to convert the Knuts into Galleons so he can figure out if he made money through his investment.*  
b. Add the logical steps to program 5.logika to show that the assertions at the end of the program hold.  
c. The first assertion and the Loop invariant show that the total value has not changed (we did not create or destroy money, we just converted).  
d. The last two assertions ensure that no more Sickles can be converted into Galleons and no more Knuts can be converted into Sickles.



What to submit
==
Commit and push your project containing the solutions to your github repository (see videos) before the deadline.  A good practice is to commit/push whenever meaningful progress is made (like you finish a question or fix a bug). 
