From: Ray Olszewski <ray@comarre.com>
Subject: RE: Network and Apache Question
Date: Tue, 21 May 2002 23:21:49 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020521231413.027ca8c0@celine>
References: <F4D3DB9A18752A4F99FD880ABC5407179D13A1@ccdc-exchg.careerco
 mmunity.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D13A1@ccdc-exchg.careerco
 mmunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Sridhar J <sridharj.hyd@cxknetworks.com>
Cc: linux-newbie@vger.kernel.org

Preliminary comment: I added the list back in. Please, let's keep 
discussions of this sort on the list.

At 11:25 AM 5/22/02 +0530, Sridhar J wrote:
>Thanks Ray for that informative post.
>
>One more question: In my registration, I have put www.somename.com for the
>DNS resolution and have widely advertised it. Now when people type the name,
>the ISP is going to block them. Is there any way of getting around this
>problem?

The DNS resolution is not a problem; that part should still work. To do 
what I described, you do need to change the URL, which I suppose means 
changing what you "advertised". The moral of this story is: don't 
"advertise" a URL until you've tested it successfully.

There may be other workarounds, involving redirection, but I believe they 
require that http://www.somename.com resolve to some other IP address (one 
without a port-80 restriction), where a server can redirect the traffic to 
(for example) http://www2.somename.com:8080 .

>BTW, why do some ISPs block port 80?

Ask them, not me. I've seen many excuses offered for this practice, some of 
which I believe, others of which I dismiss as self-serving claptrap ... but 
that's just my opinions. Some ISPs include in their Terms of Service for 
low-end plans a prohibition against running servers, and this is one way 
they enforce that policy.

>Regards
>Sridhar
>
>-----Original Message-----
>From: Ray Olszewski [mailto:ray@comarre.com]
>Sent: Wednesday, May 22, 2002 11:10 AM
>To: Sridhar J
>Subject: RE: Network and Apache Question
>
>
>At 10:34 AM 5/22/02 +0530, Sridhar J wrote:
> >Hi
> >
> >How do you set up a router to forward requests from one port to another,
> >when the ISP itself is blocking all requests to port 80? I mean, the
>request
> >to port 80 on the server wouldn't even reach it, since the ISP would block
> >it before that, right?
> >
> >Since so many knowledgeable people are saying the same thing about port
> >forwarding, its obvious that I am wrong. So how how does it work?.
> >
> >Regards
> >Sridhar
>[old stuff deleted]
>
>If the ISP is blocking traffic to port 80, then the traffic has to be to a
>different port when the ISP sees it. To do thism, you change the URL so it
>reads (for example) http://www.kc4hw.homelinux.net:8080 .    This will
>cause browsers to try to connect to port 8080 instead of the normal port
>80. So the traffic will reach the router's *external* interface bound for
>port 8080, which the ISP probably does not block.
>
>  From the router, the destination has to be translated anyway, to whatever
>private IP address the actual server is using (in this instance, you say it
>is 192.168.1.114). Also translating the port from 8080 to 80 is no big
>trick; any Linux-based router can do it. Whether the Linksys you are using
>can or not ... that I don't know ... you'll have to get linksys help from
>Linksys support, not from Linux support.
>
>If the Linksys router cannot do this translation, then you just run your
>Apache server on the same non-standard port as the URL reports, probably by
>using the Port command in /etc/apache/httpd.conf (though you might have
>your system set up differently).
>
>Depending on the details of the Linksys firewall, you may have to do more
>than this. On a typical Linux router, you would also need explicitly to
>open the port to incoming traffic, and you *may* neeed to do something
>similar on the Linksys.

--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
