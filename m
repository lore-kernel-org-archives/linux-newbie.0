From: Jim Reimer <jdr@wa5rrh.org>
Subject: Re: Setting up DNS without domain
Date: Tue, 12 Aug 2003 18:53:53 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F397E11.7090801@wa5rrh.org>
References: <20030812223545.GA1046@linux> <3F396E1C.6010401@wa5rrh.org> <20030812231942.GA1223@linux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030812231942.GA1223@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter Edstrom <peter.p3@home.se>, linux-newbie@vger.kernel.org

Peter Edstrom wrote:

> Could you please explain yourself?
> The reason why I've decided to set up my own DNS instead of using 
> someone else's is to avoid any problems in the future. The problem,
> however, could be performance since I'll be running it on my
> workstation. Do you think this is a bad move?

I forgot to include the list in my original reply... I've added
it back in.

I'm using DirecWay (satellite) for internet connectivity.  They provide
a decent connection to the net, but everything else (DNS, email, etc.)
is really bad.  Had lots of trouble, sometimes for extended periods,
with DNS lookup errors when I was using their DNS, so I just changed
to different servers.

What I'm using for DNS now are the servers listed as primary at The
University of Oklahoma, North Texas State University, and The
University of Wyoming, as my primary, secondary, and tertiary name
servers.  Could just as easily have used Microsoft and CNN.  Just
pick somebody big and do a whois lookup on them, jot down the IP
address of their primary name server, and use it in place of
the IP address for your ISP's DNS.

Even if you set up your own server, it's going to have to communicate
with somebody else's server(s) to resolve other than local names.  Since
I only have one local name to bother with, I didn't think it was worth
the trouble.

(Somebody do a sanity check on what I'm saying here.)

-jdr-








-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
