From: Ray Olszewski <ray@comarre.com>
Subject: Re: how to assess occupied space
Date: Sat, 14 Sep 2002 22:13:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020914220401.0227f0a0@celine>
References: <200209150354.g8F3sYPR007105@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209150354.g8F3sYPR007105@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Revobild / Heimo Claasen <revobild@revobild.net>, linux-newbie@vger.kernel.org

The command you want for checking directory sizes is "du". Its man page 
will teach you the details, but as a simple example, the command

         du -sh /home/*

will give you the amount of space being used by each home directory on the 
system.

In this context, your use of "package" is unclear.  A package is usually a 
portmanteau file that contains a set of related files, most often (putting 
aside source packages for the moment) an executable and associated stuff -- 
that is, a package is an .rpm, or .deb, or .tgz file. If that is what you 
mean, the more developed packaging systems have commands that tell you a 
lot about the package, including how much space it takes up when installed. 
For help with that, ask about whichever packaging system you use (or 
consult ithe man page for the package manager, if it has one).

But since a package typically installs stuff in several separate places 
(for example, an executable in /usr/bin, a man page somewhere else, 
possibly other documentation in /usr/share/doc, configuration stuff in 
/etc, and maybe boot/init stuff in /etc/init.d), there is no good way, at 
least not that I know of, to figure out how much space a package takes up 
by examining directories in the filesystem.

At , Revobild / Heimo Claasen wrote:
>Is there a practical way to get a sum-up of HD space occupied by one
>dir (including subdirs) and then, especially of a package ?
>
>I'd like to weed out never used stuff and recover scarce disk place.
>Is there a good, or any, "strategy" for this ?


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
