From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: mounting vfat partitions
Date: Mon, 26 Apr 2004 18:27:01 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0404261824550.12785-100000@legolas.personal.engin.umich.edu>
References: <408C8152.7000802@siriusbb.com>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <408C8152.7000802@siriusbb.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

changing the /etc/fstab entries to the ones you listed below, Amin, mounts 
the devices at boot but does not allow a user to read them.

The problem persists. 

-K

On Mon, 26 Apr 2004, at 9:26am, Amin wrote:

> Karthik Vishwanath wrote:
> 
> > /dev/hdb1	/dosd	vfat	defaults
> > /dev/hda1	/dosc	vfat	defaults
> > 
> > This mounts the partitions correctly. However, I am able to access these
> > mount points only as root, and not as a user.  I would prefer that these
> > vfat partitions be writable by root alone, but be readble for all users on
> > the machine. How can I fix that?
> > 
> > Thanks,
> > 
> > -K
> 
> /dev/hdb1	/dosd	vfat	defaults,owner,user
> /dev/hda1	/dosc	vfat	defaults,owner,user
> 
> HTH
> 
> Yawar
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
