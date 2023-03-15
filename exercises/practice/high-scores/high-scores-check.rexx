/* Unit Test Runner: t-rexx */
context('Checking the High Scores functions')

/* Test Variables */
scores = ScoresCreate("10 30 90 30 100 20 10 0 30 40 40 40 70 70")

scores_list = "10 30 90 30 100 20 10 0 30 40 40 40 70 70"

scores_less_than_three = ScoresCreate("40 60")

scores_only_one = ScoresCreate("40")

/* Unit tests */
function = 'ScoresList'
check('List of scores' function||'(scores)',,
      function||'(scores)',, 'to be', scores_list)

function = 'ScoresGetLatest'
check('Latest score' function||'(scores)',,
      function||'(scores)',, 'to be', 70)

function = 'ScoresGetPersonalBest'
check('Personal best' function||'(scores)',,
      function||'(scores)',, 'to be', 100)

check('Top 3 scores -> Personal top three from a list of scores' function||'(scores, 3)',,
      function||'(scores, 3)',, 'to be', "70 90 100")

check('Top 3 scores -> Personal top highest to lowest' function||'(scores, 3, "D")',,
      function||'(scores, 3, "D")',, 'to be', "100 90 70")

check('Top 3 scores -> Personal top when there is a tie' function||'(scores, 3)',,
      function||'(scores, 3)',, 'to be', "70 90 100")

check('Top 3 scores -> Personal top when there are less than 3' function||'(scores_less_than_three, 3)',,
      function||'(scores_less_than_three, 3)',, 'to be', "40 60")

check('Top 3 scores -> Personal top when there is only one' function||'(scores_only_one, 3)',,
      function||'(scores_only_one, 3)',, 'to be', "40")

function = 'ScoresGetLatest'
check('Top 3 scores -> Latest score after personal best' function||'(scores, 1, 100)',,
      function||'(scores, 1, 100)',, 'to be', "20")

check('Top 3 scores -> Scores after personal best' function||'(scores, 0, 100)',,
      function||'(scores, 0, 100)',, 'to be', "20 10 0 30 40 40 40 70 70")

