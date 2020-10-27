# zombielab

> Reporter 1:
>   "Is it a virus?"
>
> Spokesman:
>   "We don't know."
>
> Reporter 2:
>   "How does it spread? Is it airborne?"
>
> Spokesman:
>   "Anything's a possibility. We don't know."
>
> Reporter 3:
>   "Is this an international health hazard, or a military concern?"
>
> Spokesman:
>   "Both."
>
> Reporter 4:
>   "Are these people alive or dead?"
>
> Spokesman:
>   "We don't know."

Twelve years later, you find yourself leading a small community of survivors.
You've become extremely good at recognizing patterns to avoid deadly situations,
and you'll be putting those skills to use today.

Today, you'll be using regular expressions to help save yourself and your
community. Every problem can be solved with a single command. Good luck!

## Instructions

Each problem has its own instructions. You can check your work at any time with:

    $ driver/driver

For some questions, there are more test cases on Autolab that you can't see. To
submit your work to Autolab, use `make`, and scp the handin.zip file to your
laptop to upload it to Autolab:

    # From Andrew:
    $ make

    # From your laptop
    # Mac/Linux
    $ scp ANDREWID@unix.andrew.cmu.edu:~/path/to/your/handin.zip .
    # Windows:
    $ scp ANDREWID@unix.andrew.cmu.edu:~/path/to/handin.zip /mnt/c/Users/USERNAME/Downloads/

## Hints

Experiment with running some commands you think will work at the command line
first. Then, when you think you've got an answer that will work, transfer it to
your script.

Every answer must be solved with a single regular expression!


## Avoid the Dead

Your community has grown exhausted. You've been travelling for two weeks
straight, and it's time to find a place to rest. You'll need to use your
scouting abilities to find locations that don't contain any zombies.

### requirements

- Create a file called `avoid-the-dead.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print all locations that have zombies. A location
has a zombie if the string 'ZOMBIE' is contained somewhere in it. You should
search for zombies in camping-spots/. Your output should contain the
filename and the string match.


## Midnight Ambush

You're awoken abruptly by a frightened watchman. Zombies have begun surrounding
your camp. They seem calm, unaware that there is plenty of fresh meat just a
few hundred feet away. To make matters worse, they've all gathered around one
of your supply caches. It's too dark to make out all of them, but you've dealt
with more severe situations. You'll need to kill all the zombies without
harming any of your supplies. All of your supplies are marked with glow-in-the-dark
capital letters, so make sure not to destroy any of them. Anything not marked with
a capital letter is a zombie!

### requirements

- Create a file called `midnight-ambush.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print out the text contained in supply-cache.txt,
but with every character that is not a capital letter in the alphabet replaced
with a single space.


## Burn Baby Burn

You managed to save your supplies, but you realized that there are just too
many zombies for your community to handle. Luckily, you prepared for something
like this. You know that zombies are horrified of fire. All of your fire making
supplies are specially marked just for this kind of situation. You also have a
bunch of flammable objects around the camp that would be great for this! All
of your firemaking supplies are marked with a capital letter between A and P.
Flammable objects are all marked with either a number or a lowercase letter
between a and p. Gather all of these flammable objects and fire making supplies,
leaving nothing in their places.

### requirements

- Create a file called `burn-baby-burn.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print out the text contained in fire-supplies.txt,
but with all letters from A to P (case insensitive) and all numbers replaced
with a single space.


## Find Survivors

After the fire dies down, you see that all the zombies are gone. Your group
has to move, so you start searching a nearby town. The town has a moderate
amount of zombies wandering, but is mostly quiet. You notice some buildings
with messages written on the front. There may be other survivors hiding out
here, and it would be great if you could add some to the team.

### requirements

- Create a file called `find-survivors.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print the possible locations of all the survivors
in the abandoned-town directory. A location may contain survivors if a line
contains the following pattern:

    SAVE[anything, any amount]ME[some non-zero amount of !'s]

You should run your command on all files in abandoned-town.


## Stock Up (Bonus)

Your last encounter with the zombieeeees has consumed almost all of your
firemaking supplies and flammable objects. Fortunately, you have found a few
convenience stores in the abandoned town, which you can salvage. Being an
experienced and detail-oriented response strategist, you would like to tally
the total amount of FIREMAKING supplies and FLAMMABLE objects you found from
each location.

### requirements

- Create a file called `stock-up.sh` to hold your answer.

- Add a "shebang".

- Make the file executable.

- Running the script should print the amount of firemaking supplies and
flammable objects in each location, on separate lines.

- Firemaking supplies are lines with the __word__ "FIREMAKING" (case
__insensitive__, for no apparent reason). Flammable objects are lines with
the __word__ "FLAMMABLE" (all capital letters, for no apparent reason).

- A location is a file with the partial string "store" (all lowercase
letters) in the __file name__, in directory abandoned-town.

- Each line of the output should contain the file path and a single number.

### hints

- You might want to look into "regex inline modifiers".

- A line containing both FIREMAKING supplies and FLAMMABLE objects (or more
than one instances of these) just counts as one match.

- As with the other tasks, you can solve this with a single regular expression.

- `grep` has many flags.


