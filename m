From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: RH 9.0 and knetfilter installation
Date: Tue, 27 May 2003 16:45:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAGEJPEBAA.Riley@Williams.Name>
References: <1054047731.814.2.camel@RHServer>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1054047731.814.2.camel@RHServer>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: steven@nvts.us
Cc: linux-newbie@vger.kernel.org

Hi Steven.

 >> Put Red Hat 9 CD 1 in your favourite CD drive and mount it.
 >> Assuming you've mounted it as /mnt/cdrom do the following...
 >>
 >>		rpm -Uvh /mnt/cdrom/RedHat/RPMS/iptables-*
 >>
 >> ...and it will install iptables for you. You can then unmount
 >> the CD and put it back to bed...

 > When I try to install iptables like it is listed below.
 > I get the following error:
 >
 > error: cannot get exclusive lock on /var/lib/rpm/Packages
 > error: cannot open Packages index using db3 - Operation not
 >		permitted (1)
 > error: cannot open Packages database in /var/lib/rpm
 >
 > I am not logged in as root.

That would explain the above - with very few exceptions, you have
to be logged in as root to install, upgrade or erase RPM packages
simply because root is the only user to have write access to most
of the directories involved in installing packages.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.483 / Virus Database: 279 - Release Date: 19-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
