Convert : procedure
  if ARG() \= 2 | ARG(1) == '' | \DATATYPE(ARG(2), 'N') then ; return ''
  plaintext = ARG(1) ; rot = ARG(2)
  if rot < 0 then ; return ''
  if rot == 0 then ; return plaintext
  /* Setup constants to minimize conversion overhead and normalize `rot` */
  parse value C2D('A') C2D('Z') C2D('a') C2D('z') ,
        with codeUA codeUZ codeLA codeLZ
  rot = rot // 26
  /* Parse-by-character, and selectively apply `rot` to plaintext */
  ciphertext = '' ; do while plaintext \= ''
    parse var plaintext c +1 plaintext
    t = C2D(c) ; x = t + rot
    select
      /* Only letters are shifted */
      when (t >= codeUA & t <= codeUZ) then ; if x > codeUZ then ; x -= 26
      when (t >= codeLA & t <= codeLZ) then ; if x > codeLZ then ; x -= 26
      otherwise ; x = t
    end
    ciphertext ||= D2C(x)
  end
return ciphertext
