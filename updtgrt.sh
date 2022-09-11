!/bin/bash
# Update and Upgrade
echo -e "About to start Update then Upgrade"
echo "Press ENTER to continue, CTRL+C to abort."
read input

sudo apt update -y; sudo apt upgrade -y; sudo apt dist-upgrade -y; sudo apt autoclean; sudo apt autoremove -y
