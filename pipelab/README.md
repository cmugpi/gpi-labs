# pipelab

It's midterm season at CMU and with the thought of studying for daunting tests
looming over your thoughts, you decide to make a wise decision(1) and play
some classic Super Mario Bros.

In fact, you've just finished the final boss fight with Bowser and Princess
Peach is about to be released when the game seems to glitch... You've managed
to unlock the secret hidden level!

"I'm still trapped, Mario, help!" cries Peach from in game. Eager to trounce
this level as handily as the others, you notice a green pipe has appeared
before you, and you jump right in.

```
         ,.-----.
        ( ____,.--_
         '`   O o _)
          C   __) |
          '-..^^^ /
         /     \\/
        (       ))
         `(_)*  *,              .----------------.
         |      //\             | || |        :::|
        /_.-'--'\\/             | || |        :::|
       '.__)                    |_||_|________;;;|
                                 | || |      :::|
                                 | || |      :::|
                                 | || |      :::|
                                 | || |      :::|
                                 | || |      :::|
                                 | || |      :::|
                                 | || |      :::|
_________________________________|_||_|______:::|__________
```

## goomba spam

As you emerge from the pipe, the requirements of the level become clear. Luigi,
ever prepared for the 21st century, has figured out a way for you to throw
koopa shells at your enemies... over email!

Luckily, he's already written a command line program(2) that will fire a shell
to each email address provided to it as an argument; all you need to do is feed
the addresses in. It's called `throw-shell.sh`.

Unfortunately, because Luigi put the program together hurriedly, the only way
the shells will all hit their targets is if you provide all the emails to it
*at once*. That is, you must only call `throw-shell.sh` once, with each email
as it's own argument.

You can find the emails at <https://www.cs.cmu.edu/~15131/f14/emails.txt>.

### logistics

- As we discussed in class, you should construct a one liner to beat this
  level.

- While you should play around with this one liner at the command prompt, once
  you've found the right one liner, you should transfer your answer to
  `destroy-all-goombas.sh` for submission to Autolab.

- Your program will be tested for correctness on Autolab with more emails.txt
  lists than just the one we give you here. When you look in
  `destroy-all-goombas.sh`, you'll notice some starter code that lets you pass
  in a URL as a command line argument. That is, you should invoke
  `destroy-all-goombas.sh` like this:

```shell
./destroy-all-goombas.sh https://www.cs.cmu.edu/~15131/f14/emails.txt
```

## collect the coins

The end to the secret level is in sight! Peach's character in game reappears to
encourage you on: "Hurry!" she shouts.

After defeating all those goombas, loads of coins shower onto the screen. To
finish off the level, you'll have to collect ALL the coins before they
disappear. A countdown appears on the screen and you think there's no way you'll
finish in time.

Enter Luigi to save the day again. He notices that all the coins are
conveniently named `COIN` and are littered throughout the level on various
`platform`s, among other things like `BOX`es, `PIPE`s, and `SHELL`s. All you
have to do is run `./collect` on each coin!

Collect works by writing `collected` into the file. Thus, only `COIN`s
will have their contents updated by your oneliner, and their contents will all
be `collected`. (Note: you should not be deleting any files in this oneliner.)

### logistics

- Again, you should compose a one liner to solve this.

- Craft your one liner at the command prompt, then transfer it to
  `collect-all-coins.sh`.

- You may assume that the `platforms/` directory will always be in the current
  directory relative to your oneliner when we test it.

- If you think you've messed up and want to reset the level, you can do so by
  running the `./reset-platforms.sh` script, or by unpacking the lab handout
  again.

## BONUS: scout the enemies

Now that you've had your fill of playing Mario, you should probably start
studying for that test tommorow - but nah. You figure it would be useful to
compile a list of all of the enemies someone might encounter while playing
mario.

Thankfully, there's a folder "LevelInfo", which for each level includes the
level setting, and the different enemies in that level.

You decide to output a sorted (ignoring case) list of all of the possible
enemies, without duplicates.

### logistics

- You should compose a one liner to solve this.

- Craft your one liner at the command prompt, then transfer it to
  `scout-the-enemies.sh`.

- You may assume that the `LevelInfo/` directory will always be in the current
  directory relative to your oneliner when we test it.

## autolab & handing in

As you collect the last coin, Peach's cage falls away, and the credits roll.
You've beaten the secret level!

Let's make sure everything's in order.

- We've included an autograder that you can run with `./driver/driver`.

- You can create your handin.zip file by running `make`.

- For debugging, `head -n 10` is a Unix filter that will filter its input down
  to the first 10 lines. Don't use it in your final answer, but it might help
  with debugging.

(1): For certain defintions of "wise."
(2): Nintendo game designers are all command line enthusiasts at heart. They
wanted to include this level in the actual game, but were forced to make it a
"secret" level in a last minute decision by the marketing department.
