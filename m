From: Abhijit Vijay <abhijit_v@yahoo.com>
Subject: Re: Samba issues
Date: Mon, 17 Mar 2003 12:11:27 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030317201127.53747.qmail@web13405.mail.yahoo.com>
References: <5.1.0.14.1.20030317101346.01ef5e10@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030317101346.01ef5e10@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


--- Ray Olszewski <ray@comarre.com> wrote:
> At 10:07 AM 3/17/2003 -0800, Abhijit Vijay wrote:
> >Hi All,
> >
> >I came to know from some of my labmates who did a
> >performance test, that Linux Samba access is
> >*significantly* slower (order of three times) than
> >Windows SMB. Is there any reason why this could be
> tru
> >and can this problem be fixed at all?
> 
> I can think of any number of reasons as to why it
> *could* be true. Better 
> understanding, though, requires better information,
> such as ...
> 
> 1. What version of Windows versus what versions of
> Linux and Samba?

Client (Dual Boot):
Linux 
- RedHat 8.0
- kernel-2.4.18-26.8.0
- samba-2.2.7-2
- samba-client-2.2.7-2
- mounted share read-write using smbfs

Windows XP
- Windows XP Professional SP1
- Mapped network drive

Server
- Windows 2000 Server

> 2. Are there any hardware differences between the
> test servers? (For that 
> matter, is the comparisone even between servers and
> not clients?) Any load 
> differences? Any LAN differences?

We are comparing client access from Windows and Linux
to a single Windows server.  The client is a dual boot
system so all tests were run on the same hardware.
 
> 3. What do you mean by "access" and "slower"? Does
> it mean, for example, 
> that that actual bps speed of a file transfer
> differs between the two 
> setups by a factor of three? Or that it takes 3
> times as long to get a 
> listing of available hosts? Or are we even talking
> about file access (and 
> not print queueing)?

Copy files from Server to Client 402 MB 
(avg file size 58kB)
Linux => 2.71 MB/sec
WinXP => 3.42 MB/sec

Copy file from Server to Client 0.99 GB 
(avg file size 86,630 kB)
Linux => 4.06 MB/sec
WinXP => 8.49 MB/sec

> I don't notice a similar performance difference
> here, but that's based just 
> on casual observation, not controlled tests. I'd be
> interested in the 
> details of a controlled test, so please do follow up
> with more information.
> 
> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs


__________________________________________________
Do you Yahoo!?
Yahoo! Platinum - Watch CBS' NCAA March Madness, live on your desktop!
http://platinum.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
