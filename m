From: Ray Olszewski <ray@comarre.com>
Subject: Re: Slackware 9.1 Kinks
Date: Mon, 29 Dec 2003 17:15:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031229165243.01f9d3c0@celine>
References: <200312300044.hBU0iSI02062@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312300044.hBU0iSI02062@skyinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 08:44 AM 12/30/2003 +0800, Peter wrote:
>Hi,
>
>After having quite a few problems installing RH9 I tried my hand on Slackware
>9.1 where two problems I am unable to solve.
>
>One is just an annoying one, that I as a user can't mount /mnt/cdrom. No
>matter what setting I put in fstab and for /dev/hdb it will not let me mount
>it. I copied all the settings I have in RH7.3, to no avail.
>
>Question: how does one make SW9.1 to let a user mount /mnt/cdrom?

What errors are you getting when you try?

Is one of the choices you tried in /etc/fstab ...

/dev/cdrom      /cdrom          iso9660 defaults,ro,user,noauto         0  0

... where /dev/cdrom is a symlink to /dev/hdb ? What happens with it?

Are the permissions correct on /bin/mount ? From one of my systems:

-rwsr-xr-x    1 root     root        76792 May 21  2003 /bin/mount

(Note that the suid bit is set.)

I assume you have checked and that root *can* mount the CD(s) you are 
testing with.

>The second problem is more serious, I can't apparently enter the Internet
>neither with ppp-go nor with kppp. It dials up, connects and then nothing
>happens it just sits. Ping gives 100% package loss.
>
>Below is the message I get using ppp-go which shows that I have logged-in. I
>terminated the connection with ppp-off after 3 minutes of nothing doing. In
>the kernel ppp is set to yes. I have made several attempts, they all give the
>same log.
>
>Where would the problem be? What other info is needed?

The log you quote below appears to show a successful connection, one that 
stays active until you end it after about 3 minutes . It's a bit odd that 
there is no info about authentication, but perhaps you edited that out to 
preserve your password? And I'm assuming you edited the dialup number too. 
Since ppp is set to time out after a minute of inactivity, the fact that it 
stays active for 3 minutes implies that it thinks it is seeing traffic (and 
what are those "Sent 3259 bytes, received 2358 bytes" numbers referring to?).

Are the assigned IP addresses reasonable for your setup? (I don't know if 
you are getting them from the ppp link, the usual method, or assigning them 
locally.)

After the link is established, does your routing table make sense? 
("netstat -nr" or "ip -s route show", depending on what you have).

Where are you trying to ping and what is the EXACT response you get? You 
should be testing ping systematically, trying, in order --
         localhost
         your end of the ppp link (203.78.106.49 in the example below)
         the far end of the ppp link (203.78.97.133 in the example below)
         your default gateway (assigned by ppp, normally; get it from your 
routing table)
         your DNS servers (ppp may assign them, or you might have put them 
in /etc/resolv.conf by hand)
         someplace on the Internet (comarre.com responds to pings, if you like)

Do these all by address except for the last (which tests at the right point 
if your DNS is resolving).

You should consider the possibility that your ISP blocks ping traffic (not 
so common any more, but I ran into this a lot a few years back) and test 
with some easy service like http (try with "wget" if you don't have a 
browser on the system) as well, or do traceroute.

>Thanks & regards
>
>Dec 28 13:41:33 Skyinet pppd[2000]: pppd 2.4.1 started by root, uid 0
>Dec 28 13:41:34 Skyinet chat[2002]: timeout set to 60 seconds
>Dec 28 13:41:34 Skyinet chat[2002]: abort on (ERROR)
>Dec 28 13:41:34 Skyinet chat[2002]: abort on (BUSY)
>Dec 28 13:41:34 Skyinet chat[2002]: abort on (NO CARRIER)
>Dec 28 13:41:34 Skyinet chat[2002]: abort on (NO DIALTONE)
>Dec 28 13:41:34 Skyinet chat[2002]: send (AT&FH0^M)
>Dec 28 13:41:34 Skyinet chat[2002]: expect (OK)
>Dec 28 13:41:34 Skyinet chat[2002]: AT&FH0^M^M
>Dec 28 13:41:34 Skyinet chat[2002]: OK
>Dec 28 13:41:34 Skyinet chat[2002]:  -- got it
>Dec 28 13:41:34 Skyinet chat[2002]: send (atdt1234567^M)
>Dec 28 13:41:34 Skyinet chat[2002]: timeout set to 75 seconds
>Dec 28 13:41:34 Skyinet chat[2002]: expect (CONNECT)
>Dec 28 13:41:34 Skyinet chat[2002]: ^M
>Dec 28 13:41:55 Skyinet chat[2002]: atdt1234567^M^M
>Dec 28 13:41:55 Skyinet chat[2002]: CONNECT
>Dec 28 13:41:55 Skyinet chat[2002]:  -- got it
>Dec 28 13:41:55 Skyinet pppd[2000]: Serial connection established.
>Dec 28 13:41:55 Skyinet pppd[2000]: Using interface ppp0
>Dec 28 13:41:55 Skyinet pppd[2000]: Connect: ppp0 <--> /dev/modem
>Dec 28 13:42:03 Skyinet pppd[2000]: Remote message: Login Succeeded
>Dec 28 13:42:03 Skyinet pppd[2000]: local  IP address 203.78.106.49
>Dec 28 13:42:03 Skyinet pppd[2000]: remote IP address 203.78.97.133
>Dec 28 13:44:52 Skyinet pppd[2000]: Modem hangup
>Dec 28 13:44:52 Skyinet pppd[2000]: Connection terminated.
>Dec 28 13:44:52 Skyinet pppd[2000]: Connect time 3.0 minutes.
>Dec 28 13:44:52 Skyinet pppd[2000]: Sent 3259 bytes, received 2358 bytes.
>Dec 28 13:44:53 Skyinet pppd[2000]: Exit.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
