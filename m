From: cr <cr@orcon.net.nz>
Subject: Re: Telnet
Date: Fri, 24 May 2002 22:49:37 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205241018.g4OAIsV28156@mail.orcon.net.nz>
References: <E7B0663E34409F45B77EFDB62AE0E4D202236238@s99mail02.okdhs.org>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <E7B0663E34409F45B77EFDB62AE0E4D202236238@s99mail02.okdhs.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Little, John" <JOHN.LITTLE@okdhs.org>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Thanks all the people who told me what Telnet is!   
In fact after the first off-list reply explaining what Telnet is, I 
successfully telnetted last night.   It felt *exactly* like logging on to a 
local dial-up bulletin board in the old days.   (And I logged on as 'new', as 
instructed).

I'll bear in mind that it's insecure.

cr


On Friday 24 May 2002 02:24, Little, John wrote:
> telnet is a terminal communications program.  used to open a terminal
> session on a remote system.  telnet is a command you can use on the
> commandline
>
> ie :
> [u51847@penguin u51847]$ telnet kidst500
>
> kidst500 is a system on our local network that supports telnet sessions.
> You usually have to have a userid unless the remote system supports
> anonymous sessions.  Normally you wouldn't want to telnet to
> www.something.com because that is a webserver.  However you can try this
> "telnet www.something.com 80" that tells the telnet software to use port
> 80. You can see what a http session looks like.
>
> One caveat is that telnet is insecure.  It passes userids and passwords as
> plaintext.  If you are looking for security, use ssh.
>
> Also, try out your man pages ie:
>
> [u51847@penguin u51847]$ man telnet
> -----Original Message-----
> From: cr [mailto:cr@orcon.net.nz]
> Sent: Thursday, May 23, 2002 8:02 AM
> To: linux-newbie@vger.kernel.org
> Subject: Telnet
>
>
> This probably sounds ridiculous to you all, but what's Telnet (as in
> "Telnet
>
> to www.goodstuff.org")   and what application (in Gnome or KDE?) could I
> use
>
> to do it?    I've used browsers/ftp/mailreaders/newsgroups but so far as I
> know  never 'telnetted'.
>
> chris
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
