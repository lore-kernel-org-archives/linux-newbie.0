From: Peter <pfheiss@philonline.com>
Subject: Re: PPP in Slackware
Date: Thu, 03 Apr 2003 11:52:50 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304030352.h333qop03520@philonline.com>
References: <03040119371701.04891@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 01 Apr 2003 19:37:17 GMT." 
 <03040119371701.04891@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


pa3gcu@zeelandnet.nl said:
> As Ray has explained quite well i have no futher comments more as to
> say use  KPPP, it will do what you want.

Unfortunately it is not the case.

I suspect the pppsetup is where the dog is buried. Before I used kppp or for 
that matter gnome-ppp I had done a pppsetup. Only the ISP I choose in pppsetup 
is the one I can connect with in kppp/gppp. If I want to use another ISP I 
have to change it in pppsetup. I can't help it these are the facts.

/var/log/messages with pppsetup ISP opened with kppp
Apr  3 10:28:58 philonline pppd[253]: pppd 2.4.1 started by pfheiss, uid 500
Apr  3 10:28:58 philonline pppd[253]: Using interface ppp0
Apr  3 10:28:58 philonline pppd[253]: Connect: ppp0 <--> /dev/ttyS0
Apr  3 10:29:05 philonline pppd[253]: Remote message: Login Succeeded
Apr  3 10:29:05 philonline pppd[253]: local  IP address 202.78.107.79
Apr  3 10:29:05 philonline pppd[253]: remote IP address 202.78.97.196
Apr  3 10:29:05 philonline pppd[253]: primary   DNS address 202.78.97.2
Apr  3 10:29:05 philonline pppd[253]: secondary DNS address 202.78.97.3
Apr  3 10:29:09 philonline pppd[253]: Terminating on signal 15.
Apr  3 10:29:10 philonline pppd[253]: Connection terminated.
Apr  3 10:29:10 philonline pppd[253]: Connect time 0.2 minutes.
Apr  3 10:29:10 philonline pppd[253]: Sent 115 bytes, received 97 bytes.
Apr  3 10:29:10 philonline pppd[253]: Exit.

/var/log/messages with non-pppsetup ISP opened with kppp
Apr  3 10:29:50 philonline pppd[266]: pppd 2.4.1 started by pfheiss, uid 500
Apr  3 10:29:50 philonline pppd[266]: Using interface ppp0
Apr  3 10:29:50 philonline pppd[266]: Connect: ppp0 <--> /dev/ttyS0
Apr  3 10:29:54 philonline pppd[266]: Remote message: Invalid Login
Apr  3 10:30:00 philonline pppd[266]: Connection terminated.
Apr  3 10:30:00 philonline pppd[266]: Exit.

and syslog: PAP authentication failed

To my reading it is pppsetup which puts a lock somewhere that only "its ISP" 
can be connected to even when I have deleted all its files I know off.

I now reinstalled all the network section n1. That wiped-out the pppsetup. I 
then edited the necessary files in /etc/hosts and /etc/ppp/pap/chat/options 
with the result that kppp tries to connect to either ISP, however, cannot make 
the final connection and gives up after running the message: interface is 
down.
I must have missed-out something.
There are no messages in syslog and the following in /var/log/messages

Apr  3 08:30:54 philonline pppd[220]: pppd 2.4.1 started by pfheiss, uid 500
Apr  3 08:31:28 philonline pppd[220]: Serial connection established.
Apr  3 08:31:28 philonline pppd[220]: Using interface ppp0
Apr  3 08:31:28 philonline pppd[220]: Connect: ppp0 <--> /dev/modem
Apr  3 08:31:42 philonline pppd[220]: Terminating on signal 15.
Apr  3 08:31:42 philonline pppd[220]: Connection terminated.
Apr  3 08:31:43 philonline pppd[220]: Terminating on signal 15.
Apr  3 08:31:43 philonline pppd[220]: Exit.

If nothing helps I will reinstall Slackware and then avoid using pppsetup.

Regards

 
-- 
Peter





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
