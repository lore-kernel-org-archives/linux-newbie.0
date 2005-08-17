From: Ray Olszewski <ray@comarre.com>
Subject: Re: recording a .wav file in a daemon.
Date: Wed, 17 Aug 2005 08:34:58 -0700
Message-ID: <43035922.7060509@comarre.com>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>  <200508130940.51347.pa3gcu@zeelandnet.nl>  <Pine.LNX.4.60.0508141137540.20130@lantana.cs.iitm.ernet.in> <4a618d08050814073217c78a5@mail.gmail.com> <Pine.LNX.4.60.0508162310410.29955@lantana.cs.iitm.ernet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0508162310410.29955@lantana.cs.iitm.ernet.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

P.Manohar wrote:
> 
> hai,
>    I am calling this below script( call it recording.scr) from a c 
> program using system() , this C program is written as a daemon, so that 
> it will run continuously and executes this script periodically.
>  When I run this daemon in any terminal it is recording continously.
> But when I run the same thing as original daemon like atd or sshd by 
> putting a script mydaemon in
> /etc/rc.d/init.d/mydaemon start
> This daemon is not recording.
> 
> Whether "brec" need a controlling terminal ?
> I am confused with this. Please suggest me if u can.
> 
> 
>  #!/bin/tcsh
> if($# != 1) then
>   echo "Argument  filename"
>   exit(-1)
> endif
> 
> echo "recording"
> brec -s 96000 -b 16 -t 1 -w /usr/loca/xyz.wav
> echo "recording over"
> 
> Thanks & Regrds,
> P.Manohar.

I can offer only a guess in reply. The guess is that you need to have 
the script call /usr/bin/brec (or whatever the path is) rather than 
brec. When you call the daemon from a terminal, the user's PATH variable 
fills in the blank. But when you run it as an init script, PATH is not 
set in the environment so it does not.

BTW, do you really use /usr/loca/ as a directory on your system, and not 
the more customary /usr/local/ ? Or is this some special directory 
specific to this purpose?

The script seems odd in some other ways too (what is the purpose of the 
requirement for a filename, for example), but they are hard to judge 
without seeing the source for the C wrapper daemon as well as the script 
itself.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
