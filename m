From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: 2 NIC cards not talking
Date: Thu, 22 Jan 2004 16:39:55 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'chuck' <chuck@gelm.net>, Beolach <beolach@comcast.net>
Cc: linux-newbie@vger.kernel.org

The name is Devesh.

I have already answered the question in an earlier email. However, once
again for your convenience,

Ping -I eth0 192.168.1.1 gives Destination host unreachable.
Ping -I eth1 xxx.xxx.xxx.xxx also gives Destination host unreachable.

So pinging from eth0 to ip of eth1 and vice versa give dest host
unreachable.

Pinging from eth1 to external gateway also gives dest host unreachable.

Let me know if u need more info

Regards,
Devesh


-----Original Message-----
From: chuck [mailto:chuck@gelm.net] 
Sent: Thursday, January 22, 2004 4:24 PM
To: Beolach
Cc: linux-newbie@vger.kernel.org
Subject: Re: 2 NIC cards not talking


Hi, Beolach:
Thanks.
I asked, but Chadha never reported his (exact) 'ping' usage, nor the (exact)
error message. :-| Chuck

Beolach wrote:
> 
> ping has a -I option that allows you to specify the source interface.  
> I haven't used this option myself, but I would guess Chadha used some 
> thing like this: 'ping -I eth0 192.168.1.1'.
> 
> Conway S. Smith
> 
> chuck wrote:
> > Dear Chadha:
> >
> > In (4.) & (5.)...
> >
> > I know how to ping from a host with an 'eth0' or 'eth1' device. I do 
> > not know how to ping from 'eth0' or from 'eth1'.
> >
> > Sorry, I cannot help.
> >
> > Chuck
> >
> > "Chadha, Devesh" wrote:
> > <snip>
> >
> >
> >>4.Pinging 192.168.1.1 from eth0 gave destnation host unreachable and 
> >>pinging xxx.xxx.xxx.xxx from eth1 gave the same.
> >>
> >>5. I can connect to internet using eth0 since I can browse the 
> >>internet. I can also ping the gateway from eth0
> >
> > <snip>
> >

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

------------------------------------------------------------------------------
This message is intended only for the personal and confidential use of the
designated recipient(s) named above.  If you are not the intended recipient of
this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regarded as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
secure or error-free.  Therefore, we do not represent that this information is
complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
