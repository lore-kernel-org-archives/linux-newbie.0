From: Peter <pfheiss@philonline.com>
Subject: Re: Mailer Connections
Date: Tue, 13 Aug 2002 14:41:57 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208130641.OAA01156@philonline.com>
References: <rhw@InfraDead.Org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Riley Williams <rhw@InfraDead.Org> 
   of "Sun, 11 Aug 2002 08:29:52 +0100." <Pine.LNX.4.21.0208110815450.8397-100000@Consulate.UFP.CX> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: rhw@InfraDead.Org, ray@comarre.com

Thanks Riley and Ray

pfheiss said:
>> How do I revert back that I can mail again with any mail program
>> especially exmh and with any ISP?


rhw@InfraDead.Org said:
> As a result, the solution may be as simple as setting the hostname for
> your machine to match that of your preferred ISP by editing the file /
> etc/sysconfig/network and putting the full; hostname on the HOSTNAME=
> line, then rebooting your system. 

I did that now. It had localhost.localdomain. I changed if to "Peter".
Can there be more than one name and if so how are they separated?


rhw@InfraDead.Org said:
> Incidentally, sendmail normally tries to send all outgoing emails
> direct to the relevant delivery host, so the ISP you're dialled up
> with should make no difference at all.

That what I always thought and it always worked since RH5.2 w/o me doing 
anything.

ray@comarre.com said:
>  Also please  mention which MTA you are using (either look for
> something listening on  port 25 or find the smtp entry in /etc/
> inetd.conf, depending on which way your system is set up)

The file inetd.conf was absent. I found it as inetd.cof.rpmsave and copied it 
to /etc/inetd.conf. There is no smtp entry in this file.

This mail should go out now with my webcard ISP and using the program exmh.

Regards

-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
