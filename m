From: Ray Olszewski <ray@comarre.com>
Subject: BasicLinux (was:Re: running prog on start up)
Date: Wed, 18 Sep 2002 08:43:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020918082509.024cc020@celine>
References: <F29WEEREhKlIKQcFWqX00008337@hotmail.com>
 <F29WEEREhKlIKQcFWqX00008337@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0209181147550F.03392@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:47 AM 9/18/02 +0000, pa3gcu wrote:
>On Wednesday 18 September 2002 06:14, a a wrote:
> > Hello,
> > I've written a program in c and want to run it as soon as BasicLinux boots
> > up...
> > the program is in /cr09 and i run the program using ./serialport
> >
> > is there a startup stript that i can edit? what will i need to change?
> >
> > thanks again
> >
>
>I have no knowlage of Basiclinux, however most all distro's have a file
>called rc.local which is mostly located under /etc/rc.d
>That file is the last file to be called in the boot chian, so thats the place
>to place commands to start local stuff.

I took a moment to look at the BasicLinux home page. Three things of interest:

1. It is a mini-distribution derived from Slackware 3.5. This puts you 
(Richard) in  a better position than some of the rest of us (me, at least) 
to address configuration issues, as they should mostly follow the Slackware 
model. (So your advice above is probably right on target for this user.)

2. It can be either a boot-from-floppy or a boot-from-harddisk-by-loadlin 
setup, loading to and running from a RAMdisk. (May work other ways too; I 
didn't read all the docs.) Worth remembering so we take account of the 
usual kinks this approach presents.

3. The home page (http://www.ibiblio.org/pub/linux/distributions/baslinux/) 
refers new users to this list as a source of advice. So we will probably 
see BasicLinux questions coming up regularly.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
