From: Edgar Alwers <edgaralwers@gmx.de>
Subject: Re: File Management
Date: Wed, 18 Sep 2002 23:26:20 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209182326.20390.edgaralwers@gmx.de>
References: <00c301c25f48$62b94bf0$64fea8c0@pkrausxp> <0209181930260H.03392@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0209181930260H.03392@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Wednesday 18 September 2002 21:30, pa3gcu wrote:

> On Wednesday 18 September 2002 19:20, Paul Kraus wrote:
> > Obviously software is always better installed from source. This creates
> > binaries that are system specific. However this represents the problem
> > of software removal.

There is a little programm, installwatch, which seems to record exactly 
everything which was installed in an directory, and allows to remove 
completly in the case you want to uninstall:

Quote: (heavy shortened ! )
--------------------------------------

TITLE:		Using Installwatch as a Package Manager
LFS VERSION:	Any
AUTHOR:		Robert Park <feztaa@shaw.ca>

SYNOPSIS: 
	Use installwatch to keep track of what files got installed when you compiled
	something from source. Includes an easy method for removing those files,
	packaging those files up, and installing said packages.

HINT:


One big problem with LFS is that there is no package management system.  This
means that it is a *HUGE* pain in the butt to uninstall something, since there
is no record of what got installed where, and by what program.


Requirements
------------

You'll need to download installwatch, which you can get from one of these
locations:

http://asic-linux.com.mx/~izto/checkinstall/installwatch.html
http://proyectos.glo.org.mx/checkinstall/installwatch.html

If both these sites are down, try this one (but only as a last resort):

http://www.google.ca/search?hl=en&q=installwatch+izto+0.6.3&meta=

You'll also need my 'nuke' script, which is used for uninstalling software,
among other things. You can get that here:

http://members.shaw.ca/feztaa/projects/nuke

4. Using Installwatch.

Now I'm going to show you how to use installwatch to create the logfiles that
will be used by the nuke script.

When you are reading installation instructions for something, and you see 
"make install", you'll want to replace that with this:

##--CODE--##
installwatch -o /var/install/programname-version make install
##--CODE--##

5. Using Nuke.

The nuke script has many uses, the first and foremost of which is to
uninstall software by analyzing installwatch logfiles.

Uninstalling software is extremely easy with the nuke script, you simply give
it a logfile from /var/install, and it will remove the software from your
system, and then create a logfile in /var/uninstall telling you how the
uninstall went.
------------------------------------
unquote

This are hints from the project "Linux from the scratch", and I hope it will 
help you. Up to now, I have not used installwatch, but I am intending to do 
it.
Regards,
Edgar


-- 
--------------------------------
Dr.-Ing. Edgar Alwers
Mailto: edgaralwers@gmx.de
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
