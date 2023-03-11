/* Unit Test Runner: t-rexx */
context('Checking the Custom Set exercise functions')

/* Test variables */
emptySet = SetCreate("")
fullSet1 = SetCreate("AX TR WS TRYT ZXU AX TDY WS FGH")
fullSet2 = SetCreate("JK YS WS QAFS FGH MNB")
fullSet3 = SetCreate("QAFS BDF X77")
subSet1 = SetCreate("AX WS TR")
subSet2 = SetCreate("QAFS")
intersectFullSet1And2 = SetCreate("FGH WS")
unionFullSet1And2 = SetCreate("AX FGH JK MNB QAFS TDY TR TRYT WS YS ZXU")
diffFullSet1And2 = SetCreate("AX TDY TR TRYT ZXU")
diffFullSet2And1 = SetCreate("JK MNB QAFS YS")

/* Unit tests */
function = 'SetIsEmpty'
check('sets with no elements are empty' function||'(emptySet)',,
      function||'(emptySet)',, 'to be', 1)

check('sets with elements are not empty' function||'(fullSet1)',,
      function||'(fullSet1)',, 'to be', 0)

function = 'SetContains'
check('nothing is contained in an empty set' function||'(emptySet, "AX")',,
      function||'(emptySet, "AX")',, 'to be', 0)

check('when the element is in the set' function||'(fullSet1, "AX")',,
      function||'(fullSet1, "AX")',, 'to be', 1)

check('when the element is not in the set' function||'(fullSet1, "IJ")',,
      function||'(fullSet1, "IJ")',, 'to be', 0)

function = 'SetIsSubset'
check('empty set is a subset of another empty set' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', 1)

check('empty set is a subset of non-empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', 1)

check('non-empty set is not a subset of empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', 0)

check('set is a subset of set with exact same elements' function||'(fullSet1, fullSet1)',,
      function||'(fullSet1, fullSet1)',, 'to be', 1)

check('set is a subset of larger set with same elements' function||'(fullSet1, subSet1)',,
      function||'(fullSet1, subSet1)',, 'to be', 1)

check('set is not a subset of set that does not contain its elements' function||'(subSet2, subSet1)',,
      function||'(subSet2, subSet1)',, 'to be', 0)

function = 'SetIsDisjoint'
check('the empty set is disjoint with itself' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', 1)

check('empty set is disjoint with non-empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', 1)

check('non-empty set is disjoint with empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', 1)

check('sets are not disjoint if they share an element' function||'(fullSet1, fullSet2)',,
      function||'(fullSet1, fullSet2)',, 'to be', 0)

check('sets are disjoint if they share no elements' function||'(subSet1, subSet2)',,
      function||'(subSet1, subSet2)',, 'to be', 1)

function = 'SetIsEqual'
check('empty sets are equal' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', 1)

check('empty set is not equal to non-empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', 0)

check('non-empty set is not equal to empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', 0)

check('sets with the same elements are equal' function||'(fullSet1, fullSet1)',,
      function||'(fullSet1, fullSet1)',, 'to be', 1)

check('sets with different elements are not equal' function||'(fullSet1, fullSet2)',,
      function||'(fullSet1, fullSet2)',, 'to be', 0)

check('set is not equal to larger set with same elements' function||'(fullSet1, subSet1)',,
      function||'(fullSet1, subSet1)',, 'to be', 0)

function = 'SetAdd'
check('add to empty set' function||'(emptySet, "AX")',,
      function||'(emptySet, "AX")',, 'to be', SetCreate("AX"))

check('add to non-empty set' function||'(subSet2, "AX")',,
      function||'(subSet2, "AX")',, 'to be', SetCreate("QAFS AX"))

check('adding an existing element does not change the set' function||'(subSet1, "AX")',,
      function||'(subSet1, "AX")',, 'to be', subSet1)

function = 'SetIntersection'
check('intersection of two empty sets is an empty set' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', emptySet)

check('intersection of an empty set and non-empty set is an empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', emptySet)

check('intersection of a non-empty set and an empty set is an empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', emptySet)

check('intersection of two sets with no shared elements is an empty set' function||'(fullSet1, fullSet3)',,
      function||'(fullSet1, fullSet3)',, 'to be', emptySet)

check('intersection of two sets with shared elements is a set of the shared elements' function||'(fullSet1, fullSet2)',,
      function||'(fullSet1, fullSet2)',, 'to be', intersectFullSet1And2)

function = 'SetDifference'
check('difference of two empty sets is an empty set' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', emptySet)

check('difference of empty set and non-empty set is an empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', emptySet)

check('difference of a non-empty set and an empty set is the non-empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', fullSet1)

check('difference of two non-empty sets is a set of elements that are only in the first set' function||'(fullSet1, fullSet2)',,
      function||'(fullSet1, fullSet2)',, 'to be', diffFullSet1And2)

check('difference of two non-empty sets is a set of elements that are only in the first set' function||'(fullSet2, fullSet1)',,
      function||'(fullSet2, fullSet1)',, 'to be', diffFullSet2And1)

function = 'SetUnion'
check('union of empty sets is an empty set' function||'(emptySet, emptySet)',,
      function||'(emptySet, emptySet)',, 'to be', emptySet)

check('union of an empty set and non-empty set is the non-empty set' function||'(emptySet, fullSet1)',,
      function||'(emptySet, fullSet1)',, 'to be', fullSet1)

check('union of a non-empty set and empty set is the non-empty set' function||'(fullSet1, emptySet)',,
      function||'(fullSet1, emptySet)',, 'to be', fullSet1)

check('union of non-empty sets contains all unique elements' function||'(fullSet1, fullSet2)',,
      function||'(fullSet1, fullSet2)',, 'to be', unionFullSet1And2)

check('union of non-empty sets contains all unique elements' function||'(fullSet2, fullSet1)',,
      function||'(fullSet2, fullSet1)',, 'to be', unionFullSet1And2)

