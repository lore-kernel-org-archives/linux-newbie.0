From: Peter Edstrom <peter.p3@home.se>
Subject: Re: Setting up DNS without domain
Date: Wed, 13 Aug 2003 01:07:07 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030812230707.GA1174@linux>
References: <20030812223545.GA1046@linux> <5.1.0.14.1.20030812155116.030d0b88@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030812155116.030d0b88@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, Aug 12, 2003 at 03:59:51PM -0700, Ray Olszewski wrote:
 
> No, you can run BIND (named) without your own domain, just to resolve 
> offsite FQNs that your local hosts need to resolve. Just run it and provide 
> only the file that identifies root server (on my Debian system, 
> /etc/bind/db.root). You do this by configuring named.conf to provide only 
> that db file (as a "hint"), probably something like this:
> 
>         // prime the server with knowledge of the root servers
>         zone "." {
>                         type hint;
>                         file "/etc/bind/db.root";
>         };
> 
> If you have a significant number of hosts on your LAN, you might want to 
> make this instance of BIND locally (on-LAN only) authoritative for a dummy 
> domain that the hosts can use to find each other. (That's what I do here, 
> for example.) In that case, the stuff you've seen about using BIND with 
> real (registered) domains should guide you.
> 
> >Another question: Do you recommend chrooting BIND?
> 
> I offer no recommendation, but I do not do so myself.

Thanks for the quick reply, Ray! I will try that ASAP.

/Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
