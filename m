From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Re: CD-RW-Drive
Date: Wed, 29 Dec 2004 18:45:02 +1100
Message-ID: <1104306301.8063.17.camel@debianarchist>
References: <20041229070643.E79E71737F@heisspf>
	 <200412290826.13631.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200412290826.13631.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

Just a quick follow-up to correct a typo:

the command to run after editing /etc/lilo.conf is

/sbin/lilo -v

(I believe I ran two words together, which might have been confusing)

Also as to placement of the append line; it goes in the stanza that
looks something like this one:

image=/vmlinuz
        label=Linux
        initrd=/boot/initrd.gz
        read-only
        append="hdc=ide-scsi hdd=ide-scsi"


you may or may not have the initrd line, depending on your kernel. Don't
change anything except the append line. And then after saving, run lilo
as above. (this bears repeating as it is easy to forget!) I have two CD
drives, hdc and hdd. You may have only one, in which case the two
entries are unnecessary, although they won't harm anything.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
