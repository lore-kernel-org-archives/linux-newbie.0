From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: synchronising two machines
Date: 14 Apr 2003 13:07:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1050322056.1799.159.camel@zebra.vil.ite.mee.com>
References: <5.1.0.14.1.20030411081015.01ea54a8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030411081015.01ea54a8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks Ray, and everyone else who've made suggestions.

To answer your questions in summary, Ray: They need to be sync'd daily;
Yes, it really _is_ one way; They are new, fast machines with a GB LAN
between them. If syncing over night, they can give 100% of their
attention to the sync.

Let me offer a bit more information about the environment and purpose of
the machines:


We are an R&D lab. Much of the work we do (including the code that we
write) is on linux, but some of it is on windows. This means that some
people (most of them, in fact) need access to both Windows and Linux
functionality. For a number of reasons which I won't go into here, I
need to have MS workstations (for the most part) which then run an X
window emulator (in this case called XWin32) which allows the users to
connect to an appropriate server and run a remote desktop on that
server, using XDMCP connection.

Although we have a number of servers, all of which run linux, and all of
which _could_ be used as X desktop servers, what we actually do is
restrict _remote desktop_ access to just a few. People who then want to
run the various specialized software that is on other servers can do
this from their X desktop using text connections (telnet, rlogin etc),
or X programs sending to their remote display.

All of the user data is held on a raid array connected to a linux box
who's only job is to serve the user file systems to all the other
machines. All our other servers use AMD to mount things like /home from
the file server. We also use NIS for all the user authentication.

In other words, there is no [important] user data on the X servers -
it's all somewhere else.

What I want to achieve is to have a 'primary' X server and a 'secondary'
one. The users will use the primary unless they have a reason to use the
secondary (such as heavy loading or a crash). This is partly to provide
a better service for busy times with a kind of crude load balancing, but
mainly to give me a redundant backup in case of a failure of the primary
server.

I should also point out that this is the set up we already have, but I'm
replacing the old servers with new ones. The old ones, however, are not
sync'd in any way, so we have different versions of various things on
them both.

I want to get it so that I only need to manually update or modify the
'primary' server, and then a script (or something) will run once per
night which will replicate those updates to the secondary server. I have
considered getting some kind of auto-update going that will upgrade both
servers automatically, but I don't really want that happening without my
intervention; these are, after all, production servers.


I can deal with the main differences (IP, hostname), by using DHCP on
the servers (I have a DHCP server elsewhere anyhow to feed my laptops),
but that still leaves me the problem of how to mirror all the rest of
the stuff from one machine to the other securely.

I'm sure that I _can_ do it with rsync, but I don't want to open up
insecure root connections on the boxes. To be honest, I was hoping that
someone, somewhere, had already written something specifically for this
kind of update. I was also hoping that this thing that might have been
written would only update things which had changed since the last
update. If not, I'll just have to write some scripts to do it (for
instance using  "dump 1[other options] | restore [options]"). 

Any and all additional comments are, of course, gratefully received.

Thanks.

Paul.







On Fri, 2003-04-11 at 16:32, Ray Olszewski wrote:
> First, there are two distinct issues you need to address:
> 
> (1) Keeping "system" content in sync.
> (2) Keeping local content in sync.
> 
> (1) This part involves applying security patches and doing other updating 
> of the binaries your distro (Red Hat? I forget) supplies ... the equivalent 
> of Debian's "apt-get update/upgrade" system. For this part, since only two 
> hosts are involved, I would suggest not trying to sync in any automated 
> way. Just run your distro's updater on both machines at the same time. 
> Possibly set them up to use a Squid cache to avoid duplicate downloads. A 
> properly designed updating system should know enough to refrain from 
> replacing locally-edited config files with new default versions.
> 
> (2) The best approach here turns on three questions:
> 
> A. How closely do the two machines need to be sync'd? (How rapidly does the 
> served content change?) Would an overnight sync be enough, or do you need 
> minute-to-minute updates? Or somewhere (where?) in between?
> 
> B. Is the need to sync *really* 1-way, as you seem to be saying? Or is it 
> 2-way, as the "The idea is that if people find X1 is slow and busy they can 
> use X2" comment seems to imply? This interacts with #1, of course, the core 
> question being whether connected users themselves make changes that need to 
> be propagated to the other server.
> 
> C. How fast are the machines, including communication between them? How 
> much of their resources can they spend on synchronizing without 
> overburdening them?
> 
> Offhand, I'd say your choices are rsync or a custom script (run through 
> cron, say).  Using slogin (or scp) rather than rlogin would help address 
> the security concerns with automated root logins. But if you run the 
> updater on X2 (the slave), it only needs *read* access to root-owned files 
> on X1, so you should be able to login to X1 as a less-privileged user. Only 
> a few files (such as /etc/shadow) then present special problems, and they 
> might be best handles on a case-by-case basis.
> 
> But the real solution, I think, is to limit what the automatic updater does 
> so it updates only less-privileged files, rather than "almost everything". 
> Without a better understanding of what this server pair does, I can't 
> really suggest anything more specific.
> 
> At 10:04 AM 4/11/2003 +0100, Paul Furness wrote:
> >Hi.
> >
> >Can anyone suggest a reliable yet simple way of synchronising two
> >identical linux servers?
> >
> >I have a server (let's call it X1) which is serving desktops out to
> >multiple clients using XDMCP. I then have a second server with identical
> >hardware (X2) which does the same job. The idea is that if people find
> >X1 is slow and busy they can use X2, and also if X1 fails then X2 is
> >still there.
> >
> >I want to duplicate everything between the two machines except stuff
> >which has to be unique - network settings being the obvious. During
> >building, this is easy; I have built X1, and then connect the hard disk
> >from X2 into X1 and use dd to copy the image across. Then I put the disk
> >back in X2, boot up and change the network settings and hostname.
> >
> >However, how do I keep them in sync after that? Ideally, I want to be
> >able to apply updates to only one of them (say X1) and have it
> >automatically propogate those changes to X2.
> >
> >rsync is a possible answer, I know, but I have two issues there:
> >A. I want it to update everything _except_ a few selected files, and
> >B. I need to run it as root, so to use rsync I'd have to open up rlogin
> >to root, which I'd rather not do if possible.
> >
> >Anyone got any ideas about what I should look at?
> >
> >
> >Oh, as an aside I _don't_ want a cluster, and I'm not trying to create a
> >single "virtual server".
> 
> 
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
