(current-buffer)

(1+ 536870911)

(print +1500000e-3 (current-buffer))
1500.0

?Q
?\s
(= ?\N{LATIN SMALL LETTER A WITH GRAVE} ?à)
(= ?\xe0 ?\U000000E0)
(= ?\^I ?\C-i)
(= ?\M-\C-b ?\C-\M-b)
(not (= ?A ?\S-a))
(print ?A)

(print '(A 2 "A"))
'(rose "violet" "buttercup")
'(rose. violet)

(print #("foo bar" 0 3 (face bold) 3 4 nil 4 7 (face italic)) (current-buffer))
"abc\xe0?\t"

[1 "two" (three)]
(make-bool-vector 3 t)
(equal #&3"\377" #&3"\007")

(make-hash-table)

(symbol-function 'car)
(subrp (symbol-function 'car))

(type-of [1])
