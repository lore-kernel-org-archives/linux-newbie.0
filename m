From: Ray Olszewski <ray@comarre.com>
Subject: Re: changing (resetting) users passwords as "root"
Date: Mon, 23 Dec 2002 13:07:40 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021223125340.020bd470@celine>
References: <au7sp3$a6k$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <au7sp3$a6k$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:48 PM 12/23/02 -0500, Jamie Risk wrote:
>I'm a little confused about adding users on my linux box.
>The box was setup with nothing more than a root user and
>group.

When asking even general questions of this list, it helps to tell us a bit 
about your setup ... at least mention which Linux distro and version (e.g., 
Red Hat 8.0, Debian Woody, Slackware 3.5, BasicLinux) you are using. 
Include other pertinent info too ... though I admit it is hard for a 
beginner to know what is pertinent to any problem, it never *hurts* to 
mention the kernel version ("uname -a") you are using ... although it would 
not help with the problems you describe below.

>When I add users ("useradd") I'm thwarted by the "-p" option.

What do you mean by "thwarted"? What do you try to do and how does it fail?

I don't use "useradd" myself but from a quick read of the man page, it 
appears that you'd do something like

         useradd harry -p potter

working as root, of course.

>As "root", I don't know how to set a user's password.

As root, for an existing account, you simply enter (for example) "passwd 
harry". root does not need to know the old password to set a new one, and 
you should not be prompted for the old one. If you are, you are doing 
something wrong (or have a *very* oddball version of Linux), so in that 
case, post EXACTLY what you are doing and EXACTLY how it is failing.

>After I
>create the account (without using the useradd's "-p" option),
>how can set the password of the new user?
>
>I'm prompted for the old password, which I've no idea what it
>is.

You should be prompted for the old password ONLY if you are trying to 
change the current userid's own password (including changing root's 
password as root).

>I'm purposefully working with a fairly minimalist Linux
>distribution (i.e. no clever scripts provided to help with such).
>By doing this is turning out to be a terrific mechanism for
>inflicting rudimentary Unix admin lessons on myself.

That's fine, and this list will be a good place to get help (since we all 
use systems that have the "minimalist" set of commands, and only some of us 
use each of the many "advanced" configuration tools that are, usually, 
associated with particular distros).

One last thing ... if you have "useradd", you may also have "adduser". It's 
a slightly different user-setup program that prompts you for a password at 
the right time, and you may find it a bit more congenial that "useradd".


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
