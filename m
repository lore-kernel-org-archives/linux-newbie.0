From: "J." <mailing-lists@xs4all.nl>
Subject: Re: route to deferent gateways depend on the protocol
Date: Mon, 20 Dec 2004 18:32:33 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412201826300.23609-100000@hestia>
References: <5.1.0.14.1.20041220083554.01f46718@celine>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041220083554.01f46718@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 20 Dec 2004, Ray Olszewski wrote:

> At 02:17 PM 12/20/2004 +0600, Kev wrote:
> >Hi all,
> >
> >is it possible to route to deferent gateways depend on the protocol (Eg:SMTP)
> >using Linux routing tabes or iptabels, if so does any one know how to do
> >it ?

For registerd services one could try to filter and redirect based on
src/dest port but that is not rocksolid. Is the smtp server at your
intranet or internet side ? If it's in your local net shouldn't be much of
a problem.. with iptables or pf. 

> With respect to routing tables, the answer is a definite no. Routing tables 
> operate only at the IP-address level (network layer), and protocols are the 
> next level up (transport layer -- TCP or UDP).
> 
> With respect to iptables ... I cannot immediately think of a way to do 
> this, but iptables offers an awful lot of flexibility, so I would not rule 
> out some tricky solution, especially in a context where the gateways are 
> NATing routers. But I have nothing specific to suggest.
> 
> >thanks
> >Kev

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
