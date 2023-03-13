/* Unit Test Runner: t-rexx */
function = 'Proverb'
context('Checking the' function 'function')

/* Test variables */
proverb_1 = 'And all for the want of a nail.' || "0A"X

proverb_2 = 'For want of a nail the shoe was lost.' || "0A"X || ,
            'And all for the want of a nail.' || "0A"X

proverb_3 = 'For want of a nail the shoe was lost.' || "0A"X || ,
            'For want of a shoe the horse was lost.' || "0A"X || ,
            'And all for the want of a nail.' || "0A"X

proverb_full = 'For want of a nail the shoe was lost.' || "0A"X || ,
               'For want of a shoe the horse was lost.' || "0A"X || ,
               'For want of a horse the rider was lost.' || "0A"X || ,
               'For want of a rider the message was lost.' || "0A"X || ,
               'For want of a message the battle was lost.' || "0A"X || ,
               'For want of a battle the kingdom was lost.' || "0A"X || ,
               'And all for the want of a nail.' || "0A"X

proverb_modern = 'For want of a pin the gun was lost.' || "0A"X || ,
                 'For want of a gun the soldier was lost.' || "0A"X || ,
                 'For want of a soldier the battle was lost.' || "0A"X || ,
                 'And all for the want of a pin.' || "0A"X

/* Unit tests */
check('zero pieces' function||'()',,
      function||'()',, 'to be', '')

check('one piece' function||'("nail")',,
      function||'("nail")',, 'to be', proverb_1)

check('two pieces' function||'("nail", "shoe")',,
      function||'("nail", "shoe")',, 'to be', proverb_2)

check('three pieces' function||'("nail", "shoe", "horse")',,
      function||'("nail", "shoe", "horse")',, 'to be', proverb_3)

check('full proverb' function||'("nail", "shoe", "horse", "rider", "message", "battle", "kingdom")',,
      function||'("nail", "shoe", "horse", "rider", "message", "battle", "kingdom")',, 'to be', proverb_full)

check('four pieces modernized' function||'("pin", "gun", "soldier", "battle")',,
      function||'("pin", "gun", "soldier", "battle")',, 'to be', proverb_modern)

