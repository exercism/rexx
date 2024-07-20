/* Unit Test Runner: t-rexx */
context('Checking the Custom Set exercise functions')

/* Test Variables */
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
check('sets with no elements are empty' 'SetIsEmpty(emptySet)',,
      'SetIsEmpty(emptySet)',, '=', 1)

check('sets with elements are not empty' 'SetIsEmpty(fullSet1)',,
      'SetIsEmpty(fullSet1)',, '=', 0)

check('nothing is contained in an empty set' 'SetContains(emptySet, "AX")',,
      'SetContains(emptySet, "AX")',, '=', 0)

check('when the element is in the set' 'SetContains(fullSet1, "AX")',,
      'SetContains(fullSet1, "AX")',, '=', 1)

check('when the element is not in the set' 'SetContains(fullSet1, "IJ")',,
      'SetContains(fullSet1, "IJ")',, '=', 0)

check('empty set is a subset of another empty set' 'SetIsSubset(emptySet, emptySet)',,
      'SetIsSubset(emptySet, emptySet)',, '=', 1)

check('empty set is a subset of non-empty set' 'SetIsSubset(fullSet1, emptySet)',,
      'SetIsSubset(fullSet1, emptySet)',, '=', 1)

check('non-empty set is not a subset of empty set' 'SetIsSubset(emptySet, fullSet1)',,
      'SetIsSubset(emptySet, fullSet1)',, '=', 0)

check('set is a subset of set with exact same elements' 'SetIsSubset(fullSet1, fullSet1)',,
      'SetIsSubset(fullSet1, fullSet1)',, '=', 1)

check('set is a subset of larger set with same elements' 'SetIsSubset(fullSet1, subSet1)',,
      'SetIsSubset(fullSet1, subSet1)',, '=', 1)

check('set is not a subset of set that does not contain its elements' 'SetIsSubset(subSet2, subSet1)',,
      'SetIsSubset(subSet2, subSet1)',, '=', 0)

check('the empty set is disjoint with itself' 'SetIsDisjoint(emptySet, emptySet)',,
      'SetIsDisjoint(emptySet, emptySet)',, '=', 1)

check('empty set is disjoint with non-empty set' 'SetIsDisjoint(fullSet1, emptySet)',,
      'SetIsDisjoint(fullSet1, emptySet)',, '=', 1)

check('non-empty set is disjoint with empty set' 'SetIsDisjoint(emptySet, fullSet1)',,
      'SetIsDisjoint(emptySet, fullSet1)',, '=', 1)

check('sets are not disjoint if they share an element' 'SetIsDisjoint(fullSet1, fullSet2)',,
      'SetIsDisjoint(fullSet1, fullSet2)',, '=', 0)

check('sets are disjoint if they share no elements' 'SetIsDisjoint(subSet1, subSet2)',,
      'SetIsDisjoint(subSet1, subSet2)',, '=', 1)

check('empty sets are equal' 'SetIsEqual(emptySet, emptySet)',,
      'SetIsEqual(emptySet, emptySet)',, '=', 1)

check('empty set is not equal to non-empty set' 'SetIsEqual(emptySet, fullSet1)',,
      'SetIsEqual(emptySet, fullSet1)',, '=', 0)

check('non-empty set is not equal to empty set' 'SetIsEqual(fullSet1, emptySet)',,
      'SetIsEqual(fullSet1, emptySet)',, '=', 0)

check('sets with the same elements are equal' 'SetIsEqual(fullSet1, fullSet1)',,
      'SetIsEqual(fullSet1, fullSet1)',, '=', 1)

check('sets with different elements are not equal' 'SetIsEqual(fullSet1, fullSet2)',,
      'SetIsEqual(fullSet1, fullSet2)',, '=', 0)

check('set is not equal to larger set with same elements' 'SetIsEqual(fullSet1, subSet1)',,
      'SetIsEqual(fullSet1, subSet1)',, '=', 0)

check('add to empty set' 'SetAdd(emptySet, "AX")',,
      'SetAdd(emptySet, "AX")',, '=', SetCreate("AX"))

check('add to non-empty set' 'SetAdd(subSet2, "AX")',,
      'SetAdd(subSet2, "AX")',, '=', SetCreate("QAFS AX"))

check('adding an existing element does not change the set' 'SetAdd(subSet1, "AX")',,
      'SetAdd(subSet1, "AX")',, '=', subSet1)

check('intersection of two empty sets is an empty set' 'SetIntersection(emptySet, emptySet)',,
      'SetIntersection(emptySet, emptySet)',, '=', emptySet)

check('intersection of an empty set and non-empty set is an empty set' 'SetIntersection(emptySet, fullSet1)',,
      'SetIntersection(emptySet, fullSet1)',, '=', emptySet)

check('intersection of a non-empty set and an empty set is an empty set' 'SetIntersection(fullSet1, emptySet)',,
      'SetIntersection(fullSet1, emptySet)',, '=', emptySet)

check('intersection of two sets with no shared elements is an empty set' 'SetIntersection(fullSet1, fullSet3)',,
      'SetIntersection(fullSet1, fullSet3)',, '=', emptySet)

check('intersection of two sets with shared elements is a set of the shared elements' 'SetIntersection(fullSet1, fullSet2)',,
      'SetIntersection(fullSet1, fullSet2)',, '=', intersectFullSet1And2)

check('difference of two empty sets is an empty set' 'SetDifference(emptySet, emptySet)',,
      'SetDifference(emptySet, emptySet)',, '=', emptySet)

check('difference of empty set and non-empty set is an empty set' 'SetDifference(emptySet, fullSet1)',,
      'SetDifference(emptySet, fullSet1)',, '=', emptySet)

check('difference of a non-empty set and an empty set is the non-empty set' 'SetDifference(fullSet1, emptySet)',,
      'SetDifference(fullSet1, emptySet)',, '=', fullSet1)

check('difference of two non-empty sets is a set of elements that are only in the first set' 'SetDifference(fullSet1, fullSet2)',,
      'SetDifference(fullSet1, fullSet2)',, '=', diffFullSet1And2)

check('difference of two non-empty sets is a set of elements that are only in the first set' 'SetDifference(fullSet2, fullSet1)',,
      'SetDifference(fullSet2, fullSet1)',, '=', diffFullSet2And1)

check('union of empty sets is an empty set' 'SetUnion(emptySet, emptySet)',,
      'SetUnion(emptySet, emptySet)',, '=', emptySet)

check('union of an empty set and non-empty set is the non-empty set' 'SetUnion(emptySet, fullSet1)',,
      'SetUnion(emptySet, fullSet1)',, '=', fullSet1)

check('union of a non-empty set and empty set is the non-empty set' 'SetUnion(fullSet1, emptySet)',,
      'SetUnion(fullSet1, emptySet)',, '=', fullSet1)

check('union of non-empty sets contains all unique elements' 'SetUnion(fullSet1, fullSet2)',,
      'SetUnion(fullSet1, fullSet2)',, '=', unionFullSet1And2)

check('union of non-empty sets contains all unique elements' 'SetUnion(fullSet2, fullSet1)',,
      'SetUnion(fullSet2, fullSet1)',, '=', unionFullSet1And2)

