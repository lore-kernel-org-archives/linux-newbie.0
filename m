From: Ray Olszewski <ray@comarre.com>
Subject: Re: Proxy
Date: Fri, 20 Sep 2002 11:02:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020920104854.02512650@celine>
References: <004e01c260cb$c16b0880$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004e01c260cb$c16b0880$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 01:32 PM 9/20/02 -0400, Paul Kraus wrote:
>I want to be able to have all web traffic filter through my Linux
>server. I need to be able to log all activity. Who made the request and
>what pages they went to. I also need to be to use a white list. Only
>allowing access to certain sites rather then a blacklist which just
>refuses access to certain sites. I have been looking at the squid
>package but it seems to be more of a web cache then a proxy. At least
>all the documentation I have read on has be cache specific. Any
>suggestions on what software I should run and maybe a link to the docs.
>Thanks!

squid is a caching proxy server. Whether it will do what you want 
specifically, that I do not know, especially the whitelist part. But it is 
a proxy server.

The other well-known proxy server for Linux is junkbuster (I think 
www.junkbusters.com, but try Google to be sure). A recent(?) successor to 
it is something called "privoxy", but I'm not familiar with the details 
(may just be a Debian repackaging to deal with trademark issues). Its focus 
is a bit different from yours, but it might do what you want.

A few years ago, there was a project to develop a proxy server for schools, 
designed to prevent kids from accessing "inappropriate" sites. I think it 
died out for lack of developer interest, but I'm not certain of that ... 
you might search around on K-12 lists for links to any version of it that 
survives.


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
