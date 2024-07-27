/* list-ops - Additional Test Functions */

/*
  These are meant to mimic lambda functions that are passed as arguments
   to a higher order function.
*/
IsEven : ; return ARG(1) // 2 == 0            /* Predicate (Filter) */
Add1 : ; return ARG(1) + 1                    /* Transformer (Map)  */

/* Reducers (FoldL and FoldR) */
Multiply : ; return ARG(1) * ARG(2)           /* Direction independant */
IntegerDivide : ; return ARG(2) % ARG(1)      /* Direction dependant */
Concatenate : ; return ARG(2) ARG(1)          /* Ditto */
