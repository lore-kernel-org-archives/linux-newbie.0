From: Ray Olszewski <ray@comarre.com>
Subject: Re: Intranet/Internet Email Server
Date: Tue, 17 Sep 2002 13:59:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020917133716.026d3570@celine>
References: <003a01c25e83$1380f3a0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003a01c25e83$1380f3a0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

Linux has several choices for MTA. The main ones are sendmail, exim, and 
qmail ... and there are probably others. Any will do parts of what you want 
to do, but I do not know if any of them can do all of what you want (like 
the virus scanning ... and sending mail from some users while blocking 
others should be possible,  but it is likely to take some work on your part 
to set up and maintain).

I don't run virus scanning here, but a quick Google search (search string 
"linux virus scanning") turns up a package called anavis 
(http://www.amavis.org//) that is supposed to interface the main MTAs to 
virus scanners. There is also a mini-FAQ at 
http://lavp.sourceforge.net/av-linux_e.txt . But you'd do better to wait 
for a response from someone else who is more current on virus-scanning 
capabilities.

As to system configuration ... whether you will see any noticable 
improvement depends on eaxctly what services the system is offering. A 
custom kernel (not kernal) will be smaller, but probably no faster. There 
is no reason actually to run X on a server, but leaving it installed but 
not running only takes up some filesystem space; it doesn't slow things 
down, and it is available in case a need for it arises.

To better assess this, we'd need to know a bit more about the setup, namely 
the CPU type and speed, and the amount of hard-disk space (I can't tell if 
"1.6ghz" refers to hard-disk size or CPU speed in your description -- for 
the uses you contemplate, it would be a fairly tiny hard disk). Any system 
will have some constraining resource, and so far, we don't know what that 
is on your server.

To assess for yourself how the system is performing, you want to use these 
tools:

         top     (lists the most active processes, and tells you what 
percent of CPU cycles is being used)
         free    (the second line tells you how much memory is really being 
used)
         df      (tells you how full your filesystem(s) is (are))

There are probably others too; this is a tip-of-the-tongue list.

Finally, to get a better general background than your questions indicate 
your having, a good place to turn is LinuxDoc (www.linuxdoc.org), where 
up-to-date versions of Linux HowTos, mini-HowTos, and other general guides 
are kept. You also want to get familiar with the man-page system (start 
with "man man") for help with specific Linux/Unix commands.

At 03:47 PM 9/17/02 -0400, Paul Kraus wrote:
>I want to setup intranet mail for 30+ users.  Now some of these users
>have InterNET email through our hosting company. If the mail is from
>them and to an outside address I want the server to pass the message to
>our mail server at the hosting company. If the message is from a user
>that we do not want to have interNET mail then I want the message
>bounced back to the user.
>
>Things that I would like but are not necessary.
>I would like to be able to have all incoming and outgoing mail scanned
>for virus. If this creates to much overhead then I would scrap this
>idea.
>
>I am not asking for step by step instructions but if you could help me
>out on what apps I would want to handle all of this that would be great.
>I have been reading a little on sendmail and I think that it can handle
>all off these things but I have not researched it enough yet.
>
>System
>-----------
>Red Hat 7.3
>1.6ghz
>256mb ram
>
>Other things i plan to run incase you where wondering
>----------
>Hylafax
>Squid
>
>* on a side not would recompiling the kernal to only have the exact
>options i need and not installing any x-windows create a system boost in
>performance. Would it even be noticable?





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
