/* Unit Test Runner: t-rexx */
context('Checking the Proverb function')

/* Test Variables */
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
check('zero pieces' 'Proverb()',,
      'Proverb()',, '=', '')

check('one piece' 'Proverb("nail")',,
      'Proverb("nail")',, '=', proverb_1)

check('two pieces' 'Proverb("nail", "shoe")',,
      'Proverb("nail", "shoe")',, '=', proverb_2)

check('three pieces' 'Proverb("nail", "shoe", "horse")',,
      'Proverb("nail", "shoe", "horse")',, '=', proverb_3)

check('full proverb' 'Proverb("nail", "shoe", "horse", "rider", "message", "battle", "kingdom")',,
      'Proverb("nail", "shoe", "horse", "rider", "message", "battle", "kingdom")',, '=', proverb_full)

check('four pieces modernized' 'Proverb("pin", "gun", "soldier", "battle")',,
      'Proverb("pin", "gun", "soldier", "battle")',, '=', proverb_modern)

