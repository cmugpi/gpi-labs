# forcelab

> It is a period of civil war. Rebel spaceships, striking from a hidden base,
> have won their first victory against the evil Galactic Empire.
>
> During the battle, Rebel spies managed to steal secret plans to the Empire's
> ultimate weapon, the DEATH STAR, an armored space station with enough power to
> destroy an entire planet.
>
> Pursued by the Empire's sinister agents, Princess Leia races home aboard her
> starship, custodian of the stolen plans that can save her people and restore
> freedom to the galaxy....

The fate of the rebellion lies in the balance! For this lab, you'll be
introduced to "shell scripting." Secretly we've been teaching you shell
scripting this whole semester. Every command you run at the shell prompt is a
script waiting to emerge. Once we put those commands in a file, they become a
shell script.

To learn more about shell scripts, make sure you've read this week's reading.
Good luck, and may the force be with you!


## instructions

Each problem has its own instructions. You can check your work at any time with:

    $ driver/driver

For some questions, there are more test cases on Autolab that you can't see. To
submit your work to Autolab, use `make`, and scp the handin.zip file to your
laptop to upload it to Autolab:

    # From Andrew:
    $ make

    # From your laptop
    $ scp ANDREWID@unix.andrew.cmu.edu:~/path/to/your/handin.zip .


## message

> General Kenobi. Years ago, you served my father in the Clone Wars. Now he begs
> you to help him in his struggle against the Empire. I regret that I am unable
> to present my father's request to you in person, but my ship has fallen under
> attack and I'm afraid my mission to bring you to Alderaan has failed. I have
> placed information vital to the survival of the Rebellion into the memory
> systems of this R2 unit. My father will know how to retrieve it. You must see
> this droid safely delivered to him on Alderaan. This is our most desperate
> hour. Help me, Obi-Wan Kenobi. You're my only hope.

R2-D2 has just been given this message from Princess Leia. In preparation for
delivering it, he needs to put it in a script. This way when the time comes, he
can just run the script.

### requirements

- Create a file called `message.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print out the following text, verbatim, on it's own
  line:

Help me, Obi-Wan Kenobi. You're my only hope.


## reorganize

At the rebel base, they're gearing up for the mission that will swing the fight
in their favor. They've received intel in the form of images of the Death Star's
interior along wht text files readouts of it's power consumption.

Unfortunately, a junior officer fumbled things together: all the files are in
the same folder! What we need to do is separate the files into two folders: all
the images in one, and all the text files in another.

### requirements

- You should solve this problem by writing a script called `reorganize.sh`. Be
  sure to add a shebang and make it executable like before.

- You will only be handing in the **script** that reorganizes the files, **not** the
  reorganized files themselves. On Autolab, we will be testing you script
  against a number of different test cases; it should work for all our tests.

- In order to help you write, test, and debug your script, we've included one
  test case with the handout. By default, it's not loaded. To load the test
  case in the first place (or to reset the test case to it's initial state), run

      driver/load reorganize

  This test case sets up your working directory in exactly the same way it will
  be run on Autolab.

- You script should assume (and driver/load ensures) that the scrambled files
  are in the folder `intel`.

- Your script should ensure that all files with a `.jpg` extension end up in the
  `intel/images` folder. (Your script should create this folder.)

- Your script should ensure that all files with a `.log` extension end up in the
  `intel/logs` folder. (Your script should create this folder.)

- No image nor text files should be left in the `intel` folder. Every file
  should have been moved to either `intel/images` or `intel/logs`.

### hints

Experiment with running some commands you think will work at the command line
first. Then, when you think you've got an answer that will work, transfer it to
your script.


## flight prep

Luke Skywalker is prepping for the final battle. In order to pilot an X-wing
starfighter, he needs to be placed into the cockpit, and he needs R2-D2 to be
loaded into the astromech slot.

### requirements

- You should solve this problem by writing a script called  `flight-prep.sh`. Be
  sure to add a shebang and make it executable like before.

- In order to help you write, test, and debug your script, we've included a test
  case with the handout. By default, it's not loaded. To load the test case in
  the first place (or to reset the test case to it's initial state), run

      driver/load flight-prep

  This test case sets up your working directory in exactly the same way it will
  be run on Autolab.

- The files your script needs to manipulate will be in a folder called
  `flight-prep`.

- Your script needs to move the file called `Luke Skywalker` into
  `flight-prep/cockpit`. (This file and folder are created for you.)

- Your script needs to move the file called `R2-D2` into
  `flight-prep/astromech slot`. (This file and folder are created for you.)


## battle of yavin

> General Dodonna:
>   The battle station is heavily shielded and carries a firepower greater than
>   half the star fleet. Its defenses are designed around a direct, large-scale
>   assault. A small one-man fighter should be able to penetrate the outer
>   defense.
>
> Gold Leader:
>   Pardon me for asking, sir, but what good are snub fighters going to be
>   against that?
>
> General Dodonna:
>   Well, the Empire doesn't consider a small one-man fighter to be any threat,
>   or they'd have a tighter defense. An analysis of the plans provided by
>   Princess Leia has demonstrated a weakness in the battle station. But the
>   approach will not be easy. You are required to maneuver straight down this
>   trench and skim the surface to this point. The target area is only two
>   meters wide. It's a small thermal exhaust port, right below the main port.
>   The shaft leads directly to the reactor system. A precise hit will start a
>   chain reaction which should destroy the station. Only a precise hit will set
>   off a chain reaction. The shaft is ray-shielded, so you'll have to use
>   proton torpedoes.
>
> Wedge Antilles (Red 2):
>   That's impossible! Even for a computer.
>
> Luke:
>   It's not impossible. I used to bullseye womp rats in my T-16 back home,
>   they're not much bigger than two meters.
>
> General Dodonna:
>   Then man your ships. And may the Force be with you.


As the X-wing pilots climb into their ships, General Dodonna is readying his
systems to keep an eye on the fight from base. He has a roster of all pilots in
all squadrons.

Each squadron has a "leader", along with pilots "02" through "06". There are
some pilots (numbered "07" through "12") who are standing by in base. These are
the names of the squadrons:

- red
- gold
- blue
- gray

The general has a file for each pilot. For example, Luke Skywalker's file looks
like `red-05`: the squadron name and his number, separated by a hyphen. For the
squadron leaders, it would look like `red-leader`.

General Dodonna needs to organize the pilots into folders. Right now, they're
all in the `pilots` folder. He would like:

- the `red` and `gold` squadrons to be placed in `pilots/attack-force`, since
  they're leading the bomb runs, and for
- the `blue` and `gray` squadrons to be placed in `pilots/defense-force`, since
  they're in charge of covering for the attack force.

Pilots on standby should not be moved into either folder.

Additionally, the general needs to be able to communicate directly with the
leaders. So put each squadron leader into `pilots/leaders` instead (i.e., in
neither `attack-force` nor `defense-force`).

### requirements

- You should solve this problem by writing a script called `battle.sh`. Be sure
  to add a shebang and make it executable like before.

- In order to help you write, test, and debug your script, we've included a test
  case with the handout. By default, it's not loaded. To load the test case in
  the first place (or to reset the test case to it's initial state), run

      driver/load battle

  This test case sets up your working directory in exactly the same way it will
  be run on Autolab.

- All files and folders have been made for you. Just worry about putting them in
  the right places.

### hints

Experiment with running some commands you think will work at the command line
first. Then, when you think you've got an answer that will work, transfer it to
your script.

There are multiple ways to write a script for this problem. You can solve it in
as few as three commands, or use as many as five. If you're using more than
five, you should try to simplify your approach.



