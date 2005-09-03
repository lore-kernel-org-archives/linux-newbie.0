From: chuck gelm <chuck@gelm.net>
Subject: Re: accept some IP/users deny others
Date: Sat, 03 Sep 2005 12:20:18 -0400
Message-ID: <4319CD42.7090106@gelm.net>
References: <200509022239.21591.r4mz3z@yahoo.es>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200509022239.21591.r4mz3z@yahoo.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pepo <r4mz3z@yahoo.es>
Cc: linux-newbie@vger.kernel.org

pepo wrote:
> Hi friends...
> 
>         I am using exim4 (exim4-daemon-light) 4.52-1 in my Sarge, and I have a 
> little 
> LAN (PC1:192.168.1.1, PC2:192.168.1.2, PC3:192.168.1.3) the first is my box.
> 
>         Please, how do I accept any local mail in my LAN, but just 
> PC2:192.168.1.2 
> can send mails to Internet? and if you can help me with the same but only few 
> users can send to Internet.
> 
>         I hope that you can help me, it is urgent for me.
> 
> Thanks
> 

Hi, pepo:

  You did not send any information about 'Internet', only about three (3)
computers IP addresses on a 'little LAN'.  Yours is .1 and is running a
version of 'exim'.  I would suggest that, if your LAN used a
'router/firewall' to obtain access the the internet, that the firewall
be adjusted to not allow email ports (25,110) to flow )to,from) the
internet from the selected host(s).  If the other computer that you want
not to be able to send email to the internet is not using the 'exim' on
your workstation, the solution does not lie within the information you
presented.

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
