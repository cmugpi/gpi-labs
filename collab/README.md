# collab

This week's lab will teach you some more about Git. In particular, we're going
to see some rudimentary examples of:

- undoing changes[^1]
- resolving conflicts

These two problems are foundational to the reason why Git was invented in the
first place, and as such it has very powerful mechanisms to address them. The
first time you see them, though, they're kind of confusing.

This week's lab **also has a GitHub portion**. Please check out the instructions [**here**](https://www.cs.cmu.edu/~07131/f20/topics/readings/week-6/). **Each portion of today's lab will be weighted equally** (i.e. The autograded score and GitHub portion are each worth half of your overall collab grade).

## logistics

You should work on this lab on Andrew.

We've provided you a script that will _initialize_ or _reset_ the Git repo
you'll be working in:

    ./reset-repo.sh

After running this, you should see the `binsearch/` repo. You'll be doing all
your work in there.

When you're done, run

    make

in the top-level lab folder to create a `handin.zip`. Upload it to Autolab like
normal.


## undoing unstaged changes

Here's the situation:

- You were editing the file `search.py`.
- You made a change that you didn't want to make.
- You accidentally saved and quit the file!

What we'd like to do is get rid of that change, as if it never happened. Go!

(Note: you shouldn't commit anything for this step.)


## undoing staged changes

Here's another type of change we can undo:

- You added some documentation to the README.md file about how to use your
  program.
- You used `git add README.md` to staged the changes.
- You were right about to commit the changes, when you realized the
  documentation was wrong!

These three steps are simulated on the `binsearch` repo when you run
`./reset-repo.sh`.

We'd like to get rid of the change (so that we could hypothetically rewrite the
usage info from scratch). Go!

(Note: you shouldn't commit anything for this step.)


## conflicts

One of Git biggest features is that you can use "branches" to keep track of
multiple independent changes, and "merge" them together in the end. Sometimes,
however, these "independent" changes aren't as independent as we'd like them to
be. Namely, sometimes Git runs into "conflicts" when trying to merge two
branches.

We're going to simulate this so you can see how to resolve conflicts.

In the `./reset-repo.sh` script, a hypothetical collaborator has made a change
to rename some variables.

What you're going to do is three-fold.

### introducing conflicts

You're going to make a change that introduces a conflict. To introduce
conflicts, you should:

- Rename all instances of the variable `l` to `haystack`
- Commit your changes

### merging a branch

You're going to attempt to merge the other changes into your `master` branch,
and be greeted with "merge conflicts". To do this, run

    git merge jez-change-names
    git status

You'll note that both your branch and the other branch have changed the
`search.py` file. A conflicted file has sections that look like

    <<<<<<< Your changes
    the content on your branch
    =======
    the content on their branch
    >>>>>>> Their changes

### resolve the conflicts

Git keeps around the results of both changes, and presents them to you so you
can pick and choose the pieces you want to keep. So you have to:

- Make `search.py` have all the changes it should have (namely, include both the
  changes your branch and the other branch made)
- Remove all the `<<<<<<<`, `=======`, and `>>>>>>>` lines inserted by Git
- Add and commit `search.py` to mark the conflict resolved


__Hint__: try to figure out the "semantic" change made by the other branch. You
might want to check the output of this command:

    git show jez-change-names


[^1]:
  It's a well-known problem that Git does not present a standard interface
  around "undoing" changes. There are many ways to conceivably "undo" something
  in Git, and we're only going to see a couple of these.
