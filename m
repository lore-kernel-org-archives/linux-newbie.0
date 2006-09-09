From: Ray Olszewski <ray@comarre.com>
Subject: Re: Problems with AllegroCL & SETI
Date: Sat, 09 Sep 2006 14:06:13 -0700
Message-ID: <45032CC5.2090105@comarre.com>
References: <edtgdf$usd$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <edtgdf$usd$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I waited to reply in the hope that someone else, someone who could be 
more directly helpful, would post an answer. My comments below may help 
a little, at least.

Sandra McGrew wrote:
> I'm trying to clear up at least two things... 
> 
> 1st. What directory is AllegroCL located in???

This sort of thing is often distro-dependent. Since yours is 
(apparently, from #2) a Debian system, one way to check is by checking 
against the package database. If AllegroCL is the actual file name, then
	
	dpkg -S AllegroCL

Should work. I don't have it (AllegroCL) here on my system, so I can't 
check for you, but so you see how the command works, here's a different 
example:

	autovcr@firefly:~$ dpkg -S MainPause.png
	xine-ui: /usr/share/xine/skins/xinetic/MainPause.png

Another is to use "find", as in (do this as root if you can):

	find / -name *AllegroCL*

(you can omit the wildcard *s if you know that AllegroCL is the EXACT name).

Another is to use the locate database, if your system runs it:

	autovcr@firefly:~$ locate MainPause.png
	/usr/share/xine/skins/xinetic/MainPause.png

> 2nd. Everytime this Debian computer loads or unloads a package it tries to
> contact an alien server at berkley.edu... at some IP... it never can
> contact it... I've successfully pinged this server at the IP it's trying
> ftp to... I think that this computer does not have the correct permissions
> to gain access to the ftp server at berkley.edu... if I get an account
> there, how do I changed the string that this computer is sending to the
> berkley.edu server to authenticate with??? where is it located???

What do you mean by "loads or unloads"? Do you mean installs or removes 
(or updates) a Debian package? If so, I can't think of why the system 
would try to "contact an alien server" ... unless it is the one the 
system is set to use as a package repository. To see if that's it, check 
the contents of /etc/apt/sources.list (assuming your system uses apt for 
installs and removes).

If that is it, then the berkeley.edu server ought to be able to do 
anonymous ftp. The Debian mirrors list at 
http://www.debian.org/mirror/list does list "linux.csua.berkeley.edu" as 
a mirror for both ftp and http access, so that might be what you are 
using. If so, my desktop browers is having no trouble connecting to it 
via anonymous ftp (checking directories, even downloading a package by 
hand), so you might try a follow-up that says a bit more about why you 
think you are having an authentication problem.

If that's not it, you really do need to tell us a bit more. After all, 
how can you really expect any advice about how to get ftp access to some 
unnamed computer in the berkeley.edu domain from us, or from anyone? 
Instead, please try telling us:

	the name &/or IP address of the host in question
	how you are trying to access it (e.g., it is one of the sources used by 
apt in apt-get update, apt-get ungrade, and apt-get install commands)
	what actual message you are getting that indicates a problem, and 
*specifically* what the message responds to (the actual apt-get, or 
aptitude or whatever, command you issue)

And for your system:

	the output of "uname -a"
	the contents of /etc/apt/sources.list
	(if you know) what version of Debian it runs (e.g., Sid, Etch, Sarge, 
Woody)

Please don't paraphrase or summarize any of this ... quote the actual 
commands and the actual responses (masking ONLY true secrets like 
passwords).

>              I would apppreciate any help that you can give me...
>                    Most sincerley, 
>                                 Dan (nurse1@longviewcomm[removethis].net)
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
