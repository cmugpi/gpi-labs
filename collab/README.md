# collab

This week's lab will teach you some more about Git. In particular, we are going
to see some rudimentary examples of:

- undoing changes[^1]
- resolving conflicts

These two problems are foundational to the reason why Git was invented in the
first place, and as such it has very powerful mechanisms to address them. The
first time you see them, though, they're kind of confusing.

This week's lab **has a GitHub portion**.

For the GitHub portion of this assignment, you will get practice with forking a
GitHub repo and making a pull request. The repo you will be working with is the
[git-practice](https://github.com/cmugpi/git-practice) repo. Do the following:

- Submit your GitHub username to [this](https://forms.gle/Y7vUotDhVoNDKUqi8) form
- Sign in to your Github account and visit
  <https://github.com/cmugpi/git-practice>.
- Fork the git-practice repo.
- Clone your fork of the git-practice repo.
- On a new branch (named what you want), edit the files of the repo so that you
  fill in an appetizer, main course, and dessert.
- Commit your changes and push them to your fork.
- Make a pull request to cmugpi's git-practice repo. For the title of your pull
  request, put your Andrew ID.

**Each portion of today's lab will be weighted equally** (i.e. The
autograded score and GitHub portion are each worth half of your
overall collab grade).

## logistics

You should work on this lab on Andrew.

We have provided you a script that will _initialize_ or _reset_ the Git repo
you will be working in:

    ./reset-repo.sh

After running this, you should see the `binsearch/` repo. You will be doing all
your work in there.

When you are done, run

    make

in the top-level lab folder to create a `handin.zip`. Upload it to Autolab.


## undoing unstaged changes

Here is the situation:

- You were editing the file `search.py`.
- You made a change that you did not want to make.
- You accidentally saved and quit the file!

What we would like to do is get rid of that change, as if it never happened. Go!

(Note: you should not commit anything for this step.)


## undoing staged changes

Here is another type of change we can undo:

- You added some documentation to the README.md file about how to use your
  program.
- You used `git add README.md` to staged the changes.
- You were right about to commit the changes, when you realized the
  documentation was wrong!

These three steps are simulated on the `binsearch` repo when you run
`./reset-repo.sh`.

We would like to get rid of the change (so that we could hypothetically rewrite the
usage info from scratch). Go!

(Note: you should not commit anything for this step.)


## conflicts

One of Git biggest features is that you can use "branches" to keep track of
multiple independent changes, and "merge" them together in the end. Sometimes,
however, these "independent" changes are not as independent as we would like them to
be. Namely, sometimes Git runs into "conflicts" when trying to merge two
branches.

We are going to simulate this so you can see how to resolve conflicts.

In the `./reset-repo.sh` script, a hypothetical collaborator has made a change
to rename some variables.

What you are going to do is three-fold.

### introducing conflicts

You are going to make a change that introduces a conflict. To introduce
conflicts, you should:

- Rename all instances of the variable `l` to `haystack`
- Commit your changes

### merging a branch

You are going to attempt to merge the other changes into your `master` branch,
and be greeted with "merge conflicts". To do this, run

    git merge jez-change-names
    git status

You will note that both your branch and the other branch have changed the
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
  It is a well-known problem that Git does not present a standard interface
  around "undoing" changes. There are many ways to conceivably "undo" something
  in Git, and we are only going to see a couple of these.
