"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match cMathOperator display "[-+\*/%=]"
" C pointer operators
syn match cPointerOperator display "->\|\."
" C logical operators - boolean results
syn match cLogicalOperator display "[!<>]=\="
syn match cLogicalOperator display "=="
" C bit operators
syn match cBinaryOperator display "&\||\|\^\|<<\|>>=\="
syn match cBinaryOperator display "\~"
"syn match cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
syn match cLogicalOperator display "&&\|||"
"syn match cLogicalOperatorError display "&&\|||="
syn match Brackets1 display "(\|)"
syn match semicolon display "\;"

" Math Operator
hi cMathOperator          ctermfg=197
hi cPointerOperator       ctermfg=197
hi cLogicalOperator       ctermfg=197
hi cBinaryOperator        ctermfg=197
"hi cBinaryOperatorError   ctermfg=185
hi cLogicalOperator       ctermfg=197
"hi cLogicalOperatorError  ctermfg=185
hi Brackets1              ctermfg=15
hi semicolon              ctermfg=197
