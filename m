From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting up DNS without domain
Date: Tue, 12 Aug 2003 15:59:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030812155116.030d0b88@celine>
References: <20030812223545.GA1046@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030812223545.GA1046@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:35 AM 8/13/2003 +0200, Peter Edstrom wrote:
>Hello!
>
>Since the DNS's of my ISP is constantly going down, I want to set up my
>own using BIND (except if you have any other recommendations). The
>problem is that all howtos I've found is based around having a domain,
>which I don't. Is this a prerequisite of running a DNS, or can
>you use a bogus domain (like youareamunch.kinlloyd which probably isn't
>already in use) or perhaps just your IP?

No, you can run BIND (named) without your own domain, just to resolve 
offsite FQNs that your local hosts need to resolve. Just run it and provide 
only the file that identifies root server (on my Debian system, 
/etc/bind/db.root). You do this by configuring named.conf to provide only 
that db file (as a "hint"), probably something like this:

         // prime the server with knowledge of the root servers
         zone "." {
                         type hint;
                         file "/etc/bind/db.root";
         };

If you have a significant number of hosts on your LAN, you might want to 
make this instance of BIND locally (on-LAN only) authoritative for a dummy 
domain that the hosts can use to find each other. (That's what I do here, 
for example.) In that case, the stuff you've seen about using BIND with 
real (registered) domains should guide you.

>Another question: Do you recommend chrooting BIND?

I offer no recommendation, but I do not do so myself.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
