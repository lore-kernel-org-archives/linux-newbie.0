From: Yawar Amin <yawar.amin@gmail.com>
Subject: Re: understanding netstat -ap
Date: Mon, 19 Sep 2005 04:10:26 +0800
Message-ID: <efc7f7d0050918131057cb52d8@mail.gmail.com>
References: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu>
	 <432D80BD.80403@comarre.com> <200509181455.38918.eric@cisu.net>
Reply-To: yawar.amin@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200509181455.38918.eric@cisu.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 9/19/05, Eric Bambach <eric@cisu.net> wrote:
[...]
>  Although it wont stop the connections, what pam_abl does is auto-blacklist
> the host after so many failed attempts. They can still try to log in and it
> looks like they're authenticating but even if they have a correct
> username/password pair they will be denied! Its quite a nifty module. 
[...]

We're facing this problem also. We've considered auto-blacklisting
hosts like you say, but what if these hosts are actually simply
zombies taken over for launching brute force attacks, or external IP
addresses for a whole range of NAT'd hosts, any one of which might be
the attacker, and the rest innocent bystanders?

You could remove them from the blacklist after a while, perhaps. Or
maybe not. The problem remains: how to blacklist them very swiftly
when it's decided they're trying a brute force, and then whitelist
them again after a while so that nobody else suffers because of the
bad guys.

-- 
Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
