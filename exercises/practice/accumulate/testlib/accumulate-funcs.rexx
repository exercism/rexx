/* accumulate - Additional Test Functions */

/*
  These are meant to mimic lambda functions that are passed as arguments
   to a higher order function. In the present case, the 'Accumulate' solution
   procedure performs this role.
*/
Dummy : ; return ''
Square : ; return ARG(1) * ARG(1)
ToUpperCase : ; return UPPER(ARG(1))
ReverseToken : ; return REVERSE(ARG(1))
GenSeq : if ARG(1) > 0 then ; return STRIP(GenSeq(ARG(1) - 1) ARG(1)) ; return ''
