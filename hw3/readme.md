CIS 301: Spring 2018  
Homework Assignment #3: Propositional Proofs  
Due Date: Monday February 26, 11:59pm  
30 points  

Purpose of Assignment: 
=======
To help you understand ...
1. natural deduction rules for propositional logic
2. how to apply the rules for proving validity of sequents
3. some properties of propositional logic connectives and
   how they can be proven using natural deduction
4. how to determine provability

We have created some automated grading tools to speed the grading of
homeworks.  To apply those tools, we need to make sure that each
student uses a consistent naming for all their solutions file.
Therefore, we have created an IntelliJ project with template files
for your solution.  DON'T CHANGE THE NAME OF ANY OF THE FILES that
we give you.  

Hints:
=

If you get stuck in a proof, take a look at the tactics
given in the lecture slides associated with the operators 
involved in the formulae.

Typically, you'll introduce from the inside-out and eliminate from the outside-in

Getting started
==
You can find examples of completed Logika propositional proofs in the
Logika example repository (included in the class examples that you
downloaded (as illustrated in the "Step #2" videos).  Here is a direct
link to the propositional proofs portion of those examples:  
https://github.com/sireum/v3-logika-examples/tree/release/src/propositional

Considerations
==
1. All files must run in the Sireum IVE
2. "Proof" means "a Logika 2 column proof". And "Prove" means "provide a proof"
3. To receive any points a problem must:
   - be a Logika Propositional Proof or Truth Table (see examples and class slides). Note: Each problem admits only one or the other
   - contain the correct logical sequent
4. Partial credit may be received if the proof is not finished.
5. Correctly proven claims that do not progress the proof will not impact your grade
6. Each provable sequent can be proven in at most 20 steps.
7. Point values are proportional to difficulty.

Problems
==
1. (3 points) From homework 1, you may notice that for every case that ```(p → q) → r```
  is true, ```p → (q → r)``` is true as well. To confirm this observation, prove ```(p → q) → r ⊢ p → (q → r)``` (Hint: https://github.com/sireum/v3-logika-examples/blob/release/src/propositional/implies/implies-4c.logika)

2. (4 points) Prove ```(p ∧ q ∧ r) ∨ s ⊢ (p ∨ s) ∧ (q ∨ s) ∧ (r ∨ s)``` (Hint: consider proof to this sequents ```(p ∧ q) ∨ r ⊢ (p ∨ r) ∧ (q ∨ r)```)

3. (4 points) Prove ```p ∨ (q ∨ r) ⊢ (p ∨ q) ∨ r```

4. (3 points) Prove ```p → s ⊢ p ∧ q → r ∨ s```

5. (4 points) Prove ```p → q ∨ r, q → s, r → t ⊢ p → (t ∨ s)```

6. The sequent ```<premise1>, <premise2>, ... <premiseN> ⊢ <consequent>``` is provable if and only if the formula
   ```<premise1> ∧ <premise2> ∧ ... <premiseN> → <consequent>``` is a tautology. This is equivalent to saying that a sequent is not provable if and only if there is some truth assignment for the variables where the formula evaulates to false. For each of the following sequents, either prove it or show that it is not possible with a truth table of the corresponding formula.  
   
   Advice: 
   * You could practice Z3 by writing a program to determine if the sequent is provable. Feel free to submit a Z3 files but the autograder will ignore it.
   * If you make a truth table that is a tautology, you've just shown the sequent is provable. You'll need to make such a proof instead.
   * If you make a truth table that is a contingent, notice the cases you enumerated when the formula is not true. These cases are counter examples to the claim that the sequent is provable. For these cases, the conclusion can not be derived from the premises.
   * If you make a truth table that is a contradiction, you've shown that in no case can the conclusion be derived from the premises.
   
   * Each completable proof takes at most 10 steps.

    a. (3 points) ```p ∧ q ⊢ p → q```

    b. (3 points) ```p → q ⊢ p ∧ q```

    c. (3 points) ```p ∧ q → r ⊢ p → q → r```
    
    d. (3 points) ```p → q → r ⊢ p ∧ q → r```

What to submit
==
Commit and push your project containing the solutions to your github repository (see videos) before the deadline.  A good practice is to commit/push whenever meaningful progress is made (like you finish a question or fix a bug). 
