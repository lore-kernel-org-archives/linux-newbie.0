From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 19:10:09 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211220010.gAM0A9b02546@hartford-hwp.com>
References: <5.1.0.14.1.20021121103403.02116350@celine>
 <200211202236.gAKMaIK05653@hartford-hwp.com>
 <200211202236.gAKMaIK05653@hartford-hwp.com>
 <5.1.0.14.1.20021121103403.02116350@celine> <5.1.0.14.1.20021121130840.0215f2a0@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021121130840.0215f2a0@celine> (message from Ray
	Olszewski on Thu, 21 Nov 2002 13:20:00 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Ray,

> At 03:46 PM 11/21/02 -0500, Haines Brown wrote:
> >Thanks, Ray. I'm currently using a usre xterm in a root session, and
> >that's reduces functionality a lot. I've appended two BIG logs, and so
> >this message is long.
> 
> The copy that got here did not include any attachments or quoted text.

Sprry. When I figured I could not append the logs, I forgot to edit
this first line. You should have the logs by now. 

Incidentally, I logged out of the new account, brought the machine
down, played with another HD for a while, plugged my old HD back in,
and booted to the new account. Now can't start X from it. 

> 
> > > >User still unable to start X. Root can do it, but not user. When user
> > > >tries, it reports not being able to load pex5 or xie. These modeles are
> > > >present and I've run ldconfig.
> > >
> > > A permissions problem, perhaps. What mode are they?
> >
> >-rwxr-xr-x    1 root     root       597369 Aug 13  2001 pex5.so
> >-rwxr-xr-x    1 root     root       600739 Aug 13  2001 xie.so
> 
> I still think this is not your key problem. When root starts X 
> successfully, do these modules load (check the log)?

?? I got a log when I initially tried to start from the user, but not
when I successfully started X as root. The former has

(II) LoadModule: "pex5"
(II) Loading /usr/X11R6/lib/modules/pex5.so
dlopen: /usr/X11R6/lib/modules/pex5.so: undefined symbol: PexExtensionInitPtr
(EE) Failed to load /usr/X11R6/lib/modules/pex5.so
(II) UnloadModule: "pex5"
(EE) Failed to load module "pex5" (loader failed, -1073743256)

etc. 

If pex is suppoed to show up when I'm running X as root, if I run
lsmod, there's no reference to it there, but I suspect I'm looking in
the wrong place. 

> Not by modern standards, with today's large hard disks. In any case, it is 
> apparently not your problem (unless you have an inode shortage - what does 
> "df -i /tmp" report about inode availability?).

[root@hartford-hwp root]# df -i /tmp
Filesystem            Inodes   IUsed   IFree IUse% Mounted on
/dev/sda10            128768     744  128024    1% /tmp

> So ... I'm left guessing. really. What does "ls -l /tmp/.*" tell you about 
> permissions for .X11-unix?

/tmp/.X11-unix:
total 0
srwxrwxrwx    1 root     root            0 Nov 21 18:53 X0

> Unless the complete failure log has something helpful, or the post-creation 
> changes you make to a user account are significant, I'm stumped. Sorry.

I certainly appreicate your effort. As I indeicated, this last new
user account I simplyi entered and exited, and it didn't cease to work
until after I had actually changed hard disks and back again. 

Haines 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
