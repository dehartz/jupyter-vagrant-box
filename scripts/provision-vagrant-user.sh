#!/bin/bash

echo "Install pyenv"
touch ~/.bash_profile
grep -q -F "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" ~/.bash_profile || echo "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" >> ~/.bash_profile
echo "JAVA_HOME=/usr/lib/jvm/java-se-9-ri/jdk-9" >> ~/.jupyter_config.txt 
echo "PATH=/usr/lib/jvm/java-se-9-ri/jdk-9/bin" >> ~/.jupyter_config.txt
source ~/.bash_profile
grep -q -F "eval \"\$(pyenv init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv init -)\"" >> ~/.bash_profile
grep -q -F "eval \"\$(pyenv virtualenv-init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.bash_profile
curl -s -S -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
source ~/.bash_profile

echo "Install Python (Anaconda with Python 3)"
pyenv install anaconda3-5.1.0

echo "Activate Python"
cd /home/vagrant/data
pyenv local anaconda3-5.1.0

echo "Setup login directory"
echo "cd /home/vagrant/data/"  >> /home/vagrant/.bash_profile
echo "source ~/.bashrc"  >> /home/vagrant/.bash_profile
