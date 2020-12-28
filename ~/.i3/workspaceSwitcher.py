#!/usr/bin/env python3

import sys
import re
import i3ipc
from subprocess import call

# Create the Connection object that can be used to send commands and subscribe to events.
i3 = i3ipc.Connection()

focused = i3.get_tree().find_focused().workspace().name

# Current workspace number
currentNumber = int(re.search(r'^([0-9]+)', focused).group(0))

# next
if sys.argv[1] == "next":
    if currentNumber < 10:
        currentNumber += 1
    # else don't do anything

elif sys.argv[1] == "prev":
    if currentNumber > 1:
        currentNumber -= 1
    #else don't do anything

else:
    print("not a valid input")

i3.command('workspace number ' + str(currentNumber))
