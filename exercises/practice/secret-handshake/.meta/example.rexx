Commands : procedure
  if ARG() \= 1 | \DATATYPE(ARG(1), 'N') | ARG(1) == 0 then ; return ''
  RECSEP = ';' ; KEYSEP = ':' ; REVCMD_CODE = 16 ; codes = X2B(D2X(ARG(1), 2))
  /* Orient code->command table depending on reverse code presence */
  if BITAND(codes, X2B(D2X(REVCMD_CODE, 2))) \= 0 then
    cmdMap = '08:jump;04:close your eyes;02:double blink;01:wink'
  else
    cmdMap = '01:wink;02:double blink;04:close your eyes;08:jump'
  /* Build command list by parsing code->command table applying bit masks */
  cmdStr = '' ; do while cmdMap \= ''
    parse value SPACE(cmdMap) with mask (KEYSEP) cmd (RECSEP) cmdMap
    if BITAND(codes, X2B(D2X(mask, 2))) \= 0 then ; cmdStr ||= RECSEP || cmd
  end
return STRIP(cmdStr, 'L', RECSEP)
