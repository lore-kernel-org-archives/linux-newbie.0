From: caszonyi@rdslink.ro
Subject: Re: Slackware 9.1 Kinks
Date: Tue, 30 Dec 2003 02:59:57 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0312300250160.492@grinch.ro>
References: <200312300044.hBU0iSI02062@skyinet.net>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312300044.hBU0iSI02062@skyinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Tue, 30 Dec 2003, Peter wrote:

> Hi,
>
> After having quite a few problems installing RH9 I tried my hand on Slackware
> 9.1 where two problems I am unable to solve.
>
> One is just an annoying one, that I as a user can't mount /mnt/cdrom. No
> matter what setting I put in fstab and for /dev/hdb it will not let me mount
> it. I copied all the settings I have in RH7.3, to no avail.
>
> Question: how does one make SW9.1 to let a user mount /mnt/cdrom?
>

in /etc/fstab at the column with options put user:
example:
/dev/hdb /mnt/cdrom auto noauto,user,ro 0 0
                                ^^^^


> The second problem is more serious, I can't apparently enter the Internet
> neither with ppp-go nor with kppp. It dials up, connects and then nothing
> happens it just sits. Ping gives 100% package loss.

There are ISP's which filter ping.
Try to use another protocol ex: http

Try to connect to a known ip adress


>
> Below is the message I get using ppp-go which shows that I have logged-in. I
> terminated the connection with ppp-off after 3 minutes of nothing doing. In
> the kernel ppp is set to yes. I have made several attempts, they all give the
> same log.
>
> Where would the problem be? What other info is needed?
>
> Thanks & regards
>
> Dec 28 13:41:33 Skyinet pppd[2000]: pppd 2.4.1 started by root, uid 0
> Dec 28 13:41:34 Skyinet chat[2002]: timeout set to 60 seconds
> Dec 28 13:41:34 Skyinet chat[2002]: abort on (ERROR)
> Dec 28 13:41:34 Skyinet chat[2002]: abort on (BUSY)
> Dec 28 13:41:34 Skyinet chat[2002]: abort on (NO CARRIER)
> Dec 28 13:41:34 Skyinet chat[2002]: abort on (NO DIALTONE)
> Dec 28 13:41:34 Skyinet chat[2002]: send (AT&FH0^M)
> Dec 28 13:41:34 Skyinet chat[2002]: expect (OK)
> Dec 28 13:41:34 Skyinet chat[2002]: AT&FH0^M^M
> Dec 28 13:41:34 Skyinet chat[2002]: OK
> Dec 28 13:41:34 Skyinet chat[2002]:  -- got it
> Dec 28 13:41:34 Skyinet chat[2002]: send (atdt1234567^M)

Slackware has a pppsetup program which helps you set the ppp connection

One of the problem could be that your default route is not reset by the
ppp program

please send the output of route -an

I had to manually delete the default route because ppp wouldn't do it.

> Dec 28 13:41:34 Skyinet chat[2002]: timeout set to 75 seconds
> Dec 28 13:41:34 Skyinet chat[2002]: expect (CONNECT)
> Dec 28 13:41:34 Skyinet chat[2002]: ^M
> Dec 28 13:41:55 Skyinet chat[2002]: atdt1234567^M^M
> Dec 28 13:41:55 Skyinet chat[2002]: CONNECT
> Dec 28 13:41:55 Skyinet chat[2002]:  -- got it
> Dec 28 13:41:55 Skyinet pppd[2000]: Serial connection established.
> Dec 28 13:41:55 Skyinet pppd[2000]: Using interface ppp0
> Dec 28 13:41:55 Skyinet pppd[2000]: Connect: ppp0 <--> /dev/modem
> Dec 28 13:42:03 Skyinet pppd[2000]: Remote message: Login Succeeded
> Dec 28 13:42:03 Skyinet pppd[2000]: local  IP address 203.78.106.49
> Dec 28 13:42:03 Skyinet pppd[2000]: remote IP address 203.78.97.133
> Dec 28 13:44:52 Skyinet pppd[2000]: Modem hangup
> Dec 28 13:44:52 Skyinet pppd[2000]: Connection terminated.
> Dec 28 13:44:52 Skyinet pppd[2000]: Connect time 3.0 minutes.
> Dec 28 13:44:52 Skyinet pppd[2000]: Sent 3259 bytes, received 2358 bytes.
> Dec 28 13:44:53 Skyinet pppd[2000]: Exit.
>
> --
> Peter
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
