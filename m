From: Amin <amin@siriusbb.com>
Subject: Re: mounting vfat partitions
Date: Mon, 26 Apr 2004 09:26:10 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <408C8152.7000802@siriusbb.com>
References: <Pine.LNX.4.44.0404251822380.11721-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0404251822380.11721-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:

> /dev/hdb1	/dosd	vfat	defaults
> /dev/hda1	/dosc	vfat	defaults
> 
> This mounts the partitions correctly. However, I am able to access these
> mount points only as root, and not as a user.  I would prefer that these
> vfat partitions be writable by root alone, but be readble for all users on
> the machine. How can I fix that?
> 
> Thanks,
> 
> -K

/dev/hdb1	/dosd	vfat	defaults,owner,user
/dev/hda1	/dosc	vfat	defaults,owner,user

HTH

Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
