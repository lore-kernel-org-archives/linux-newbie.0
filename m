From: Peter <pfheiss@philonline.com>
Subject: Re: PPP Question
Date: Wed, 25 Sep 2002 10:31:11 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209250231.g8P2VBE02701@philonline.com>
References: <ray@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Ray Olszewski <ray@comarre.com> 
   of "Tue, 24 Sep 2002 08:27:12 MST." <5.1.0.14.1.20020924082159.025e33a0@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Aha,

here are the log messages and wvdial.conf for ppp1 which readily connects and 
ppp2
which will not connect saying see below

]$ /sbin/ifup ppp2

]# tail /var/log/messages
Sep 25 09:50:00 philonline WvDial: OK 
Sep 25 09:50:00 philonline WvDial: Sending: ATM1L3 
Sep 25 09:50:00 philonline WvDial: ATM1L3 
Sep 25 09:50:00 philonline WvDial: OK 
Sep 25 09:50:00 philonline WvDial: Modem initialized. 
Sep 25 09:50:00 philonline WvDial: Configuration does not specify a valid 
phone number.
Sep 25 09:50:00 philonline WvDial: Configuration does not specify a valid 
login name.
Sep 25 09:50:00 philonline WvDial: Configuration does not specify a valid 
password.
Sep 25 09:50:00 philonline pppd[1466]: Connect script failed
Sep 25 09:50:01 philonline pppd[1466]: Exit

]# cat /etc/wvdial.conf

[Dialer Skyinet-PLDT]
Username = 4003460535@webcard.skyinet.net
Password = 
Phone = 8787111
Inherits = Dialer Defaults
Stupid mode = 0

]$ /sbin/ifup ppp1

]# tail /var/log/messages
Sep 25 09:50:31 philonline WvDial: OK 
Sep 25 09:50:31 philonline WvDial: Modem initialized. 
Sep 25 09:50:31 philonline WvDial: Sending: ATDT 4362222 
Sep 25 09:50:31 philonline WvDial: Waiting for carrier. 
Sep 25 09:50:31 philonline WvDial: ATDT 4362222 
Sep 25 09:50:35 philonline pppd[1541]: Terminating on signal 15.
Sep 25 09:50:35 philonline WvDial: Disconnecting at Wed Sep 25 09:50:35 2002 
Sep 25 09:50:35 philonline pppd[1541]: Serial connection established.
Sep 25 09:50:35 philonline pppd[1541]: Using interface ppp0
Sep 25 09:50:35 philonline pppd[1541]: Connect: ppp0 <--> /dev/ttyS0

]# cat /etc/wvdial.conf

[Dialer Skyinet]
Username = 4003460535@webcard.skyinet.net
Password =
Phone = 4362222
Inherits = Dialer Defaults
Stupid mode = 0

There is no such file as /etc/interfaces

Now after above exercise I exchanged manually in /etc/wvdial.conf the two 
telephone numbers and surprise, surprise ppp2 and ppp3 as well as ppp1 
connected readily.

I'll be darn, my old boos used to say.

ray@comarre.com said:
> Nothing comes to mind based on the info you posted. Perhaps I (or
> someone)  could suggest something if you posted

>          1. the relevant portions of /etc/interfaces
>          2. whatever the log files contain about an unsuccessful
> attempt

> I omit the ppp config stuff from this list since you say it works if
> run  directly (or at least I think you are saying that - I've never
> used kppp so  am not *sure* that it relies on the same config files -
> if not, please post  that info too, concealing only your password).

> At 03:38 PM 9/24/02 +0800, Peter wrote:
 >Hi, 
> >I have 3 ISPs of which one with 2 phone numbers (ppp1 and ppp2). Using the >command /sbin/ifup pppx I can connect only to ppp0 and ppp1; ppp2 and ppp3
>> will just sit doing nothing. The same happens using the guis rp3 and
> usernet, on the window waiting the bar just moves for ever back and forth.

> >Yet using rp3-config -debug or kppp I can dial-up and
> connect with all 4 numbers.

> >Is there an explanation to this and can correction be made that command >/sbin/ifup which I prefer can be used for all ppps?

> >In wvdial.conf all looks correct the same in pap/chap-secret.



-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
