sudo apt-get install apt-transport-https && sudo mkdir -p /usr/local/share/keyring/
sudo wget -O /usr/local/share/keyring/devkitpro-pub.gpg https://apt.devkitpro.org/devkitpro-pub.gpg && echo "deb [signed-by=/usr/local/share/keyring/devkitpro-pub.gpg] https://apt.devkitpro.org stable main" | sudo tee /etc/apt/sources.list.d/devkitpro.list
&& sudo apt-get update &&
sudo apt-get install devkitpro-pacman && sudo dkp-pacman -S switch-devЖ

