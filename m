From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: PPP in Slackware
Date: Thu, 3 Apr 2003 15:35:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03040315353900.01175@unix.pa3gcu>
References: <200304030352.h333qop03520@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304030352.h333qop03520@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

On Thursday 03 April 2003 03:52, Peter wrote:
> pa3gcu@zeelandnet.nl said:
> > As Ray has explained quite well i have no futher comments more as to
> > say use  KPPP, it will do what you want.
>
> Unfortunately it is not the case.

Unless i8 am missing some very spesific machine problems you may or may not 
have i can say, Yes, kppp WILL do what you want and need.

KPPP is capable of handeling different ISP accounts very well, it lets you 
configure "accounts" for different ISP's meaning different login names and 
different passwords for all your accounts.

> I suspect the pppsetup is where the dog is buried. Before I used kppp or
> for that matter gnome-ppp I had done a pppsetup. Only the ISP I choose in
> pppsetup is the one I can connect with in kppp/gppp. If I want to use
> another ISP I have to change it in pppsetup. I can't help it these are the
> facts.
>
> /var/log/messages with pppsetup ISP opened with kppp
> Apr  3 10:28:58 philonline pppd[253]: pppd 2.4.1 started by pfheiss, uid
> 500 Apr  3 10:28:58 philonline pppd[253]: Using interface ppp0
> Apr  3 10:28:58 philonline pppd[253]: Connect: ppp0 <--> /dev/ttyS0
> Apr  3 10:29:05 philonline pppd[253]: Remote message: Login Succeeded
> Apr  3 10:29:05 philonline pppd[253]: local  IP address 202.78.107.79
> Apr  3 10:29:05 philonline pppd[253]: remote IP address 202.78.97.196
> Apr  3 10:29:05 philonline pppd[253]: primary   DNS address 202.78.97.2
> Apr  3 10:29:05 philonline pppd[253]: secondary DNS address 202.78.97.3
> Apr  3 10:29:09 philonline pppd[253]: Terminating on signal 15.
> Apr  3 10:29:10 philonline pppd[253]: Connection terminated.
> Apr  3 10:29:10 philonline pppd[253]: Connect time 0.2 minutes.
> Apr  3 10:29:10 philonline pppd[253]: Sent 115 bytes, received 97 bytes.
> Apr  3 10:29:10 philonline pppd[253]: Exit.
>
> /var/log/messages with non-pppsetup ISP opened with kppp
> Apr  3 10:29:50 philonline pppd[266]: pppd 2.4.1 started by pfheiss, uid
> 500 Apr  3 10:29:50 philonline pppd[266]: Using interface ppp0
> Apr  3 10:29:50 philonline pppd[266]: Connect: ppp0 <--> /dev/ttyS0
> Apr  3 10:29:54 philonline pppd[266]: Remote message: Invalid Login
> Apr  3 10:30:00 philonline pppd[266]: Connection terminated.
> Apr  3 10:30:00 philonline pppd[266]: Exit.

The above is what KPPP allows you to store in different accounts, ie, 
different loging names and different passwd's period.

>
> and syslog: PAP authentication failed
>
> To my reading it is pppsetup which puts a lock somewhere that only "its
> ISP" can be connected to even when I have deleted all its files I know off.

I have never used pppsetup but i am very familier with it and i know how it 
works.
Belive me, KPPP is what you want.

>
> I now reinstalled all the network section n1. That wiped-out the pppsetup.
> I then edited the necessary files in /etc/hosts and
> /etc/ppp/pap/chat/options with the result that kppp tries to connect to
> either ISP, however, cannot make the final connection and gives up after
> running the message: interface is down.
> I must have missed-out something.
> There are no messages in syslog and the following in /var/log/messages
>
> Apr  3 08:30:54 philonline pppd[220]: pppd 2.4.1 started by pfheiss, uid
> 500 Apr  3 08:31:28 philonline pppd[220]: Serial connection established.
> Apr  3 08:31:28 philonline pppd[220]: Using interface ppp0
> Apr  3 08:31:28 philonline pppd[220]: Connect: ppp0 <--> /dev/modem
> Apr  3 08:31:42 philonline pppd[220]: Terminating on signal 15.
> Apr  3 08:31:42 philonline pppd[220]: Connection terminated.
> Apr  3 08:31:43 philonline pppd[220]: Terminating on signal 15.
> Apr  3 08:31:43 philonline pppd[220]: Exit.
>
> If nothing helps I will reinstall Slackware and then avoid using pppsetup.
>
> Regards

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
