From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: browser errors
Date: Sun, 4 Aug 2002 20:44:52 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208042035170.30515-100000@Consulate.UFP.CX>
References: <200208041817.57248.korosi@eunet.yu>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208041817.57248.korosi@eunet.yu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosi@eunet.yu>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Korosi.

I can't help with your general problem, but there is one point in here
that I can clarify...

> And here is the /var/log/messages with messages generated at the
> that time: (I put X-es to ip addresses, because I don't know if it
> is a security problem if I tell you. Ray wrote previously that I
> should cut off passwords, and I don't know if I should do the same
> with ip-s...)

To avoid security problems whilst guaranteeing to provide all of the
information needed to debug the problem, simply replace each specific IP
address with a specific IP address from one of the "reserved ranges".
There can be no security problems with those IP addresses since they are
not routable outside of your own network.

The important detail is that each IP address must be replaced with the
same one each time, and the results must indicate whether the originals
were on the same or different subnets. Providing you can guarantee that,
the problem is almost always equally diagnosable with substituted IP
addresses.

Often, the simplest way is just to replace the first number in each quad
with 10 as the entire 10.* range is reserved in this way.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
