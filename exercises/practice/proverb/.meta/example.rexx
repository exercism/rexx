Proverb : procedure
  if ARG() < 1 | ARG(1) == '' then ; return ''
  if ARG() == 1 then ; return 'And all for the want of a' ARG(1) || '.' || "0A"X
  proverb = '' ; lastn = ARG()
  do n = 1 to lastn
    if n + 1 > lastn then ; leave
    proverb ||= 'For want of a' ARG(n) 'the' ARG(n + 1) 'was lost.' || "0A"X
  end
return proverb || 'And all for the want of a' ARG(1) || '.' || "0A"X
