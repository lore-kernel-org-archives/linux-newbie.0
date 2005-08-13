From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: programs/daemons/PIDs using the network
Date: Sat, 13 Aug 2005 09:40:51 +0200
Message-ID: <200508130940.51347.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik Vishwanath <karthikv@alum.dartmouth.org>
Cc: linux-newbie@vger.kernel.org

On Friday 12 August 2005 07:27, Karthik Vishwanath wrote:
> Hello,
>
> I run icewm as a window manager and have the network status displayed on
> the task-bar. Sometimes I notice quite some activity on the network,
> without really knowing which process is responsible for that. I would like
> to determine the progam-name(s)/daemon(s) and the PID(s) that are involved
> actively in sending/receiving data on the network.

Without knowing anything about your systen, ie what processes are running one 
can only guess as to what is causing traffic on your network.

Mail programs which check at regular intervals for mail is one which comes to 
mind strait away, others are dhcp if used and there are of course many more.

> I tried netstat with the -e, -p, -l and the -a flags, but could not locate
> the program that was actively using the network. What am I missing, what
> must I try?

I would use 'netstat -t' as soon as i saw traffic, but then i would be running 
'tcpdump' in an xterm to monitor traffic, one would then see ip#'s and most 
important port numbers, knowing the port number one then looks 
into /etc/services to see what program is causing the traffic.

Of course there are other ways to check as well but the above is what i would 
be doing if i was concerned.
>
>
> regards,
>
> -K

--
Regards Richard.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
