From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: iptables & a dhcpd question
Date: 27 Feb 2003 16:02:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1046379767.25031.5.camel@goldfinger.orbdesigns.com>
References: <5.1.0.14.1.20030227120359.01f56808@celine>
	 <009901c2dea0$9bc86390$4800a8c0@neptune>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <009901c2dea0$9bc86390$4800a8c0@neptune>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 2003-02-27 at 15:41, Paul wrote:
> Thanks for all the info! Quick follow up question on the rc.firewall script.
> I've tried running it, just by typing it's name when I'm in that folder at
> root.  It says, "bash: rc.firewall-2.4: command not found"  It's actually
> named, "rc.firewall-2.4" and I've made it executable already, it has a *
> next to its name when I do a listing.  Any ideas??  TIA!

Yah. You can't run an executable unless it's in your path, or if you
specify the path to the executable. So if you are in /etc/init.d, and
you have a script there called rc.firewall-2.4, then type

./rc.firewall-2.4

The leading ./ is a path specification that satisfies the requirement.

HTH,

.brian



-- 
Brian P. Bilbrey <bilbrey@orbdesigns.com>
Orb Designs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
