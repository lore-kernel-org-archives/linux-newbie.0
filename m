From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: group
Date: Sat, 27 Dec 2003 00:32:48 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0312270019460.24014-100000@orthanc.lemmerling.net>
References: <3FEC9C39.60007@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FEC9C39.60007@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: dave <dave@dpomeroy.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 26 Dec 2003, dave wrote:

> I made a subdirectory called "everyone", "/home/everyone".  I want to 
> use this folder for sharing files from my windows clients as well as 
> myself.  I used chgrp to make the folders owner group everyone.  I added 
> the users to this group.  I changed the group permissions to rwx with 
> chmod.  When I reboot, the subdirectory reverts back to r-x.  My group 

This is probarly a mandrake-thingy.. Some googling tells me something
about the "mandrake security level" aka "msec level". 

You'll have to do some more digging on your mandrake-box yourself I
guess... ;)

Maybe as a "quick and dirty-fix", you could try to move the directory to
another place like for instance /  (/everyone).


> members cannot write to the directory.  I'm running Mandrake 9.2.  
> Another problem is when I start Konquerer as a file manager.  I enter 
> the root password and tell it to save the password.  the next time I 
> start Konquerer I have to enter the root password again.  I'm confused, 
> Does anyone have some light to shed on these issues?  Thanks in advance.

This also *could* have to do with the above; it's very easy to make a
mistake with an accidental "mouse-move". These kind of mistakes *as root*
aren't very funny... :(

Maybe it's just a way of letting you know/confirm you're running konquerer
as root.

But I don't use Konquerer either...


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
