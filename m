From: Ray Olszewski <ray@comarre.com>
Subject: Re: apt-get broken: exim connection?
Date: Thu, 10 Jun 2004 10:39:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040609113721.01fbb948@celine>
References: <Pine.LNX.4.58.0406091023170.15997@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406091023170.15997@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Responses interspersed.

At 10:38 AM 6/9/2004 -0500, James Miller wrote:
>I'm surprised at not having gotten more feedback on the zip disk problem I
>posted about yesterday:  seems like it should be a simple one, at least on
>the surface.  Anyway, I'll continue to wait and think on that one.  But
>now, another problem.
>
>Debian Sid's package management system appears to have some major
>dependency on exim.  I'm not sure why, but I seem to have broken apt-get
>in trying to rid my system of exim.  You see, for sending email, I use
>SMTP servers, so I could see no reason for having exim on my system.

Local mail delivery. So, for example, crond can send e-mail to the userid 
of a cron job that fails. Other examples too, but you get the idea.

And yes, exim is part of the Debian base install, allowing ANY .deb package 
to assume that exim is present ... something fair to characterize as a 
"major dependency". Messing with the Debian base is asking for trouble ... 
in general, do it only if you have a compelling reason to change it, not 
just because you "see no reason" for it being the way it is.

>   When
>I installed Debian Sid, it automatically installed exim as well and tried
>to get me to configure it.  I never set it up, but tried to remove it
>right away.  I partially succeeded in removing it, only to get it back
>again when I installed Mutt (I use Mutt only for checking mail at certain
>pop servers: I never compose or try to send mail using it).

The mutt package probably depends on the exim package, so apt-get (or 
dselect or whatever you used to install mutt) reinstalled it. That's the 
way dependency management is supposed to work.

>   I installed
>Webmin today, since I was reading an article on its capabilities that made
>it sound interesting.  While looking through Webmin, I noted the add and
>remove users and groups features.  There, I saw reference to and exim
>group - Debian-exim - and decided, in my attempt to get this uneeded
>program off my system, I should delete it.

I cannot follow this part of what you wrote. (Although I routinely install 
and use Debian Sid, I don't use Webmin.) Is this a group that the webmin 
install creates? My Sid systems have no such group (in fact, I *think* the 
capital D departs from Debian install guidelines).

And am I even right in assuming that by "group" you mean an entry in 
/etc/group ?

>   I also disabled exim from
>starting when I boot the system (though I didn't reboot).  As a result,
>when I now try to apt-get something, I get the error message

Any particular "something"? Or do you mean you get this response 
(presumably the kB numbers vary, but the rest of it) with *any* package you 
try to install? And you've actually tested several unrelated packages?

Honestly, from what you wrote, I don't even know if "something" here refers 
to apt-get switches (install/remove/update/upgrade, and a few more) or the 
name of a package you try to apt-get install. This sort of ambiguity is why 
I keep saying that real, complete examples are better than paraphrases.

>Need to get
>0B/2654kB of archives.
>After unpacking 6500kB of additional disk space will be used.
>Do you want to continue? [Y/n] y
>Preconfiguring packages ...
>dpkg: syntax error: unknown group `Debian-exim' in statusoverride file
>E: Sub-process /usr/bin/dpkg returned an error code (2)
>and, of course, nothing installs.

This is not an "of course". Often (alas, not always), even if apt-get has a 
problem with some package, it will install others.

And is "statusoverride" a typo for "statoverride"? (Either your typo or the 
package's.)

>Thus, my question.  What do I need to
>do to fix apt-get?  Just recreate the group Debian-exim (not sure what
>propoerties/permissions this group had)?

If you know what package created this group, you can simply apt-get remove 
it, then apt-get install it. That should recreate the group properly. But 
groups -- that is, entries in /etc/group -- don't have "permissions", only 
names, GIDs, passwords, and user lists (for the details, "group" has a man 
page) ... so either you are being unclear about what Debian-exim is or I am 
minunderstanding you.

You might see what gid is associated with the exim executable, if you need 
a clue to the gid to use when restoring the /etc/group entry.

Assuming I guessed right above about the stat/status typo, you might see if 
you can correct the override setting with dpkg-statoverride (it has a man 
page for the details). Or, if this is the only entry in the file 
(/var/lib/dpkg/statoverride), you might just delete it (the line or the file).

Aside from that ... Sid is Debian unstable after all, and sometimes the 
installing versions of packages have transient incompatibilities. (I ran 
into one just yesterday, with console-tools, when doing a routine apt-get 
dist-upgrade.) So it is worth asking if you've done an apt-get 
update/upgrade (or dist-upgrade) in connection with this install. And if 
you've redone the update/upgrade since the problem occurred. (My 
console-tools problem was fixed this morning, for example.)

>Is there a way to get exim - and
>any other sort of sendmail program - off my system, since I don't use
>them?  Frankly, I think they only add a further layer of complication to a
>system I'm already stretched to comprehend and administer.

Not a good one. I wouldn't do it myself unless I were modifying the system 
in a way that involved no longer using the Debian package-management system 
for updates, ungrades, and installs. Every distro sticks you with some bits 
of overhead, and this is simply part of Debian's.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
