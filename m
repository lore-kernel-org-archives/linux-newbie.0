From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote login
Date: Sun, 09 Mar 2003 22:47:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030309223939.01f09a58@celine>
References: <Pine.LNX.4.53.0303092110290.18544@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030310053904.54825.qmail@web10705.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:39 PM 3/9/2003 -0800, Jesse Armand wrote:
>I want to login to a remote computer on my LAN,
>how do i configure my connection so the other computer
>at my LAN can't see my hostname by using
>command : w
>           who
>           finger

You can't ... at least not in the sense you probably mean.

To make a connection, the "other computer" has to know your IP address. It 
gets the name it reports in a w or who listing  (on my systems, it is an 
FQN, not a hostname) by doing a reverse lookup of the IP address, using its 
/etc/hosts file or its dns resolver (whichever way you have it set up ... 
it doesn't really have any way to see your actual "hostname", if by that 
you mean the name you put in /etc/hostname). If it cannot resolve the 
address, it will report the address itself in this location.

So in that limited sense, if you do not provide for reverse lookups, the 
remote host will not show the *name* of the computer the connection is from 
... but it will still show the IP address, which it has to know. Whether 
this difference accomplishes what you want I do not know, since you haven't 
said *why* you want to do this.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
