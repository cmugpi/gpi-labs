# hauntlab

> Hooded Stranger:
>   "Hey! You there! In the lab coat!"
>
> You:
>   "Who, me?"
>
> Hooded Stranger:
>   "You look like someone I could call if there were something strange in my neighborhood."
>
> You:
>   "Uhh..."
>
> Hooded Stranger:
>   "How would you like to help me with a little paranormal problem of mine?"
>
> You:
>   "Hey now, I don't know about-"
>
> Hooded Stranger:
>   "I'll pay."
>
> You:
>   "I'll do it."


You discover the Hooded Stranger is actually just a nice old librarian. With
all the early Halloween decorations, your friendly neighborhood ghosts came
out early this year, and much like Punxsutawney Phil when he sees his shadow,
the ghosts were spooked when they discovered it was not, in fact, halloween,
and hid in the books of the local library. Your job is to help find them
and get them out.

Today, you'll be combining regular expressions and globs to help find ghosts in
the haunted library. Every problem can be solved with a single command. Good luck!

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


## Flashlight

You decide to pull out your preliminary ghost-finding tool: Your trusty flashlight.
You look around the library for any sign of ghosts.

### requirements

- Create a file called `flashlight.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print all locations that appear to have ghosts. A
location appears to have a ghost if the string 'ghosts' is contained somewhere
in it. You should search for ghosts in library/. Your output should contain the
filename only (Hint: try running `man grep` and look for a flag that does this).


## Ghost-Catcher 3000

Woah! That was a lot of ghosts! You were about to give up, call in the real
Ghostbusters, and risk losing it all to copyright lawyers, when you realize
you were actually just looking at the ghost story section of the library. Turns
out your flashlight won't be enough, and it's time to bring out the big guns: The
Ghost-Catcher 3000!

### requirements

- Create a file called `ghost-catcher-3000.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print all locations that have ghosts, but only
in books that don't end in ghosts, spooky, or horror. You should output a book title
if the string 'ghosts' is contained somewhere in its contents. You should search for
ghosts in library/. Your output should contain the filename only. (Hint: All books end
in one of spooky, horror, ghosts, mystery, history, action, romance, scifi, or magic)


## Ghost-Catcher-3001.sh

That's better! Or so you think. But wait - weren't there more ghosts than that? Maybe
you should cast a wider net and find some more sneaky ghosts. Time to bust out the
bigger guns: The Ghost-Catcher 3001!

### requirements

- Create a file called `ghost-catcher-3001.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print all locations that have ghosts, but only
in books that don't end in ghosts, spooky, or horror. You should output a book title
if the string 'ghosts', 'spooky', or 'horror' is contained somewhere in its contents. You
should search for ghosts in library/. Your output should contain the filename only.


## Find the Hidden

As the last ghost leaves the library, you start to relax - until you notice the
evil presence hasn't left the building. You've found all the ghosts, but
something's wrong! You must've missed some. On a hunch, you decide to
reinvestigate the spookier section of the library. Maybe you've run across some
smarter ghosts that hid themselves so well they've altered the books they hid in!

### requirements

- Create a file called `find-the-hidden.sh` to hold your answer.

- Add a "shebang" to make the file a script.

- Give the script executable permissions so it can be run.

- Running the script should print the names of all the books ending in spooky,
horror, or ghosts, that do NOT contain the words horror, spooky, or ghosts. You
should output a book title if the title contains horror, spooky, or ghosts, but
the contents do not. You should search for ghosts in library/. Your output should
contain the filename only. (Hint: To look for contents that DON'T have a pattern,
try first looking for the pattern, then flipping the resulting set of books)


### hints

Experiment with running some commands you think will work at the command line
first. Then, when you think you've got an answer that will work, transfer it to
your script.

Every answer must be solved with a single regular expression and a single glob!
