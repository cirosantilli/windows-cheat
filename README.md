# Windows Cheat

Windows information and cheatsheets for Linux users.

If a program or system also works on Linux, only differences from Linux will be noted.
Installation procedures are not here.

## Package manager

No official one, but non official ones cropping up.

### chocolatey

Install chocolatey:

    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

Website: <http://chocolatey.org/>

Package list: <http://chocolatey.org/packages>

Usage:

    cinst git

## PATH

To modify permanently:

    right click computer > advanced settings > advanced > environment variables

Most programs don't get put into path by default on install. Users must of course click on desktop shortcuts or init menu shortcuts.

Suggestion: create a `c:\bin` dir and symlink every executable into it

Also consider setting only the path for bash if you are only going to use a bash port for windows

## Windows explorer

### Open shell here

Do a Shift + right click on a folder to see this option

## Book

### Bullzip

PDF printer.

### WinDjView

DjVu reader.

### Ghostscript + sgview

View PS files.

Must install first Ghostscript, then sgview.

## Shell

### cmd.exe

Terminal emulator + bash-like language

Much worse than bash:

    set a=b
    echo %a%

Don't ever use it, just use bash from MinGW for example.

### PowerShell

Alternative to cmd.exe, comes with windows 7.

TODO why is it better than cmd.exe

## MinGW vs Cygwin

Both gives you POSIX Linux utilities such as `sh`, `ls`, `mkdir`, `make`

TODO which is better?

## GNU ports

### MinGW

Minimal gnu for windows.

Port of basic gnu tools to windows including:

-   all POSIX utilities.

-   GCC

-   bash. Just type bash inside a `cmd` terminal and your back in bash.

    It inherits the system path into its `$PATH` variable

    `$HOME` variable is not set by default. TODO how to set it?

    Forward slashes on paths are automatically converted to backslashes, so bash paths are portable! Try:

        ls /c

    Driver letter is given plain without the `:`

    Initialization files: TODO. You can modify the bash `PATH` variable only with those, without changing the system path. TODO check

    files with extensions in `PATHEXT` can be run without writing extension (by default for example, `a.exe` can be run as `./a`)

-   Vim. You must run `vim` from inside bash!

-    `ln -s` and `cp -s` create copies instead of symbolic links. TODO how to make symbolic links? `mklink` seems to be a `cmd.exe` built-in.

It does *not* include stuff like:

- man

Default installation does not put things on your windows PATH.

### cygwin

Includes MinGW, and much, much more, even beyond LSB utilities:

- POSIX compatibility API
- python
- Perl
- wget and cURL

Name origin: first developed by Cygnus Solutions, later acquired by Red hat. Open source.

Before installation you can configure what will be installed.

After configuration, the installer downloads dependencies one by one from the internet.

## Linux partitions

Read and write to/from Linux partitions

For the options, see: <http://www.howtogeek.com/112888/3-ways-to-access-your-linux-partitions-from-windows/>

## Git

Install: <http://git-scm.com/download/win>

To avoid typing the user/pass every time, setup ssh public key with: `ssh-keygen.exe`. This will create the private public pair in "$HOME"/.ssh/, then copy the public key and add it to your web interface

## Games

One of the few reasons for which you should use Windows: games, since no game company will ever bother porting for the 5% popularity systems!

### Pcsx2

Playstation 2 emulator

Seems to work well and have all basic features

Install: <http://pcsx2.net/download/releases/windows.html>
