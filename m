From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Newbie installation problem
Date: Sun, 4 Aug 2002 09:43:02 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02080409430204.02607@unix.pa3gcu>
References: <5.1.0.14.1.20020802181721.02153750@celine> <002801c23b73$2b1a31d0$6401a8c0@ENRIQUE>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002801c23b73$2b1a31d0$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Enrique Nieves <spanfax@charter.net>
Cc: linux-newbie@vger.kernel.org

On Sunday 04 August 2002 04:55, Enrique Nieves wrote:
> Ray,
>
> Thanks for your query.  I've placed a response after each of your questions
> below.
> Another possibility may be the cable itself; however, the router lights
> indicate the
> cable is connected.
>
> EN

A few questions from me;

What does the following commands produce, PLEASE cut and paste "all" of the 
text, like Ray said, not simply what you think is relavant.

/sbin/lspci | grep -i ethernet 
/sbin/ifconfig -a

I susspect Riley is correct in saying that the NIC is trying to obtain a IP# 
via DHCP.

The LinkSys router you mentioned i belive has DHCP turned off by default.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
