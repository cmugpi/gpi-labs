# Introduction

Ah, summer vacation! It's the perfect time to hit the beach and work on your
sandcastle skills.

## Instructions

Each problem has its own directory and instruction section. You will be writing
one Makefile per problem.

For some questions, there are more test cases on Autolab that you can't see. To
submit your work to Autolab, use `make`, and scp the handin.zip file to your
laptop to upload it to Autolab:

    # From Andrew:
    $ make

    # From your laptop
    $ scp ANDREWID@unix.andrew.cmu.edu:~/path/to/your/handin.zip .
    
### Hints

- You will need to set the `.PHONY` variable in each Makefile

- It isn't a shebang, but you'll need to do something similar to use bash with
  make
  
- Makefile recipe lines always start with a single TAB character, not spaces!  

## Copy Castle

You're all set to build your sandcastle, but there's a problem. You have no idea
what it should look like! While you wait for divine inspiration, go ahead and
copy your neighbor's sandcastle for practice.

### Requirements

- Modify the existing Makefile at `copy-castle/Makefile` to support two targets,
  `duplicate` and `clean`, where `duplicate` creates a copy of the `original`
  file, and `clean` deletes that copy

## Beat the Tides

For the first time in the history of history, waiting for divine inspiration has
caused divine inspiration to strike. You have a grand vision of a sandcastle
built from modular, swappable parts. 

But wait! How will you build this sandcastle when the tides keep randomly
knocking down portions of it?

If only there were some work-saving tool which could repair and update
sandcastles based on the previous results of building the sandcastle!

### Requirements

- Write a Makefile that uses bash as its SHELL language, including the following
  targets
  - `int1`, `fin1`, `clean`
- Where clean undoes the effect of making any other target, and the other
  targets produce the corresponding ASCII-art sandcastle in their respective
  file, using only `cat`, output redirection, and the other targets
- `make` with no arguments should build all targets except `clean`
  
### Sandcastles  

Sandcastles should contain no blank lines before or after. Note that all
sandcastles are composed of other sandcastles, and that each basic sandcastle
part contains a number 1-4 or S for `base{1..4}` or `sep`, respectively.

All intermediate sandcastles are composed only of base and sep sandcastles. All
final sandcastles are composed only of intermediate sandcastles.

int1:

    :o:-v
    :3:|
    :o:-v
    :S:
    :o:\\\--v
    ::::o\\\\
    :4:::::o|||--v
    ::::o////
    :o:///--v
    :S:
    :o:-v
    :3:|
    :o:-v

fin1:

    :o:\\
    :1::||-v
    :o://
    :o:-v
    :3:|
    :o:-v
    :S:
    :o:\\\--v
    ::::o\\\\
    :4:::::o|||--v
    ::::o////
    :o:///--v
    :S:
    :o:-v
    :3:|
    :o:-v
    :o:\\\\
    :2:o::|||-v
    :o:////


### Hint

Don't try to copy the above sandcastles directly. Build them up from the
`base{1..4}` and `sep` files.
