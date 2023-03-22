IsBalanced : procedure
  parse arg input
  stk = '' ; do while input \= ''
    parse var input c +1 input
    select
      when c == '[' then ; stk ||= ']'
      when c == '(' then ; stk ||= ')'
      when c == '{' then ; stk ||= '}'
      when VERIFY(c, '])}', 'M') > 0 then do
        if stk == '' then ; return 0
        if c \= SUBSTR(stk, LENGTH(stk), 1) then ; return 0
        stk = DELSTR(stk, LENGTH(stk), 1)
      end
      otherwise nop
    end
  end
return stk == ''
