From: Ray Olszewski <ray@comarre.com>
Subject: Re: Install location(s)
Date: Mon, 08 Apr 2002 13:10:32 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020408201032.00f4d420@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Christoph <christoph23@charter.net>, linux-newbie@vger.kernel.org

<sigh> Not only is this not a stuipd question ... it isn't really even a
very asy one to answer. I'll take a broad-brush shot at it.

Generally speaking, good Linux/Unix practice is for the OS packager to put
core apps in /bin and /sbin, and less core ones in /usr/bin and /usr/sbin
(with bin versus sbin separating packages normally used by ordinary users
and normally user by the superuser). Similar good practice for apps added by
the sysadmin is to put them in /usr/local/bin and /use/local/sbin .

What makes it messy is that the distinction between apps added by the OS and
ones added by the sysadmin is at best fuzzy. When I install Samba on a
Debian host, I use the Debian packages for Samba, and they install them
wherever they think appropriate (probably in /usr/bin, but I didn't actually
check). Similarly, I'm sure RH has a set of rpm packages that will install
Samba for you.

In practice, the real distinction these days is probably between apps
managed by the distro's package manager (rpm for Red Hat and a lot of
others; dpkg and apt for Debian; I'm not sure what others are still around)
and apps installed outside that package manager. I'd put the latter ones in
/usr/local/bin and /use/local/sbin .

Theer are other things that can make this messy. A different set of Unix
conventions (ones not usually used in Linux) call for putting
locally-installed packages in /opt . And Debian (and perhaps others) use
/etc/alternatives as a place to manage symlinks for some apps (for example,
which of the many real editors gets run as "vi" on any specific system).

In practice, I'd suggest you deal with your immediate problem -- installing
Samba -- by installing the appropriate RPM binaries.

At 02:29 PM 4/8/02 -0500, Christoph wrote:
>Apologies if this is a stupid question.  And apologies for all
>the stupid questions that are sure to come from me in the
>weeks to follow. :p  I take heart that since this is a newbie
>list, I'm sure that you guys have fielded plenty.
>
>In any case, my question:  where should you typically install
>new software?  For example, I'm getting ready to look into
>and install Samba on my Linux (RH 7.2) box.  I've DL'd it
>already and have been reading the documentation but have
>yet to make and install it.  So, where should it (and anything
>else I plan to install) go to make it easier to manage and
>administer?



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
