From: Ray Olszewski <ray@comarre.com>
Subject: Re: Samba issues
Date: Tue, 18 Mar 2003 18:01:38 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030318172545.01f02ad0@celine>
References: <5.1.0.14.1.20030317101346.01ef5e10@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030317201127.53747.qmail@web13405.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>, linux-newbie@vger.kernel.org

Thanks for the additional information. This is an interesting test, and I'd 
really like better to understand what is going on. A few thoughts ...

First, your "order of three times" calculation is inconsistent with the 
detail results you report here. The two actual differences are about 1.5 
and about 2 times ... not trivial, but not 3 times either.

Second, did you or your colleagues investigate whether the difference was 
specific to SMB or was more general? Are ftp transfers, for example, 
comparably different too? Or transfers using NFS mounts (if WinXP supports 
NFS mounts)? If so, I'd look to a NIC driver problem on the Linux side 
rather than an smbclient problem. (What NIC is in the dual-boot machine, 
BTW? Generally speaking, what is the client-side hardware?) Or possibly a 
DMA issue (see next item).

Third, could there be any filesystem issues on the client end? With a 
dual-boot system, either the Linux client is saving to a different 
partition (possibly even a different hard disk) or it is saving to a 
"foreign" filesystem type locally. This sounds farfetched to me, to be 
honest, but not completely silly. Even less silly ... do both client setups 
have DMA enabled on the hard drive or drives (I don't know how to check 
this with Windows, but with Linux you can check it with "hdparm /dev/hd?", 
replacing ? with the right drive designator)? RH disables DMA out of the 
box, and you have to enable it explicitly (some config-file setting on RH 
8.0; consult the Release Notes for the specifics if you need to do this.)

Fourth, are there any client-authentication differences between the two 
test setups?

Fifth, have you considered testing the alternative of using smbmount on the 
client (which requires appropriate support in the kernel) rather than 
smbclient? I'm inexperienced in using client-side Samba on Linux, so I 
don't know if there is a real performance difference between the two 
methods, but you might want to look into it. Since smbclient runs in 
userspace rather than kernelspace, I wonder if that introduces an inefficiency?

Finally, I'm assuming that you controlled the test so extraneous factors, 
like other traffic on the LAN and load on the server, can be disregarded. 
I'm also assuming that you controlled for order, so files were not being 
read from the server's drive in the Linux test but from its memory cache in 
the Windows test. Your messages read like you and your colelagues know what 
you are doing, so I include this thought just to be as thorough as I can.

To put your results in a bit of perspective, I just tried a large SMB 
transfer from a Linux/Samba server (Debian Sid) to a Win2K client (I don't 
have any Windows servers here so can't match your test setup even 
approximately). It was a single file of about 776 MB. Transfer took exactly 
two minutes, or about 52 Mbps (small b = bits), close to the best speed I 
typically see here on my 100 Mbps LAN for any single transfer. Your 
transfers, by comparison, were about 21.7 Mbps, 27.4 Mbps, 32.5 Mbps, and 
68.0 Mbps. All but the last is quite slow for a 100 Mbps LAN.

I hope some of these suggestions are useful to you. I would like to know 
the outcome of any further tests you do, since if there is a performance 
difference specific to Samba, it would be good to know about it.

At 12:11 PM 3/17/2003 -0800, Abhijit Vijay wrote:

>--- Ray Olszewski <ray@comarre.com> wrote:
> > At 10:07 AM 3/17/2003 -0800, Abhijit Vijay wrote:
> > >Hi All,
> > >
> > >I came to know from some of my labmates who did a
> > >performance test, that Linux Samba access is
> > >*significantly* slower (order of three times) than
> > >Windows SMB. Is there any reason why this could be
> > tru
> > >and can this problem be fixed at all?
> >
> > I can think of any number of reasons as to why it
> > *could* be true. Better
> > understanding, though, requires better information,
> > such as ...
> >
> > 1. What version of Windows versus what versions of
> > Linux and Samba?
>
>Client (Dual Boot):
>Linux
>- RedHat 8.0
>- kernel-2.4.18-26.8.0
>- samba-2.2.7-2
>- samba-client-2.2.7-2
>- mounted share read-write using smbfs
>
>Windows XP
>- Windows XP Professional SP1
>- Mapped network drive
>
>Server
>- Windows 2000 Server
>
> > 2. Are there any hardware differences between the
> > test servers? (For that
> > matter, is the comparisone even between servers and
> > not clients?) Any load
> > differences? Any LAN differences?
>
>We are comparing client access from Windows and Linux
>to a single Windows server.  The client is a dual boot
>system so all tests were run on the same hardware.
>
> > 3. What do you mean by "access" and "slower"? Does
> > it mean, for example,
> > that that actual bps speed of a file transfer
> > differs between the two
> > setups by a factor of three? Or that it takes 3
> > times as long to get a
> > listing of available hosts? Or are we even talking
> > about file access (and
> > not print queueing)?
>
>Copy files from Server to Client 402 MB
>(avg file size 58kB)
>Linux => 2.71 MB/sec
>WinXP => 3.42 MB/sec
>
>Copy file from Server to Client 0.99 GB
>(avg file size 86,630 kB)
>Linux => 4.06 MB/sec
>WinXP => 8.49 MB/sec
>
> > I don't notice a similar performance difference
> > here, but that's based just
> > on casual observation, not controlled tests. I'd be
> > interested in the
> > details of a controlled test, so please do follow up
> > with more information.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
