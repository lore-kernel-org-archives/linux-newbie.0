From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: path Setting
Date: Sun, 13 Jul 2003 09:12:13 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307130912.13918.sotl155360@earthlink.net>
References: <200307121952.17152.sotl155360@earthlink.net> <5.1.0.14.1.20030712195144.02087a90@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030712195144.02087a90@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All & Thanks for the responses

Often simple sounding questions open complex cans of worms

In my initial thinking I believed that one could simply open the apporiate 
file edit the path statement anb be on one's way.

Alas that is not so. 
The files are no longer simple text files but complex program files.

So lets get to the real isue.

My root path is as follows:
/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin
    :/usr/local/sbin:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin

My user path is:
/usr//bin:/bin:/usr/bin::/usr/local/bin:/usr/X11R6/bin:/usr/games:/usr/lib/jdk-1.4.1_01/bin

Now to me the user path appears to have a few problems.
One being // instead of /, another being :: instead of :, and more important 
no qt3 path.

I attempted to edit the user path by:
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin
    :/usr/local/sbin:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin

but when I close the terminal and reopen the terminal to check the path has 
reurned to its original form.

Would some one please enlightnment me as to the corrrect procedure for 
changing this path.

PS: The above path statement comes from a MD 9.1 notebook. I have Md 9.1 also 
set up on a desktop for testing. It has the same user path errors (to me).

Thanks
Frank




On Saturday 12 July 2003 23:02, Ray Olszewski wrote:
> See below.
>
> At 10:21 PM 7/12/2003 -0400, Brian P. Bilbrey wrote:
> >On Sat, 2003-07-12 at 19:52, Frank Roberts - SOTL wrote:
> > > Hi All
> > >
> > > I know that part of the path statement is located in
> > > /home/<user/.bashrc and part is located in /root/.bashrc but I believe
> > > that there is another system location for another part of the path
> > > statement.
> >
> >Yep. When you login as ~user, you get ~user's path spec from ~/.bashrc,
> >that's true for the root user, too. That is, when you login as 'frank',
> >you never, ever source /root/bashrc.
> >
> >The system wide basis path is often (but not always) found in
> >/etc/profile.
> >
> > > I would appreciate it if some knowledgable person would enlightenment
> > > me as to the location of this third part.
> >
> >So, just to flog a dead horse, there is no third part. There is
> >/etc/profile, which is the basis, then any additional pathing should be
> >added through something like a
> >
> >export PATH=$PATH:/opt/foo:/usr/bar
> >
> >in ~/.bashrc, whether a normal or superuser.
>
> It's actually just a bit more tangled than this, Brian.
>
> At the systemwide level, you have:
>
> /etc/profile, the standard for sh and any sh-compatible shell (e.g., bash).
>
> /etc/bash.bashrc, another standard for bash.
>
> /etc/login.defs is actually used by login, not bash, but it can do some
> bash-like things.
>
> At the user (which Brian currectly associates with ~, not <) level, you
> have
>
> ~/.profile, the user-specific analog to /etc/profile
> ~/.bash_profile, an alternate name that may replace the above
> ~/.bashrc, the user-specifci analog to /etc/bash.bashrc
>
> The files in /root are red herrings, in that they are simply the
> user-specific file for userid root.
>
> The exact details of how this stuff works, and the exact names used for the
> files, vary a bit from one distro to another, so you'll have to check the
> docs specific to your setup to get it right. An additional complication is
> that which of these files runs when a shell is opened depends on whether
> the shell is the result of a login, an su, an su -, or a #!/bin/bash header
> in a shell script.
>
> It's messy.
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
