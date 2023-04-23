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

roster_2 = GradeSchoolCreate()
roster_3 = GradeSchoolCreate()
roster_3 = GradeSchoolAdd(roster_3, "Bill", 2)
roster_3 = GradeSchoolAdd(roster_3, "John", 2)
roster_3 = GradeSchoolAdd(roster_3, "Mark", 2)
roster_3 = GradeSchoolAdd(roster_3, "Harry", 2)

roster_4 = GradeSchoolCreate()
roster_4 = GradeSchoolAdd(roster_4, "Bill", 7)
roster_4 = GradeSchoolAdd(roster_4, "John", 9)
roster_4 = GradeSchoolAdd(roster_4, "Mark", 5)
roster_4 = GradeSchoolAdd(roster_4, "Harry", 3)

roster_5 = GradeSchoolCreate()
roster_5 = GradeSchoolAdd(roster_5, "Harry", 2)

roster_6 = GradeSchoolCreate()
roster_6 = GradeSchoolAdd(roster_6, "Harry", 2)
roster_6 = GradeSchoolAdd(roster_6, "Harry", 3)

roster_7 = GradeSchoolCreate()

roster_8 = GradeSchoolCreate()
roster_8 = GradeSchoolAdd(roster_8, "Harry", 2)
roster_8 = GradeSchoolAdd(roster_8, "Bob", 3)

roster_9 = roster_multiple_grades

/* Unit tests */
check('Roster is empty when no student is added' 'GradeSchoolCreate()',,
      'GradeSchoolCreate()',, 'to be', roster_empty)

check('Student is added to the roster' 'GradeSchoolAdd(roster_2, "Aimee", 2)',,
      'GradeSchoolAdd(roster_2, "Aimee", 2)',, 'to be', roster_aimee_only)

check('Multiple students in the same grade are added to the roster' 'GradeSchoolAdd(roster_3)',,
      'GradeSchoolAdd(roster_3)',, 'to be', roster_multiple_students_same_grade)

check('Students in multiple grades are added to the roster' 'GradeSchoolAdd(roster_4)',,
      'GradeSchoolAdd(roster_4)',, 'to be', roster_multiple_students_different_grades)

check('Cannot add student to same grade in the roster more than once' 'GradeSchoolAdd(roster_5, "Harry", 2)',,
      'GradeSchoolAdd(roster_5, "Harry", 2)',, 'to be', roster_harry_only)

check('A student cannot be in two different grades' 'GradeSchoolAdd(roster_6, "Harry", 3)',,
      'GradeSchoolAdd(roster_6, "Harry", 3)',, 'to be', roster_harry_only)

check('Grade is empty if no students in the roster' 'GradeSchoolIsEmpty(roster_7)',,
      'GradeSchoolIsEmpty(roster_7)',, 'to be', 1)

check('Grade is empty if no students in that grade' 'GradeSchoolIsEmpty(roster_8, 5)',,
      'GradeSchoolIsEmpty(roster_8, 5)',, 'to be', 1)

check('Grade is not empty if students in that grade' 'GradeSchoolIsEmpty(roster_8, 2)',,
      'GradeSchoolIsEmpty(roster_8, 2)',, 'to be', 0)

check('Students are sorted by grades in the roster' 'GradeSchoolList(roster_9, "G")',,
      'GradeSchoolList(roster_9, "G")',, 'to be', output_sorted_grades)

check('Students are sorted by name in the roster' 'GradeSchoolList(roster_9, "N")',,
      'GradeSchoolList(roster_9, "N")',, 'to be', output_sorted_names)

check('Students are sorted by name in a grade' 'GradeSchoolList(roster_9, "N", 3)',,
      'GradeSchoolList(roster_9, "N", 3)',, 'to be', output_selected_grade)

