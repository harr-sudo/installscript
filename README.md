# Why

I got tired of having to manually install tools for each new build of kali so I wrote a quick script which pulls some of my most common tools. 


# Getting Started

This script is designed to be run on a fresh install of Kali. I have tested it on Kali 2022.4 VMWare.
See https://github.com/harr-sudo/installscript/blob/main/install.sh for full list of tools.   

# Features

- You will be asked to reset your password
- Your Kali user will be placed into the sudoers group to avoid having to enter a password prompt for each sudo command
- Read install.sh for a full list of what will be added
- This will take about 10 minutes to run

Note: The wifi tools are a bit iffy


# Oneliner:

```
sudo wget https://raw.githubusercontent.com/harr-sudo/installscript/main/install.sh && sudo chmod +x ./install.sh && sudo ./install.sh
```
