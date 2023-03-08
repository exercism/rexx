Append : procedure
  nop
return ''

ListLength : procedure
  nop
return 0

Filter : procedure
  nop
return ''

Map : procedure
  nop
return ''

FoldL : procedure
  nop
return ''

FoldR : procedure
  nop
return ''

ListReverse : procedure
  nop
return ''

/* Need to implement test helpers here, not in test runner file */
IsEven : ; return ARG(1) // 2 == 0            /* Predicate (Filter) */
Add1 : ; return ARG(1) + 1                    /* Transformer (Map)  */

/* Reducers (FoldL and FoldR) */
Multiply : ; return ARG(1) * ARG(2)           /* Direction independant */
IntegerDivide : ; return ARG(2) % ARG(1)      /* Direction dependant */
Concatenate : ; return ARG(2) ARG(1)          /* Ditto */
