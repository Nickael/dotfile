main() {
    if which tput >/dev/null 2>&1; then
        ncolors=$(tput colors)
    fi
    if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
        RED="$(tput setaf 1)"
        GREEN="$(tput setaf 2)"
        YELLOW="$(tput setaf 3)"
        BLUE="$(tput setaf 4)"
        BOLD="$(tput bold)"
        NORMAL="$(tput sgr0)"
    else
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        BOLD=""
        NORMAL=""
    fi

    set -e

    CHECK_ZSH_INSTALLED=$(grep /zsh$ /etc/shells | wc -l)
    if [ ! $CHECK_ZSH_INSTALLED -ge 1 ]; then
        printf "${YELLOW}Zsh is not installed!${NORMAL} Please install zsh first!\n"
        exit
    fi
    unset CHECK_ZSH_INSTALLED

    umask g-w,o-w
    printf "${BLUE}Cloning Oh My Zsh...${NORMAL}\n"

    # check if git is installed

    hash git >/dev/null 2>&1 || {
        echo "Error: git is not installed\n"
        exit 1
    }

    # Check if python is installed

    hash python  >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: python is not installed${NORMAL}\n"
        exit 1
    }

    # check if pip is installed

    hash pip >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: pip is not installed${NORMAL}\n"
        exit 1
    }

    # Check if gcc is installed

    hash gcc >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: gcc is not installed${NORMAL}\n"
        exit 1
    }

    # Check if cmake is installed

    hash cmake >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: cmake is not installed${NORMAL}\n"
        exit 1
    }

    # Check if clang is installed

    hash clang >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: clang is not installed${NORMAL}\n"
        exit 1
    }

    # Check if is installed

    hash cpplint  >/dev/null 2>&1 || {
        echo "${BOLD}${RED}Error: cpplint is not installed${NORMAL}\n"
        exit 1
    }

    # Cloning remote repository

    if [ "$OSTYPE" = cygwin ]; then
        if git --version | grep msysgit > /dev/null; then
            echo "Error: Windows/MSYS Git is not supported on Cygwin"
            echo "Error: Make sure the Cygwin git package is installed and is first on the path"
            exit 1
        fi
    fi
    env git clone --depth=1 https://github.com/Nickael/dotfile ~/.dotfile || {
        printf "Error: git clone of dofile repo failed\n"
        exit 1
    }

    # Check if dotfile already present
    if [ -d "~/.dotfile" ]; then
        printf "${YELLOW}You already have the dotfile  installed.${NORMAL}\n"
        printf "You'll need to remove ~/.dotfile if you want to re-install.\n"
        exit
    fi

    # Check if any emacs config was already installed

    if [ -d "~/.emacs.d" ] || [ -h "~/.emacs"]; then
        read -p "${BLUE}An existing emacs configuration already exist do you want to continue ?\n y or n" yn
        if [$yn != "y"]; then
            exit 1
        fi
        printf "${YELLOW}${BOLD}moving old configuration !${NORMAL}\n"
        mv ~/.emacs ~/.emacs.bak && mv -f ~/.emacs.d ~/.emacs.d.bak
        mv ~/.dotfile/.emacs ~/.emacs && mv -f ~/.dotfile/.emacs.d ~/.emacs.d
    fi


    ################################################################################################################################################################
    # powerline wide install
    ################################################################################################################################################################

    printf "\nLaunching emacs : \n"
    for i in {5..1}; do
        printf "."
        sleep 1
    done

    printf "\n"

    env emacs -nw
}

main
