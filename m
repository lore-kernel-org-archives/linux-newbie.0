From: cr <cr@orcon.net.nz>
Subject: Re: ppp ain't talking
Date: Sun, 15 Jun 2003 00:05:56 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306141152.h5EBqlvc016877@dbmail-mx3.orcon.co.nz>
References: <200306140104.h5E144wo017689@pegasus.wanadoo.be> <5.1.0.14.1.20030613230654.0390ced0@celine> <200306140756.h5E7uENj010573@dbmail-mx1.orcon.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306140756.h5E7uENj010573@dbmail-mx1.orcon.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Sunday 15 June 2003 07:45, cr wrote:

> I see kppp in that list....
>
> I'll assume for the present that KPPP is now supported in Debian and carry
> on with my debugging efforts.
>
> Thanks
>
> cr

Success!   (This message sent from Debian).

(Apologies for not quoting the original message, I haven't imported 
the previous mailboxes yet).

I checked /var/log/messages as suggested and found that a program 
called  diald  seemed to have been remarkably active.   I don't use diald 
so eventually, having found no 'nice' way to stop it starting up, I just 
uninstalled it.   And KPPP immediately started working!

Many thanks for the help.

I have quite a few things still to resolve, such as  KPPP will only start if 
I type 'kppp' in a terminal window, not from the menu; but then there are 
several other programs that will work or not depending which menu I select 
them from. These look more like Debian-specific problems so I'll probably 
find a Debian list to ask about them.

Just in case it's of interest, here's a bit of /var/log/messages:

Jun 14 22:13:39 alti kernel: PPP: version 2.3.7 (demand dialling)
Jun 14 22:13:39 alti kernel: PPP line discipline registered.
Jun 14 22:13:39 alti kernel: registered device ppp0
Jun 14 22:13:39 alti pppd[418]: pppd 2.4.1 started by cr, uid 1000
Jun 14 22:13:39 alti pppd[418]: Using interface ppp0
Jun 14 22:13:39 alti pppd[418]: Connect: ppp0 <--> /dev/ttyS0
Jun 14 22:13:39 alti kernel: PPP BSD Compression module registered
Jun 14 22:13:40 alti kernel: PPP Deflate Compression module registered
Jun 14 22:13:40 alti pppd[418]: local  IP address 219.88.128.163
Jun 14 22:13:40 alti pppd[418]: remote IP address 210.55.12.202
Jun 14 22:13:40 alti pppd[418]: primary   DNS address 210.55.12.205
Jun 14 22:13:40 alti pppd[418]: secondary DNS address 210.55.12.1
Jun 14 22:13:40 alti diald[232]: Trigger: udp       192.168.0.1/1025     
210.55.12.205/53   
Jun 14 22:13:40 alti diald[232]: Calling site 192.168.0.2 
Jun 14 22:13:40 alti diald[232]: Device ttyS0 is locked by pid 414
Jun 14 22:13:40 alti diald[232]: No devices free to call out on.
Jun 14 22:13:40 alti diald[232]: Connect script failed.
Jun 14 22:13:40 alti diald[232]: Delaying 1 seconds before clear to dial.
Jun 14 22:13:43 alti diald[232]: Calling site 192.168.0.2 
Jun 14 22:13:43 alti diald[232]: Device ttyS0 is locked by pid 414
Jun 14 22:13:43 alti diald[232]: No devices free to call out on.
Jun 14 22:13:44 alti diald[232]: Connect script failed.
(snip)
Jun 14 22:15:35 alti diald[232]: Delaying 1 seconds before clear to dial.
Jun 14 22:15:37 alti diald[232]: Calling site 192.168.0.2 
Jun 14 22:15:37 alti diald[232]: Device ttyS0 is locked by pid 414
Jun 14 22:15:37 alti diald[232]: No devices free to call out on.
Jun 14 22:15:38 alti pppd[418]: Terminating on signal 15.
Jun 14 22:15:38 alti pppd[418]: Connection terminated.
Jun 14 22:15:38 alti pppd[418]: Connect time 2.0 minutes.
Jun 14 22:15:38 alti pppd[418]: Sent 346 bytes, received 424 bytes.
Jun 14 22:15:38 alti diald[232]: Connect script failed.
Jun 14 22:15:38 alti diald[232]: Delaying 1 seconds before clear to dial.
Jun 14 22:15:39 alti pppd[418]: Exit.
Jun 14 22:15:40 alti diald[232]: Calling site 192.168.0.2 
Jun 14 22:15:41 alti diald[232]: connector: sh: option `-c' requires an 
argument
Jun 14 22:15:41 alti diald[232]: Connect script failed.
Jun 14 22:15:42 alti diald[232]: Delaying 30 seconds before clear to dial.
Jun 14 22:16:13 alti diald[232]: Calling site 192.168.0.2 

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
