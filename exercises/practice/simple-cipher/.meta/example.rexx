Encode : ; return Transform(ARG(1), ARG(2), "E")
Decode : ; return Transform(ARG(1), ARG(2), "D")

GetIndex : ; return ((ARG(1) + (ARG(2) - 1)) // ARG(2)) + 1

Transform : procedure
  parse value STRIP(ARG(1)) || ';' || ARG(2) || ';' || ARG(3) || ,
                        ';' || 'abcdefghijklmnopqrstuvwxyz' ,
        with key ';' text ';' direction ';' alphabet
  if VERIFY(key, alphabet, 'N') > 0 then ; return text
  if VERIFY(direction, 'DE', 'N') > 0 then ; return text
  parse value LENGTH(key) LENGTH(text) '' ,
        with  keylen textlen output
  encodelen = textlen
  do i = 1 to encodelen
    parse value SUBSTR(text, i, 1) SUBSTR(key, GetIndex(i, keylen), 1) ,
          with  c                  k
    if direction == 'E' then
      z = SUBSTR(alphabet, GetIndex(POS(c, alphabet) + POS(k, alphabet) - 1, 26), 1)
    else
      z = SUBSTR(alphabet, GetIndex(POS(c, alphabet) - POS(k, alphabet) + 1, 26), 1)
    output ||= z
  end
return output

GenerateKey : procedure
  parse value STRIP(ARG(1)) || ';' || C2D('a') || ';' || C2D('z') || ';',
        with keysize ';' ascii_a ';' ascii_z ';' key
  if \DATATYPE(keysize, 'N') | keysize < 1 then ; keysize = 100
  do keysize ; key ||= D2C(RANDOM(ascii_a, ascii_z)) ; end
return STRIP(key)
