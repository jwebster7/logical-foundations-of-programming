CIS 301: Spring 2018  
Homework Assignment #5: Predicate Logic -- Universal and Existential Quantification
Due Date: April 2, 11:59pm  
30 points 

Purpose of Assignment: 
=======
To help you understand ...
1. natural deduction rules for propositional logic
2. how to apply the rules for proving validity of sequents
3. some properties of propositional logic connectives and
   how they can be proven using natural deduction

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
link to the predicate logic proofs portion of those examples:  
https://github.com/sireum/v3-logika-examples/tree/release/src/predicate

Considerations
==
1. All files must run in the Sireum IVE
2. "Proof" means "a Logika 2 column proof". And "Prove" means "provide a proof"
3. To receive any points a problem must:
   - be a Logika Propositional Proof
   - contain the correct logical sequent
4. Partial credit may be received if the proof is not finished.
5. Correctly proven claims that do not progress the proof will not impact your grade
6. Each provable sequent can be proven in at most 25 steps.
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
1. (4 points) ∀ x ∀ y p(x, y) ⊢ ∀ y ∀ x p(x, y)

2. (5 points) ∃ x ∃ y p(x, y) ⊢ ∃ y ∃ x p(x, y)

3. (4 points) ¬(p → q) ⊢ p ∧ ¬q

4. (5 points) ¬∃ x p(x) ⊢ ∀ x ¬p(x)

     If you have not read the above note on "Using PBC", you should do so now.

5. (6 points) ¬∀ x p(x) ⊢ ∃ x ¬p(x)

6. (6 points) ¬∀ x p(x) → q(x) ⊢ ∃ x p(x) ∧ ¬q(x)


What to submit
==
Commit and push your project containing the solutions to your github repository (see videos) before the deadline.  A good practice is to commit/push whenever meaningful progress is made (like you finish a question or fix a bug). 
