From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 15:46:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211212046.gALKkTj04709@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com>
 <200211202236.gAKMaIK05653@hartford-hwp.com> <5.1.0.14.1.20021121103403.02116350@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021121103403.02116350@celine> (message from Ray
	Olszewski on Thu, 21 Nov 2002 10:48:10 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Thanks, Ray. I'm currently using a usre xterm in a root session, and
that's reduces functionality a lot. I've appended two BIG logs, and so
this message is long.

> >User still unable to start X. Root can do it, but not user. When user
> >tries, it reports not being able to load pex5 or xie. These modeles are
> >present and I've run ldconfig.
> 
> A permissions problem, perhaps. What mode are they?

-rwxr-xr-x    1 root     root       597369 Aug 13  2001 pex5.so
-rwxr-xr-x    1 root     root       600739 Aug 13  2001 xie.so
 
> This is truly puzzling. In what ways does your boot/init process change 
> user accounts? Really, I don't even know what to ask about here in the way 
> of clarifying info.

One thing occurs to me is that in fixing up the new user account so
that it became more useful, I may have introduced a problem. I'll
delete the account and recreate it, without any configuration, and see
if that new user can startx after a reboot.

> The /etc/services entry below is irrelevant. Check "netstat -l" to see if 
> your system has any Unix sockets open (try it when root is running X). This 
> could be a permissions problem with /tmp or one of the subdirectories X 
> uses there.

[root@hartford-hwp root]# netstat -l
...
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node Path
unix  2      [ ACC ]     STREAM     LISTENING     1693   /tmp/kd_sockV4
unix  2      [ ACC ]     STREAM     LISTENING     4144   /tmp/.fam_socket
unix  2      [ ACC ]     STREAM     LISTENING     5610   /tmp/esrv500-hartford-hwp.com
unix  2      [ ACC ]     STREAM     LISTENING     1741   /tmp/.font-unix/fs7100
unix  2      [ ACC ]     STREAM     LISTENING     4012   /tmp/orbit-root/orb-1732792302802937126
unix  2      [ ACC ]     STREAM     LISTENING     1566   /var/run/lprng
unix  2      [ ACC ]     STREAM     LISTENING     4024   /tmp/orbit-root/orb-168
16064821897049391
unix  2      [ ACC ]     STREAM     LISTENING     4039   /tmp/orbit-root/orb-197
9524709340985105
unix  2      [ ACC ]     STREAM     LISTENING     3750   /tmp/.X11-unix/X0
unix  2      [ ACC ]     STREAM     LISTENING     4049   /tmp/orbit-root/orb-201
51567211000179583
unix  2      [ ACC ]     STREAM     LISTENING     3795   /tmp/.ICE-unix/2420
unix  2      [ ACC ]     STREAM     LISTENING     4062   /tmp/orbit-root/orb-146
01016311435181003
unix  2      [ ACC ]     STREAM     LISTENING     4111   /tmp/orbit-root/orb-154
6300654498557070
unix  2      [ ACC ]     STREAM     LISTENING     4164   /tmp/orbit-root/orb-221
503281402458786
unix  2      [ ACC ]     STREAM     LISTENING     3844   /tmp/.sawfish-root/hart
ford-hwp.com:0.0
unix  2      [ ACC ]     STREAM     LISTENING     4184   /tmp/orbit-root/orb-309
750056199272599
unix  2      [ ACC ]     STREAM     LISTENING     5080   /tmp/orbit-root/orb-105
14381321916716163
unix  2      [ ACC ]     STREAM     LISTENING     1646   /dev/gpmctl

Well, this is what I've got, but don't know how to interpret it. They
all say "stream" (TC type), but one is nevertheless associated with
/tmp/.X11-unix/XO. 
 
> It is almost surely the socket failure, not the module failures, that cause 
> X not to start. So concentrate on troubleshooting this part first.
> 
> One final, long-shot thought ... how full is /tmp? It's just barely 
> possible that it is so full (space or inodes) that users cannot create 
> sockets but root can. If (as is often the case) you have /tmp on a separate 
> filesystem (partition), the chances of this problem occurring in isolation 
> are greater than if /tmp is part of a larger filesystem.

[root@hartford-hwp root]# df /tmp
Filesystem           1k-blocks      Used Available Use% Mounted on
/dev/sda10             1011928     17432    943092   2% /tmp

Yes, I know that's a big /tmp.

> 
> >In /etc/services I have: xdmcp as port 177
> >grep xdmcp /etc/services
> >returns 177/tcp and 177/udp
> >
> >I don't know how to debug the X server other than this.
> 
> If these guesses don't help, you need to let us look at complete log output 
> from a failure -AND- the corresponding log of a success.

I'll have to generate another bad log because the one's I've got are
workable. I don't see how to generate a failed xstart without exiting
from and thus loosing this message. Also, I don't want to send the
whole thing to the list. 

Haines

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
