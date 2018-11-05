;7a. Prove the equivalence of the two formulas:

(declare-const P Bool)
(declare-const Q Bool)
(declare-const R Bool)
(assert (not (= (implies P (not (or Q R))) (implies P (and (not Q) (not R))))))
(check-sat)

;7b. Explain why the output of your file:

; The two equations:
;     (P -> ~(Q V R)) <-> (P -> (~Q ^ ~R))
;
; We can show equivalence because of the 'bi-implication' (<-> or =).
; For a bi-implication to evaluate to true, both sides of the bi-implication
; must evaluate to true, or be valid. If both sides are valid, this tells us
; that the formula is satisfiable. We may then check for to see if the whole
; formula is a tautology by negating the entire formula and ensuring it is
; unsatisfiable. If the negation of the whole formula is unsatisfiable, that
; means that the formula is a tautology, which tells us that the two equations
; are equivalent because the bi-implication is never evaluated to be invalid.
; There are no truth-assignments which can make the two sides of the
; bi-implication false, which shows a tautology.
