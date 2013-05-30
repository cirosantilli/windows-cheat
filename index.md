windows survival cheats for linux users, in special programmers

if a program or system is multi-os, it shall not be put here but possibly on a linux repository or a repo of its own

# skype

install: <http://www.skype.com/en/download-skype/skype-for-windows/downloading/>

# pidgin

install: <http://www.pidgin.im/download/windows/>

# windows explorer

## open shell here

do a shift+rightclick on a folder to see this option

# bullzip

pdf printer

install: <http://www.bullzip.com/products/pdf/download.php>

# windjvu

djvu reader

# ghostscript + sgview

. ps viewer

must install both:

- <http://www.ghostscript.com/download/gsdnld.html>
- <http://pages.cs.wisc.edu/~ghost/index.htm>

# cmd.exe

terminal emulator + bash-like language

much worse than bash:

    set a=b
    echo %a%

don't ever use it, just use bash from mingw for example or powershell

# powershell

alternative to cmd.exe, comes with windows 7.

TODO why is it better than cmd.exe

# path

to modify permanently: right click computer > advanced settings > advanced > environment variables

notice the absolute noobiness!! =)

not to mention that most programs don't get put into path by default on install

suggestion: create a `c:\bin` dir and symlink every executable into it

also consider setting only the path for bash if you are only going to use a bash port for windows

# mingw

install: <http://sourceforge.net/projects/mingw/?source=dlp> 

port of basic gnu tools to windows including:

- gcc
- bash. Just type bash inside a `cmd` terminal and your back in bash.

    It inherits the system path into its `$PATH` variable

    `$HOME` variable is not set by default. TODO how to set it?

    Forward slashes on paths are automatically converted to backslashes, so bash paths are portable! Try:

        ls /c

    Driver letter is given plain without the `:`

    Initialization files: TODO. You can modify the bash `PATH` variable only with those, without changing the system path. TODO check

    files with extensions in `PATHEXT` can be run without writting extension (by default for example, `a.exe` can be run as `./a`)

- make
- vim. You must run `vim` from inside bash!
- cat
- grep
- ln. `ln -s` creates copies instead of symbolic links. TODO how to make symbolic links? `mklink` seems to be a `cmd.exe` built-in.

it does *not* include stuff like:

- man

## mingw vs cygin

we recommend mingw for less dependencies

it also ports many linux tools such as:

# read/write linux partitions

<http://www.howtogeek.com/112888/3-ways-to-access-your-linux-partitions-from-windows/>

# python

download: <http://www.python.org/getit/>

## install

install distribute + pip: <http://www.lfd.uci.edu/~gohlke/pythonlibs/#distribute>

first install distribute, then pip.

# git

install: <http://git-scm.com/download/win>

to avoid typing the user/pass every time, setup ssh public key with: `ssh-keygen.exe`. This will create the private public pair in "$HOME"/.ssh/, then copy the public key and add it to your web interface

