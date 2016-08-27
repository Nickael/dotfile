# Getting started

### Prerequisites

To use this configuration correctly, you need to install this cli programms
**gcc**, **cmake**, **clang**, **python**, **pip**, **powerline**, **cpplint**, **php-cli**, **phpcs**, **nodejs**, **npm**, **jslint**
#### Getting [GCC](https://gcc.gnu.org/install/)

To make sure you do not have any problems using **auto-complete** for C/C++ you will need to install GCC and CMAKE, you will need to
**provide** some information inside the `.emacs` files.

```shell
$ sudo apt-get install -y gcc
```
or

```shell
# yum install gcc
```
[more information here](https://gcc.gnu.org/install/)

#### Geting cmake
```shell
$ sudo apt-get install -y cmake
```
or

```shell
# yum install cmake
```

[More information here](https://cmake.org/install/)

#### Getting and cpplint with pip pakage manager
To get a good result of C/C++ mode you will need the to install CPPLINT. Its C/C++ linter

First you will need to install Python. [Check it there](http://docs.python-guide.org/en/latest/starting/install/linux/)
Then install pip packagage manager [here](https://pip.pypa.io/en/stable/quickstart/)

You can now proceed to the installation of cpplint

```shell
$ sudo pip install --global cpplint
```
#### Getting PHP

To use emacs flymake-php linter, you will need to install PHPCS. I'm currently using PSR-2 normes but you can change is it please to you.

If you want to install it manually, may you have a good luck, check it [there](http://php.net/manual/fr/install.php) ^_^

else juste do (I'm using PHP5.6 by the way)

```shell
$ sudo apt-get update && sudo apt-get install -y php5-cli
```
or

```shell
# yum install php5-cli
```

Then

```shell
$ sudo apt-get install -y php-codesniffer
```

or

```shell
# yum install php-codesniffer
```

#### Install NodeJS - NPM and jslint

To use flymake-jslint for NodeJS or Javascript linter you will need to install these package named in the subtitles before.
Check your system requirement [there](https://nodejs.org/en/download/package-manager/)

Then install jslint globally

```shell
$ sudo npm install --global jslint
```

# Good to know

#### Getting powerline fonts

Make sure you change you shell default font to powerline fonts. [Get all of them here](https://github.com/powerline/fonts)

# Basic installation

## Via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Nickael/dotfile/master/install.sh)"
```

## Via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/Nickael/dotfile/master/install.sh -O -)"
```

# IMPORTANT

* You must not forget to add the c-headers path in the `.emacs` file
* Change these line ```shell
(setq login "rakoto_n")
(setq name "RAKOTONINDRINA Nickaël")
``` as your heart content I'm using this for my school.

# Good luck and enjoy
