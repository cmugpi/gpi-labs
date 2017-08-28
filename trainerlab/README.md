# TrainerLab

Welcome to TrainerLab!

If you're SSH'd into the UNIX machines, make sure you

	cd ~/private

before doing anything else.

Make sure you've cloned the repo we use to distribute the labs:

	git clone https://github.com/cmugpi/gpi-labs.git

After cloning the repo, `cd` into TrainerLab and ask the professor what to
do:

	cd gpi-labs/trainerlab
	./professor

When you're done, mark all your changes as part of the next commit:

	git add -A

then actually commit the changes:

	git commit -m "Finish trainerlab"

Next, run:

	make

and you should see a new file called `handin.zip` appear.

If you're SSH'd into the UNIX machines, you'll need to get this `handin.zip`
off of the UNIX machines and onto your actual computer. You'll probably want to
use `scp` to do that. Run the following command from your local computer to 'securely copy' 
`handin.zip` from your UNIX machine to the Downloads folder on your local computer:

	scp andrew:~/private/gpi-labs/trainerlab/handin.zip ~/Downloads	

Once `handin.zip` is on your local computer, you'll be able to upload the zip
to Autolab using your browser.
