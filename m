From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 14:01:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266025B4@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "'haltec@kvinet.com'" <haltec@kvinet.com>, linux-newbie@vger.kernel.org

Hi,

In the /etc/sysconfig/network-scripts path, you would have files named like
ifcfg-eth0, ifcfg-eth1 etc. You need to add this address to one of those
files. If your interface is eth0, edit ifcfg-eth0 and make the necessary
changes.

That would make the change permanent. Whenever you restart, the network
script in rc.d/init.d would pick up the info.

Regards,
Devesh


-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Hal MacArgle
Sent: Friday, February 20, 2004 1:24 PM
To: linux-newbie@vger.kernel.org
Subject: Re: keeping static ip address alive between restarts


Greetings: As Ray says; RH may be different but Slackware, all versions,
have a file: rc.local, that's found -> /etc/rc.d/rc.local, where you merely
enter whatever command you want for each and every future boot...

Disregard if RH doesn't have such an animal.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam


On 02-20, William Stanard wrote:
> Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed  ifconfig 
> eth0 192.168.0.1 to set my box's ip address for my small LAN. What 
> additional command should I use to write that address permanently, so 
> that I do not have to ifconfig each time I restart? I have read and 
> reread O'Reilly's Running Linux and Learning Red Hat Linux; is there 
> no process whereby the settings are written to the correct files for 
> startup, or must I (using vi, for
> example) edit certain files myself?
> 
> Bill Stanard
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


------------------------------------------------------------------------------
This message is intended only for the personal and confidential use of the
designated recipient(s) named above.  If you are not the intended recipient of
this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regarded as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
secure or error-free.  Therefore, we do not represent that this information is
complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
