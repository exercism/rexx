GradeSchoolCreate : procedure
  if ARG() < 1 then ; return 'GRADESCHOOL;0;'
  parse value SPACE(ARG(1)) with entries
  if STRIP(entries) == '' | ,
     \GradeSchoolValidEntries(entries) then ; return 'GRADESCHOOL;0;'
return 'GRADESCHOOL;' || WORDS(entries) || ';' || entries

GradeSchoolValidEntries : procedure
  parse arg entries
  do while entries \= ''
    parse var entries student ':' grade entries
    if student == '' | grade == '' then ; return 0
  end
return 1

GradeSchoolIsEmpty : procedure
  if ARG() == 1 then ; return ARG(1) == 'GRADESCHOOL;0;'
  if ARG() == 2 then do
    parse arg gradeschool, target
    parse var gradeschool 'GRADESCHOOL;' size ';' entries
    do while entries \= ''
      parse var entries student ':' grade entries
      if grade == target then ; return 0
    end
  end
return 1

GradeSchoolAdd : procedure
  parse arg gradeschool, student, grade
  parse var gradeschool 'GRADESCHOOL;' size ';' entries
  if student == '' | grade == '' then ; return gradeschool
  if POS(student, entries) > 0 then ; return gradeschool
  newentry = STRIP(student) || ':' || STRIP(grade)
return 'GRADESCHOOL;' || (size + 1) || ';' || SPACE(newentry entries)

GradeSchoolList : procedure
  parse arg gradeschool, sortCmd, target
  parse var gradeschool 'GRADESCHOOL;' size ';' entries
  students = entries ; grades = ''
  do while entries \= ''
    parse var entries student ':' grade entries
    grades ||= grade || ':' || student ''
  end
  students = sortWords(students) ; grades = sortWords(grades)
  select
    when sortCmd == 'N' then entries = students
    when sortCmd == 'G' then entries = grades
    otherwise nop
  end
  output = '' ; do while entries \= ''
    parse var entries leftval ':' rightval entries
    if target \= '' & target == rightval | ,
       target == '' then ; output ||= leftval rightval || "0A"X
  end
return output

SortWords: procedure
  words = ARG(1) ; parse value WORDS(words) WORD(words, 1) with n sorted
  if n < 2 then ; return sorted
  do i = 2 to n
    next = WORD(words, i)
    do j = 1 to i-1
      if next < WORD(sorted, j) then do
        if j > 1 then ; lm = SUBWORD(sorted, 1, j-1) ; else lm = ''
        sorted = lm next SUBWORD(sorted, j)
        leave j
      end
      if j == i-1 then ; sorted = sorted next
    end
  end
return STRIP(sorted)

ReverseWords: procedure
  words = ARG(1) ; n = WORDS(words) ; revwords = ''
  do i = n to 1 by -1
    revwords = revwords WORD(words, i)
  end
return STRIP(revwords)
