From: beolach@comcast.net
Subject: Re: Samba
Date: Tue, 27 Jan 2004 05:21:58 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <012720040521.24769.4967@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jlamb03@elitemail.org
Cc: linux-newbie@vger.kernel.org

> Hello,
> 
> I recently switched to linux because I was curious what else was out there
> and was very annoyed with windows's mismanaged multitasking.  So I went and
> bought Slackware after trying knoppix for a short while. I know Slack is
> sometimes not recommended for newbies, but I think it is the best way to
> learn linux because it really forced me to learn new things.
> 

My opinion exactly.  I started the same way back Slackware 7.1.

> My question: Can you recommend any books that deal more with networking, I
> am having troubles trying to set up a Samba server? I also want to be able
> to set up Apache and BIND? OH, and one more, does anyone have a good text on
> using a good linux server to serve a lot of thin clients?

As has been pointed out, a lot of great info on just about every subject
is available in The Linux Documentation Project <http://tldp.org>.  I also
want to point out that all of the HOWTOs & FAQs from TLDP are included in Slackware in /usr/doc/Linux-HOWTOs & /usr/doc/Linux-FAQs.

Also, the SAMBA package for Slackware includes a ton of documentation on
setup SAMBA, including the book "Using Samba, 2nd Edition".  The easiest way
to get to this using SWAT (Samba Web Administration Tool), which is also the
best way to administer SAMBA.  To enable SWAT, edit /etc/inetd.conf &
uncomment the line for swat.  Then find inetd's PID with 'ps -A' & send it
SIGHUP with `kill -HUP <pid>`.  Then open your preferred webbrowser & go to
<http://localhost:901>.

> 
> thanks for your time
> 

My pleasure, hope it helps.
Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
