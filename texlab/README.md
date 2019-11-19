# texlab

LaTeX is going to be a very useful tool for you over the next 4 years. While
you may not be required to use it just yet, upper level CS requirements
definitely require it. It's better to start learning LaTeX early, so that you
can focus on solving problems instead of how to write down your answers.

We've done all the set up you would need for your environment. We are using a
custom class file here called homework.cls. Class files let you define commands
and customize how existing commands render. You can think of it like a "theme"
for your document.

We hope you find the .cls file we included to be helpful. If you like it,
visit [Jake's GitHub repo](https://github.com/jez/latex-homework-class) for
instructions on installing it. 

## I don't have LaTeX installed

If you don't have LaTeX installed, you can use https://www.overleaf.com/
to complete this lab. Create a new project by uploading the texlab-handout.zip
file, and everything will be set up for you. To submit, please download the PDF
and the tex file that you wrote and put them in a zip file named handin.zip.

If you are interested in installing LaTeX locally, you can read over the
instructions from the GPI website
[here](https://www.cs.cmu.edu/~07131/f19/topics/latex/getting-started/).

## induction

A very common approach to proving a statement is to use the
Principal of Mathematical Induction. We include a special environment for
writing proofs by induction in the homework.cls file. You'll want to use 
the commands `\begin{induction}` and `\end{induction}` defined in the homework
class file. Your task is to write an induction proof.

For an example of how to use the induction environment, take a look at the
sample in the [GPI GitHub latex-sample repo](https://github.com/cmugpi/latex-sample)

### logistics

- We've included a handwritten pdf, problems.pdf, with two induction proofs.
  Use the tools we provide in homework.cls to typeset this proof using LaTeX. 

- To compile your tex file, you can run `make`.

## autolab & handing in

- To create your handin, run `make handin` and submit handin.zip to autolab.

- Note that your handins will be graded manually after the deadline,
  so autolab will not give you any feedback.

## resources

- Check out detexify if you don't know how to write a certain symbol:
  http://detexify.kirelabs.org/classify.html 

- For examples using the homework.cls class file, check out the GPI
  GitHub repo here: https://github.com/cmugpi/latex-sample
