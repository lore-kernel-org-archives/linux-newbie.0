From: Ray Olszewski <ray@comarre.com>
Subject: Re: mac address change on an eth alias
Date: Tue, 17 Dec 2002 14:53:48 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021217144923.020a7bd0@celine>
References: <200212172355.32568.g38@rdsbv.ro>
 <200212172207.22480.g38@rdsbv.ro>
 <02121721144904.00388@unix.pa3gcu>
 <200212172355.32568.g38@rdsbv.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02121722061606.00388@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:06 PM 12/17/02 +0000, pa3gcu wrote:
>On Tuesday 17 December 2002 21:55, Petre Bandac wrote:
>[...]
> > so I didn't get what I wanted - the mac of the alias being different than
> > the interface's; should I presume "no can do" ?
>
>I myself have never used aliasing, i do however need to spoof my MAC
>sometimes on my laptop to be able to use it on other locations for my work.
>However thats beside the point, as far as i can see if you set a different
>IP# then the need for another MAC is (AFAIK) not nessasary.
>If ARP's are a problem then setting static arps may be an answer, once more i
>have no experiance with alising, possably Ray may have some advise for you.

Afraid not; I've never actually used aliasing (except in trivial test setups).

Perhaps the best next step would be for you to explain  why you need the 
interfaces to respond as though they were on different physical devices 
(that is, NICs with distinct MAC addresses). With that information, then 
maybe someone here could suggest a workaround. But as far as I know, NICs 
only support a single MAC address at any moment, not multiple ones.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
