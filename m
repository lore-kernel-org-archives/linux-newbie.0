From: "Riley Williams" <lists@tcob1.net>
Subject: Re: Mailer Connections
Date: Wednesday, 14 Aug 2002 07:18:10 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020814_071810__2dc6e6af@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


Hi Peter.

Here's the relevant headers of your email as it came to me...

> Received: from ppp12.pool4.mnl.skyinet.net ([202.78.107.12]
>     helo=localhost.localdomain)
> 	by phoenix.infradead.org with esmtp (Exim 4.10)
> 	id 17eUmE-0008Fi-00
> 	for rhw@InfraDead.Org; Tue, 13 Aug 2002 07:03:36 +0100
> Received: from localhost.localdomain (pfheiss@localhost)
> 	by localhost.localdomain (8.9.3/8.9.3) with ESMTP id OAA02685;
> 	Tue, 13 Aug 2002 14:03:37 +0800
> X-Mailer: exmh version 2.5 07/13/2001 with nmh-1.0.4
> To: linux-newbie@vger.kernel.org
> cc: rhw@InfraDead.Org, ray@comarre.com
> Subject: Re: Mailer Connections 
> Date: Tue, 13 Aug 2002 14:03:37 +0800
> From: Peter <pfheiss@localhost.localdomain>

From those, we can deduce the following:

 1. The "Date:" line states when it was posted.

 2. The "X-Mailer:" line states the program you used to post it.

 3. The "From:" line states the address that was used to post it. As
    you can see, this is wrong.

 4. The "To:" and "cc:" lines state the addresses you posted it to.

 5. Reading from the bottom up, the "Received:" lines state the route
    your message took to get to me. The bottom one is your local box's
    SendMail reporting that it processed the message on the way out,
    and the top one is my mailhost confirming receipt thereof.

The top "Received:" line gives the critical evidence when it reports
"helo=localhost.localdomain" as this states that your system's hostname
is currently set up as localhost.localdomain as stated, and this is also
confirmed both by the bottom "Received:" line and by the "From:" line.
This is NOT a problem with either Exim or SendMail but with the general
configuration of your system.

>>> How do I revert back that I can mail again with any mail program
>>> especially exmh and with any ISP?

>> As a result, the solution may be as simple as setting the hostname
>> for your machine to match that of your preferred ISP by editing the
.> file / etc/sysconfig/network and putting the full; hostname on the
>. HOSTNAME= line, then rebooting your system.

> I did that now. It had localhost.localdomain. I changed if to "Peter".
> Can there be more than one name and if so how are they separated?

There can only be one name,. Assuming you are NOT running a LAN of your
home, it should correspond to your primary ISP's hostname rather than
being your first name. As an example, if your primary email address is...

	daffy.duck @ waltdisney.com

...then your machine's hostname should be...

	waltdisney.com

...and your username on that system should be...

	daffy.duck

...and I'm sure you can substitute whatever is relevant for your actual
email address in that.

As per my last email, you need to tweak the HOSTNAME= line in the file 
/etc/sysconfig/network to contain the correct domain name, and you then
need to reboot your system for this line to take effect.

>> Incidentally, sendmail normally tries to send all outgoing emails
>> direct to the relevant delivery host, so the ISP you're dialled up
>> with should make no difference at all.

> That what I always thought and it always worked since RH5.2 w/o me
> doing anything.

The headers from your email confirm that it is doing precicely as stated
here, so you do not need to worry about this.

>> Also please  mention which MTA you are using (either look for
>> something listening on  port 25 or find the smtp entry in /etc/
>> inetd.conf, depending on which way your system is set up)

> The file inetd.conf was absent. I found it as inetd.cof.rpmsave and
> copied it to /etc/inetd.conf. There is no smtp entry in this file.

SendMail doesn't run from /etc/inetd.conf so you won't find an entry in
there for it.

> This mail should go out now with my webcard ISP and using the
> program exmh.

As you can see, it used the program exmh but it went out with the wrong
email address for you.

Best wishes from Riley.

-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
