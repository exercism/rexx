IsTriangleType : procedure
  /* Validate input values */
  if ARG() \= 4 then ; return -1
  parse arg sideA, sideB, sideC, triangleType
  if \DATATYPE(sideA, 'N') | \DATATYPE(sideB, 'N') | \DATATYPE(sideC, 'N'),
    then ; return -1
  /* Determine degeneracy */
  if sideA < 1 | sideB < 1 | sideC < 1 then ; return -1
  if sideA + sideB <= sideC | sideA + sideC <= sideB | sideB + sideC <= sideA,
    then ; return -1
  /* Evaluate triangle type */
  isEquilateral = (sideA == sideB & sideA == sideC)
  isIsosceles = (sideA == sideB | sideA == sideC | sideB == sideC)
  isScalene = (sideA \= sideB & sideA \= sideC & sideB \= sideC)
  /* Report criterion match */
  parse upper var triangleType triangleType
  select
    when triangleType == 'EQUILATERAL' then isTriangle = isEquilateral
    when triangleType == 'ISOSCELES' then isTriangle = isIsosceles
    when triangleType == 'SCALENE' then isTriangle = isScalene
    otherwise return -1
  end
return isTriangle
