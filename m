From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: RH 9.0 and knetfilter installation
Date: Sat, 24 May 2003 07:54:11 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAOENKDBAA.Riley@Williams.Name>
References: <1053732984.4479.8.camel@RHServer>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1053732984.4479.8.camel@RHServer>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: steven@nvts.us, linux-newbie@vger.kernel.org

Hi Stephen.
....:....|....:....|....:....|....:....|....:....|....:....|....:....|
 > I am running RH 9.0 and trying to install knetfilter 3.1.1.
 > I untarred the file .tar.gz file and then used the command
 > rm config.cache; ../configure in the directory the files
 > were untarred (correct usage?) to.
 >
 > When I do that, it goes through checking for a whole host
 > of different things but stops at the end and says:
 >
 > Checking for iptables....no
 > Configure error: No iptables found.
 >
 > Now it seems obvious to me that iptables is not installed
 > on the machine. I did a server installation and could swear
 > that I did some kind of basic firewall installation. That's
 > unimportant. I need to know how to install iptables and move
 > on from here. I have the 3 Red Hat 9.0 CD's. Can anyone help?

Put Red Hat 9 CD 1 in your favourite CD drive and mount it.
Assuming you've mounted it as /mnt/cdrom do the following...

         rpm -Uvh /mnt/cdrom/RedHat/RPMS/iptables-*

...and it will install iptables for you. You can then unmount
the CD and put it back to bed...

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
