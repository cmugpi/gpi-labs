# smashlab

LaTeX is going to be a very useful tool for you over the next 4 years. While you may not be *required* to use it just yet, upper level CS classes definitely will require you to typeset your homework. And if you start working on mastering the art of LaTeX now, you will end up saving a lot of time in future homework assignments and classes so you can focus solving problems instead of writing down your answers.

We've done all the set up you would need for your environment. The primary file is `main.tex` but you will complete each of the subtasks in the files beginning with a number following by a video game character, all of which are sourced within `main.tex`. We are also including a custom class file here called `plaid-homework.cls`. Class files let you define commands and customize how existing commands render. You can think of it like a "theme" for your document.

We hope you find the `.cls` file we included to be helpful. If you like it, take a look [Deepayan's GitHub repo](https://github.com/thepinetree/plaid-templates) for instructions on how to install it.

## Installation

If you don't have LaTeX installed locally, you can use [Overleaf](https://www.overleaf.com) to complete this lab. Create a new project by uploading the `smashlab-handout.zip` file from Autolab under the `New Project` tab, rename the project to `smashlab`, and everything will be set up for you. To submit, download the source files and the PDF and put them in a zip file named `handin.zip` (more instructions under **Handin** section below).

If you wish to do this lab on AFS, just pull the new version of our labs repo.

```
git pull
```

If you are interested in installing LaTeX locally, you can read over the instructions from [the GPI website](https://www.cs.cmu.edu/~07131/f20/topics/latex/getting-started/). Note that this can take a while depending on your internet connection. Remember that you will need to have cloned the repo we use to distribute the labs on your local machine, as well:

```
git clone https://github.com/cmugpi/gpi-labs.git
```

## Logistics

- Even though you will actually render `main.tex` and view `main.pdf`, you will complete all subtasks in the files beginning with a number followed by a video game character.

- Uncomment a task in `main.tex` to start working on it.

- Note that `06ness` is a bonus task and only for brownie points.

- We've included a PDF of the reference solution `sol.pdf`. Your output PDF should match this PDF (ignoring the watermarks).

- To compile your `main.tex` file on Overleaf, all you have to do is save the file and it will automatically recompile for you!

- To compile your `main.tex` file locally, you can run `make main.pdf`. You will need LaTeX installed locally for this to work.

- Makefiles can be finicky so if this doesn't work for you and you are working locally, you can use your preferred method of generating the PDF. This can be using LaTeX Workshop's build tools or by runing the following command in the folder that contains `main.tex`.

```
$ pdflatex main.tex
```

## Handin

- If you are working on Overleaf, download both the source and output PDF for your project. You can do this by going to the `Menu` tab. Unzip the downloaded source file, add your downloaded PDF to it, and put everything into a new zip file named `handin.zip` and submit it to Autolab.

```
$ unzip smashlab.zip -d handin
$ mv smashlab.pdf handin
$ zip -r handin.zip handin
```

- If you are working locally or on AFS, run `make handin` to generate `handin.zip` and submit it to Autolab. Again, you will need LaTeX installed locally for this to work on your machine.

- Note that your handins will be graded manually after the deadline, so Autolab will not give you any feedback.

## Resources

- Check out [Detexify](http://detexify.kirelabs.org/classify.html) if you don't know how to write a certain symbol.

- For instructions on how to make the gorgeous `plaid-homework.cls` class file a part of your own homework assignments (and life), check out [Deepayan's GitHub repo](https://github.com/thepinetree/plaid-templates).
