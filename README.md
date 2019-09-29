# jupyter-vagrant-box

This is a simple Vagrant virtual machine. It contains a setup for running Jupyter notebook with Python 3. The setup includes the [Anaconda Python distribution](https://www.anaconda.com/distribution/) which means a lot of data science packages like [NumPy](https://numpy.org), [pandas](https://pandas.pydata.org/), [matplotlib](https://matplotlib.org/), [Bokeh](https://bokeh.pydata.org/en/latest/) and many more are readily included in the setup. 

It also includes the [IJava](https://github.com/SpencerPark/IJava) java kernel for making Java jupyter notebooks.

### Prerequisites

You need the following installed on your computer:
- [Virtualbox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Usage

- Copy `Vagrantfile` and the `scripts` folder to the directory where your data science projects lives.
- Run the shell command `vagrant up` in the folder you copied the files to.
- Wait until the virtual machine is setup and ready. (nevermind the red colored output)
- Point your browser to [http://localhost:1337](http://localhost:1337)
- **Optional:** If you need to install additional Python packages (or do something similar) you can log into the virtual machine by calling `vagrant ssh`.

**That's it.** I hope this is useful for some people. Have fun!

### Todo

- Support for jupyter pdf conversion

### License
This repo is a fork of https://github.com/antonpirker/jupyter-vagrant-box.  All commits/code up to but not including commit 0b1bc4a26b5d59deab51ed5c41090afec3a41339 are licensed under the original owner's license(First license starting from the top in LICENSE file).  All commits/code from commit 0b1bc4a26b5d59deab51ed5c41090afec3a41339 onwards is licensed under my license(Second license starting from the top in LICENSE file).
