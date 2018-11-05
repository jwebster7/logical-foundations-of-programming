;8.
;   Propositional Variables
;       P = "the total volume of drug infused in the current hour reaches the max
;            volume of drug per hour limit "
;       Q = "next mode = PAUSED"
;       R = "max volume per hour limit has been reached is displayed on operator
;            interface"

;   Propositional Formula
;       P -> (Q ^ R)
;
; Interaction 1
(assert (implies P (and Q R)))
(check-sat)
(get-model)
;
; P = F, Q = F, R = T
;
; Interaction 2
(assert (not (and (not P) (not Q) R)))
(check-sat)
(get-model)
;
; P = T, Q = T, R = T
; P = F, Q = T, R = T
;
; Interaction 3
(assert (not (and R Q)))
(check-sat)
(get-model)
;
; P = F, Q = T, R = F
; P = F, Q = F, R = F
;
; Further interactions will show unsatisfiability, the following produce truth:
;
; P = T, Q = T, R = T
; P = F, Q = F, R = F
; P = F, Q = F, R = T
; P = F, Q = T, R = T
; P = F, Q = T, R = F
;
; The generated truthtable is shown in the 8.logika file
