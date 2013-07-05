#my personal software collection

#if chocolatey installation procedure available, use it instead of manual one

##chocolatey

	@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

	cinst winrar
	cinst 7zip 
	cinst pandoc 

	cinst vlc 

	cinst Firefox 

	cinst filezilla 
	cinst dropbox 

	cinst skype
	cinst pidgin

	cinst libreoffice 

	cinst gimp 
	cinst InkScape 
	cinst imagemagick 

	cinst vim
	cinst git 
	cinst python 
	cinst pip 
	cinst ack 
	cinst cmake

	cinst curl 
	cinst wget 

	cinst LinkShellExtension 

##manual only

	#http://www.bullzip.com/products/pdf/download.php

	#ghoststcript + sgview:
	#http://www.ghostscript.com/download/gsdnld.html
	#http://pages.cs.wisc.edu/~ghost/index.htm

	#http://sourceforge.net/projects/mingw/?source=dlp
	#http://cygwin.com/setup.exe

##chocolatey does, but just in case chocolatey fails

	#http://www.skype.com/en/download-skype/skype-for-windows/downloading/

	#first install distribute, then pip:

		#http://www.lfd.uci.edu/~gohlke/pythonlibs/#distribute
