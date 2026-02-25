# RetroSoC Scratch
## What is it?
The RetroSoC Scratch repository is here for members of the RetroSoC team to upload any code they have been developing as personal projects and practice so that other members of the team can review and learn from eachother

## Usage Guide:
### Cloning the repository
To clone this repository, you want to ensure that you have VScode opened through WSL.
To do this, you can open ubuntu via the windows start / search menu and run the following command once it has finished loading:
`code .`

Once your WSL environment is open, you should be able to see all of your linux folders in the VScode explorer.
I highly reccoment creating a new folder for storing your git repositories in.
==It is also reccomended that you avoid using spaces in the names of your folders and files== as it can make it harder to locate them when using the command line.
Instead, use hyphens or underscores (-, _)

Inside of your git-repositories folder, make a new folder for this repository.
My file structure is as follows, but you can name your folders and files whatever you want as long as you change the following commands accordingly:

`> Git-Repos`
`   > RetroSoC Scratch`

Once you have created the folder you want the repository to be cloned to, right click on it and press copy path.
Now you can run the following command to clone the repository onto your system:

`git clone https://github.com/Sheffield-Chip-Design-Team/RetroSoC-Scratch.git <copied directory>`

Just as an example: here is what that command would look like for me:

`git clone https://github.com/Sheffield-Chip-Design-Team/RetroSoC-Scratch.git /home/aaiva/Git-Repos/RetroSoC/RetroSoC-Scratch`

Please note that your git config email ==MUST== be the same email attached to your github account in the RetroSoC Team, otherwise you will not be able to clone the repository.
To see your current set username and password, run:

`git config --list`

You should now have the repository on your system.

### Setting up your folder
In the repository, there should be a folder called "HDL-Skills" with different folders for each team member inside that.
If there is already a folder with your name, you do not need to do this step.
