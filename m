From: Steven Ackerman <steven@nvts.us>
Subject: RE: RH 9.0 and knetfilter installation
Date: 27 May 2003 08:02:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1054047731.814.2.camel@RHServer>
References: <BKEGKPICNAKILKJKMHCAOENKDBAA.Riley@Williams.Name>
Reply-To: steven@nvts.us
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAOENKDBAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Riley Williams <Riley@Williams.Name>
Cc: linux-newbie@vger.kernel.org

Hey all.

When I try to install iptables like it is listed below. I get the
following error:

error: cannot get exclusive lock on /var/lib/rpm/Packages
error: cannot open Packages index using db3 - Operation not permitted
(1)
error: cannot open Packages database in /var/lib/rpm

I am not logged in as root. I'll try that but thought I will post this
anyway. Thanks for the help. Hope everyone had a great weekend.

-Steve

On Fri, 2003-05-23 at 23:54, Riley Williams wrote:

> Put Red Hat 9 CD 1 in your favourite CD drive and mount it.
> Assuming you've mounted it as /mnt/cdrom do the following...
> 
>          rpm -Uvh /mnt/cdrom/RedHat/RPMS/iptables-*
> 
> ...and it will install iptables for you. You can then unmount
> the CD and put it back to bed...
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
