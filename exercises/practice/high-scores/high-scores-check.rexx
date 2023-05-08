/* Unit Test Runner: t-rexx */
context('Checking the High Scores functions')

/* Test Variables */
scores = ScoresCreate("10 30 90 30 100 20 10 0 30 40 40 40 70 70")
scores_list = "10 30 90 30 100 20 10 0 30 40 40 40 70 70"
scores_less_than_three = ScoresCreate("40 60")
scores_only_one = ScoresCreate("40")

/* Unit tests */
check('List of scores' 'ScoresList(scores)',,
      'ScoresList(scores)',, 'to be', scores_list)

check('Latest score' 'ScoresGetLatest(scores)',,
      'ScoresGetLatest(scores)',, 'to be', 70)

check('Personal best' 'ScoresGetPersonalBest(scores)',,
      'ScoresGetPersonalBest(scores)',, 'to be', 100)

check('Top 3 scores -> Personal top three from a list of scores' 'ScoresGetPersonalBest(scores, 3)',,
      'ScoresGetPersonalBest(scores, 3)',, 'to be', "70 90 100")

check('Top 3 scores -> Personal top highest to lowest' 'ScoresGetPersonalBest(scores, 3, "D")',,
      'ScoresGetPersonalBest(scores, 3, "D")',, 'to be', "100 90 70")

check('Top 3 scores -> Personal top when there is a tie' 'ScoresGetPersonalBest(scores, 3)',,
      'ScoresGetPersonalBest(scores, 3)',, 'to be', "70 90 100")

check('Top 3 scores -> Personal top when there are less than 3' 'ScoresGetPersonalBest(scores_less_than_three, 3)',,
      'ScoresGetPersonalBest(scores_less_than_three, 3)',, 'to be', "40 60")

check('Top 3 scores -> Personal top when there is only one' 'ScoresGetPersonalBest(scores_only_one, 3)',,
      'ScoresGetPersonalBest(scores_only_one, 3)',, 'to be', "40")

check('Top 3 scores -> Latest score after personal best' 'ScoresGetLatest(scores, 1, 100)',,
      'ScoresGetLatest(scores, 1, 100)',, 'to be', "20")

check('Top 3 scores -> Scores after personal best' 'ScoresGetLatest(scores, 0, 100)',,
      'ScoresGetLatest(scores, 0, 100)',, 'to be', "20 10 0 30 40 40 40 70 70")

