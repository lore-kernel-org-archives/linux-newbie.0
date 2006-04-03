From: Peter <heisspf@skyinet.net>
Subject: Re: Printing with Kernel 2.6.14.4
Date: Mon, 03 Apr 2006 10:04:06 +0800
Message-ID: <200604030204.k33246r6004351@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-ID: <4349.1144029846.1@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Just want to inform, the problem that I could not print offline was solved 
with the help of a  certain Jorgeu from Venezuela, in Dropline-Gnome-Forum, 
Slackware Discussions under "Unable to Print Offline".

Jorgeu asked me what the output is of /sbin/route when offline. There was 
none. From which he concluded correctly that it is a loopback configuration 
issue.

He told me then to input the following command:

# route add 127.0.0.0 dev lo

and behold Jorgeu was right: And you should be printing offline without 
problems.

And it seems to hold. This morning when I bootet I was offline and could print.

Thank you Jorgeu!!
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
