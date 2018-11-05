CIS 301: Spring 2018  
Homework Assignment #4: Propositional Proofs with negation  
Due Date: March 9, 11:59pm  
30 points with 2 points of possible extra credit

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

If you can't build something directly, use ```pbc```

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
   - be a Logika Propositional Proof
   - contain the correct logical sequent
4. Partial credit may be received if the proof is not finished.
5. Correctly proven claims that do not progress the proof will not impact your grade
6. Each provable sequent can be proven in at most 25 steps.
7. Point values are proportional to difficulty.

Problems
==
1. (5 points) Stan and Lacy were working on a real-time system and trying to debug the part of the system dealing with the scheduling of real-time tasks.
   They noted that the following system requirements from the requirements team were relevant for their work.
   
   Requirements:
   
   (1) If the System is in Maintenance mode, than the Operational Tasking queue is empty
   (2) If the Operational Tasking queue is empty, then the MAIN task is in IDLE mode
   
   They were considering a situation where the MAIN task was executing (not IDLE).  Based
   on a simple argument, they were able to conclude that (given the system requirements),
   if an Operational Task is not IDLE (i.e., if it is executing), then the system can’t be in maintenance mode.
   
   Use your knowledge of propositional logic to show that their argument is correct.
   Specifically, given
   
   p = System is in Maintenance mode
   q = Operational Tasking queue is empty
   r = MAIN task is in IDLE mode
   
   We would have the following formalization of the requirements
   
   (1) p -> q
   (2) q -> r
   
   And the situation being considered corresponds to ~r.
   The sequent that formalizes their argument is:
   
   p → q, q → r, ¬r ⊢ ¬p
   
   Give a proposition logic proof for this sequent.
   Hint: this will use the ¬e and ¬i rules.
   
   Extra Hint:  Stan and Lucy’s argument about the requirements went something like this:
   
   Lucy:
   
   It’s a given that
   
     If the System is in Maintenance mode, than the Operational Tasking queue is empty
     If the Operational Tasking queue is empty, then the MAIN task is in IDLE mode
   
   …because we know that from the system requirements.
   
   Stan:
   
   Yeah, and we are also going to take as given that the MAIN task is NOT in IDLE mode.
   
   So, for the sake of argument let’s assume that the system is in maintenance mode — is
   that going to cause any problems for us?
   
   It would certainly mean that the Operational Tasking queue is empty due to Requirement (1)
   
   Lucy:
   
   And then it would follow that the MAIN task is in IDLE mode, based on Requirement (2).
   
   Stan:
   
   But hang on, I said that we going to work under the assumption that the
   MAIN task is NOT in idle.  So what you just said is inconsistent with my assumption.
   
   Lucy:
   
   Well, OK, that must mean that what you assumed about the system maintenance mode can’t hold.
   That is, there is no way that given the requirements and our assumption about the MAIN task,
   that the system is in maintenance mode.
   
2. (5 points) As it got later in the night, Stan and Lacy got some coffee and continued their discussion,
   Lacy found it easier to think about requirement (1) as follows:
   - If the system is not in maintenance mode, then we really don’t care about the queue.
     Just the fact that the system is not in maintenance mode will make the requirement true.
   - However, if the the system is in maintenance mode (i.e., if it is not the case that it is not
     in maintenance mode), then we need to have the queue to be empty.
   
   Again, using the our proposition mapping above, we would have
   
    p = System is in Maintenance mode
    q = Operational Tasking queue is empty
   
   and Lacy’s idea would be formalized as
   
    ¬p v q
   
   Help Stan and Lacy confirm that Lacy’s alternative statement of the requirement is appropriate by
   giving a proof demonstrating that the following sequent holds
   
    ¬p ∨ q ⊢ p → q
   
   i.e., the original requirement is entailed by (follows from) Lacy concept.
   (Note that if we wanted to show that the two versions of the requirement were equivalent,
   we would would need to show     p → q ⊢ ¬p ∨ q,
   but that is not part of this question).

3. (5 points) Now Stan and Lacy were trying to come up with some test scenarios for their system
   
   They want to explore what the system should do if it was not
   the case that…
     …The system is in maintenance mode OR
     … The Operational Tasking queue is empty OR
     … The MAIN task is in IDLE mode
   
   Fred, who is always trying to simplify things stuck his head and the door and said,
   “Well, that scenario would be more directly captured as
   
     - It is not the case that the system is in maintenance mode and
     - it is not the case that the operational tasking queue is empty and
     - it is not the case that the MAIN task is in IDLE mode
         (which could also be stated as “an operational task is executing”)"
   
   Show that Fred is on to something by proving the following sequent
   
    ¬(p ∨ q ∨ r) ⊢ ¬p ∧ ¬q ∧ ¬r
   
   (Note that we should also prove the reverse direction, but you don’t have to consider
   that for this assignment).

4. (5 points) Fred had a report due the following morning, but he was sick of working on it, so he decided to sit
   in with Stan and Lacy for a while.
   
   Stan, Lacy, and Fred started talking about another test scenario…
   
   It was not the case
    - The system is in maintenance mode AND
    - The Operational Tasking queue is empty AND
    - The MAIN task is in IDLE mode
   
   They decided that if that scenario held, it would be the case that…
   
    - The system is NOT in maintenance mode OR
    - The Operational Tasking queue is NOT empty OR
    - It is not the case that the MAIN tasks is in IDLE mode
   
   Show that they are correct by proving the following sequent...
   
     ¬(p ∧ q ∧ r) ⊢ ¬p ∨ ¬q ∨ ¬r

5. (6 points) Ritesh was getting a Red Bull from the frig in company meeting room and overheard the conversation.
   Ritesh had found an old logic puzzle book at a library book sale, and he said “Since you guys
   are so into logic, you should try to prove that the following sequents.  These are formulas
   that are tautologies: you don’t have any premises, the formulas should always hold true.”
   
     ⊢ (p ∨ ¬p) ∧ ¬(p ∧ ¬p)
   
   Something to think about: can you think of a short intuitive explanation for why this formula is a tautology based on the semantics of “->”?


6. (6 points) Ritesh’s second brain teaser was…
   
     ⊢ (p → q) ∨ (q → r)
   
   Something to think about: can you think of a short intuitive explanation for why this formula is a tautology based on the semantics of “->"?
   


What to submit
==
Commit and push your project containing the solutions to your github repository (see videos) before the deadline.  A good practice is to commit/push whenever meaningful progress is made (like you finish a question or fix a bug). 
