/* Unit Test Runner: t-rexx */
context('Checking the Grade School functions')

/* Test Variables */
roster_empty = GradeSchoolCreate()
roster_aimee_only = GradeSchoolCreate("Aimee:2")
roster_harry_only = GradeSchoolCreate("Harry:2")
roster_multiple_students_same_grade = GradeSchoolCreate("Harry:2 Mark:2 John:2 Bill:2")
roster_multiple_students_different_grades = GradeSchoolCreate("Harry:3 Mark:5 John:9 Bill:7")
roster_multiple_grades = GradeSchoolCreate("Harry:3 Mark:5 John:9 Bill:7 Sam:5 Anne:5 Jill:3")

output_sorted_grades = '3 Harry' || "0A"X || '3 Jill' || "0A"X || '5 Anne' || "0A"X || '5 Mark' || "0A"X || '5 Sam' || "0A"X || '7 Bill' || "0A"X ||  '9 John' || "0A"X
output_sorted_names = 'Anne 5' || "0A"X || 'Bill 7' || "0A"X || 'Harry 3' || "0A"X || 'Jill 3' || "0A"X || 'John 9' || "0A"X || 'Mark 5' || "0A"X || 'Sam 5' || "0A"X
output_selected_grade = 'Harry 3' || "0A"X || 'Jill 3' || "0A"X

/* Unit tests */
function = 'GradeSchoolCreate'
check('Roster is empty when no student is added' function||'()',,
      function||'()',, 'to be', roster_empty)

function = 'GradeSchoolAdd'
roster = GradeSchoolCreate()
check('Student is added to the roster' function||'(roster, "Aimee", 2)',,
      function||'(roster, "Aimee", 2)',, 'to be', roster_aimee_only)

roster = GradeSchoolCreate()
roster = GradeSchoolAdd(roster, "Bill", 2)
roster = GradeSchoolAdd(roster, "John", 2)
roster = GradeSchoolAdd(roster, "Mark", 2)
roster = GradeSchoolAdd(roster, "Harry", 2)
check('Multiple students in the same grade are added to the roster' function||'(roster, ...)',,
      function||'(roster)', 'roster', 'to be', roster_multiple_students_same_grade)

roster = GradeSchoolCreate()
roster = GradeSchoolAdd(roster, "Bill", 7)
roster = GradeSchoolAdd(roster, "John", 9)
roster = GradeSchoolAdd(roster, "Mark", 5)
roster = GradeSchoolAdd(roster, "Harry", 3)
check('Students in multiple grades are added to the roster' function||'(roster, ...)',,
      function||'(roster)', 'roster', 'to be', roster_multiple_students_different_grades)

roster = GradeSchoolCreate()
roster = GradeSchoolAdd(roster, "Harry", 2)
check('Cannot add student to same grade in the roster more than once' function||'(roster, "Harry", 2)',,
      function||'(roster, "Harry", 2)',, 'to be', roster_harry_only)

roster = GradeSchoolCreate()
roster = GradeSchoolAdd(roster, "Harry", 2)
roster = GradeSchoolAdd(roster, "Harry", 3)
check('A student cannot be in two different grades' function||'(roster, "Harry", 3)',,
      function||'(roster, "Harry", 3)',, 'to be', roster_harry_only)

function = 'GradeSchoolIsEmpty'
roster = GradeSchoolCreate()
check('Grade is empty if no students in the roster' function||'(roster)',,
      function||'(roster)',, 'to be', 1)

roster = GradeSchoolCreate()
roster = GradeSchoolAdd(roster, "Harry", 2)
roster = GradeSchoolAdd(roster, "Bob", 3)
check('Grade is empty if no students in that grade' function||'(roster, 5)',,
      function||'(roster, 5)',, 'to be', 1)

check('Grade is not empty if students in that grade' function||'(roster, 2)',,
      function||'(roster, 2)',, 'to be', 0)

function = 'GradeSchoolList'
roster = roster_multiple_grades
check('Students are sorted by grades in the roster' function||'(roster, "G")',,
      function||'(roster, "G")',, 'to be', output_sorted_grades)

check('Students are sorted by name in the roster' function||'(roster, "N")',,
      function||'(roster, "N")',, 'to be', output_sorted_names)

check('Students are sorted by name in a grade' function||'(roster, "N", 3)',,
      function||'(roster, "N", 3)',, 'to be', output_selected_grade)

