From: Ray Olszewski <ray@comarre.com>
Subject: Re: nfs mounted directories are inaccessible
Date: Thu, 30 Sep 2004 14:16:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040930133821.01fafe58@celine>
References: <415BEAAA.5020806@arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <415BEAAA.5020806@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:14 PM 9/30/2004 +0200, Andrew wrote:
>NFS server running Mandrake 10.0, client running Slackware 9.0.
>NFS server running Mandrake 9.0, client running Slackware 10.0.
>
>Both cases show the same problem: the remote directory is mounted, but any 
>attempt to access it on the client 'hangs', i.e. no response, cursor 
>blinks, no prompt, I have to switch to a new console to get anything done.
>
>I have tried both manual and automatic mounting. (Even though the mounting 
>itself does not seem to be the problem).
>
>The two servers also share these directories without any trouble.
>
>The only obvious (to me) point is that it only and always happens with a 
>Mdk server and Sw client. Can there be some kind of incompatibility?

Well ... of course there "can" be "some kind of incompatibility". But if 
there is, you'll find it in the details.

The most basic possibility is that Slackware expects NFS version 3 and 
Mandrake provides only version 2. If that is the case, the userspace app 
mountd (or rpc.mountd) on each server should have been invoked with the " 
--no-nfs-version 3" argument. If this is it, you'll need either to enable 
NFS3 support on the servers (which may require a kernel recompile, 
depending on whether they support NFS in the kernel or with a userapace app 
like rpc.nfsd) or change the clients so they use NFS2 (might be able to 
specify this in the mount commands on the client -- see what the ones now 
in use do, and try adding "-o vers=2", but I'm not sure if that will work 
-- or you might have to do a kernel recompile).

If you are using nfsd and mountd, rather than capabilites compiled into the 
kernel, then you can run both in debug mode (the man pages give the 
details). Doing so might let you see what the problem is.

If none of that helps, we'll probably need the details to say more. (I 
certainly will, anyway.)

Are you using the stock install kernels for these 4 
distro/versions?  Whether yes or no, what kernels are you using ("uname -a" 
normally tells this)?

What NFS-related processes are running on the 2 servers? Check with "ps 
ax". You should find something like this (Debian-Woody with a custom 2.4.17 
kernel) ...

   243 ?        SW     6:51 [nfsd]
   245 ?        SW     0:00 [rpciod]
   255 ?        S      0:00 /usr/sbin/rpc.mountd

... or perhaps like this (Debian-Sid with a custom 2.4.19)...

   390 ?        Ss     0:00 /usr/sbin/rpc.nfsd
   397 ?        S      0:00 /usr/sbin/rpc.mountd
  1732 ?        Ss     0:00 /sbin/portmap

(There should also be references to lockd, statd, and maybe quotad).

What is the relevant configfuration information?

         on the servers, contents of /etc/exports
         on the clients (including the servers when they act as clients) 
the actual mount commands or the entries in /etc/fstab (depending on how 
you are mounting).

How do you "attempt to access it"? Are you doing an ls, or opening a text 
file for reading, or touch'ing a file, or running an app, or ... what?

Are there any permissions differences that might matter? NFS is a bit 
sloppy in that it relies on matching the numeric userid between systems 
when determining permissions. So if Mandrake and Slackware don't use the 
same iderid numbers in /etc/passwd (thiiis is pretty standard for the 
system-level accounts but not perfectly so), it could be introducing some 
permissions problem.

That's about all I can think to ask ... but do include any other details 
that seem important to you if you need to post again.

BTW, the most up-to-date source for NFS info I could find quickly is

         http://nfs.sourceforge.net/

The NFS HowTo itself is now a couple of years old and doesn't seem to cover 
version 3 in any detail at all.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
