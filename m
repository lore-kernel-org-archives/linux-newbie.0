From: James Miller <jamtat@mailsnare.net>
Subject: apt-get broken: exim connection?
Date: Wed, 9 Jun 2004 10:38:32 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406091023170.15997@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm surprised at not having gotten more feedback on the zip disk problem I
posted about yesterday:  seems like it should be a simple one, at least on
the surface.  Anyway, I'll continue to wait and think on that one.  But
now, another problem.

Debian Sid's package management system appears to have some major
dependency on exim.  I'm not sure why, but I seem to have broken apt-get
in trying to rid my system of exim.  You see, for sending email, I use
SMTP servers, so I could see no reason for having exim on my system.  When
I installed Debian Sid, it automatically installed exim as well and tried
to get me to configure it.  I never set it up, but tried to remove it
right away.  I partially succeeded in removing it, only to get it back
again when I installed Mutt (I use Mutt only for checking mail at certain
pop servers: I never compose or try to send mail using it).  I installed
Webmin today, since I was reading an article on its capabilities that made
it sound interesting.  While looking through Webmin, I noted the add and
remove users and groups features.  There, I saw reference to and exim
group - Debian-exim - and decided, in my attempt to get this uneeded
program off my system, I should delete it.  I also disabled exim from
starting when I boot the system (though I didn't reboot).  As a result,
when I now try to apt-get something, I get the error message
Need to get
0B/2654kB of archives.
After unpacking 6500kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Preconfiguring packages ...
dpkg: syntax error: unknown group `Debian-exim' in statusoverride file
E: Sub-process /usr/bin/dpkg returned an error code (2)
and, of course, nothing installs.  Thus, my question.  What do I need to
do to fix apt-get?  Just recreate the group Debian-exim (not sure what
propoerties/permissions this group had)?  Is there a way to get exim - and
any other sort of sendmail program - off my system, since I don't use
them?  Frankly, I think they only add a further layer of complication to a
system I'm already stretched to comprehend and administer.

Feedback on this new problem will be appreciated.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
