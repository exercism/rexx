/* strain - Additional Test Functions */

/*
  These are meant to mimic lambda functions that are passed as arguments
   to a higher order function. In the present case, the 'Keep' and 'Discard'
   solution procedures perform this role.
*/
LessThan10 : ; return ARG(1) < 10
IsOdd : ; return ARG(1) // 2 > 0
IsEven : ; return ARG(1) // 2 == 0
StartsWithZ : ; return SUBSTR(ARG(1), 1, 1) == 'z'
