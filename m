From: jbradford@dial.pipex.com
Subject: Re: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 15:57:14 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171457.g9HEvEZF003831@darkstar.example.net>
References: <CPIMSSMTPU04OlbcrYP000007f9@cpimssmtpu04.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU04OlbcrYP000007f9@cpimssmtpu04.email.msn.com> from "Alan Womack" at Oct 17, 2002 07:21:28 AM
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwbackup@worldnet.att.net>
Cc: linux-newbie@vger.kernel.org

>  >>  Seems a
>  >>  shame 
>  >>  to have this bandwidth knocking about unused.
> 
> Try a google search on shutgun internet access, a modem manufacturer
> a few years ago came out with a kit to use two dialup modems to get
> 106K access.  You might find something that way.  There basically
> has to be a layer someplace that reassembles the packets from two
> different sources.

Only if you want to bond two modems at a higher level than the TCP/IP
protocol.  I.E. use two modems to carry the traffic of one TCP/IP
link.

The alternative, is to have two completely separate connections, and
send out packets over them both fairly randomly.  These will get
answered, and sent back via whichever connection they came from.
Therefore sending data out randomly over two interfaces is a crude
form of load balancing.

In practice, it should work quite well.

John.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
