From: Ray Olszewski <ray@comarre.com>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 13:20:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021121130840.0215f2a0@celine>
References: <5.1.0.14.1.20021121103403.02116350@celine>
 <200211202236.gAKMaIK05653@hartford-hwp.com>
 <200211202236.gAKMaIK05653@hartford-hwp.com>
 <5.1.0.14.1.20021121103403.02116350@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211212046.gALKkTj04709@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

A couple of thoughts ...

At 03:46 PM 11/21/02 -0500, Haines Brown wrote:
>Thanks, Ray. I'm currently using a usre xterm in a root session, and
>that's reduces functionality a lot. I've appended two BIG logs, and so
>this message is long.

The copy that got here did not include any attachments or quoted text.

> > >User still unable to start X. Root can do it, but not user. When user
> > >tries, it reports not being able to load pex5 or xie. These modeles are
> > >present and I've run ldconfig.
> >
> > A permissions problem, perhaps. What mode are they?
>
>-rwxr-xr-x    1 root     root       597369 Aug 13  2001 pex5.so
>-rwxr-xr-x    1 root     root       600739 Aug 13  2001 xie.so

I still think this is not your key problem. When root starts X 
successfully, do these modules load (check the log)?
[...]
>[root@hartford-hwp root]# netstat -l
>...
>Active UNIX domain sockets (only servers)
>Proto RefCnt Flags       Type       State         I-Node Path
[...]
>unix 2      [ ACC ]     STREAM     LISTENING     1741   /tmp/.font-unix/fs7100
>[...]
>unix  2      [ ACC ]     STREAM     LISTENING     3750   /tmp/.X11-unix/X0
>[...]
>unix  2      [ ACC ]     STREAM     LISTENING     3795   /tmp/.ICE-unix/2420
>[...]
>unix 2      [ ACC 
>]     STREAM     LISTENING     3844   /tmp/.sawfish-root/hart
>ford-hwp.com:0.0
>
>Well, this is what I've got, but don't know how to interpret it. They
>all say "stream" (TC type), but one is nevertheless associated with
>/tmp/.X11-unix/XO.

X0, not XO (your X runs on DISPLAY 0). I left in the others that are 
probably relevant to X, and I don't know what the ones I deleted from the 
list were (except for the lpr-related one, assuming you run the lpd service).
[...]
> > One final, long-shot thought ... how full is /tmp?
[...[
>[root@hartford-hwp root]# df /tmp
>Filesystem           1k-blocks      Used Available Use% Mounted on
>/dev/sda10             1011928     17432    943092   2% /tmp
>
>Yes, I know that's a big /tmp.

Not by modern standards, with today's large hard disks. In any case, it is 
apparently not your problem (unless you have an inode shortage - what does 
"df -i /tmp" report about inode availability?).

So ... I'm left guessing. really. What does "ls -l /tmp/.*" tell you about 
permissions for .X11-unix?

Unless the complete failure log has something helpful, or the post-creation 
changes you make to a user account are significant, I'm stumped. Sorry.


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
