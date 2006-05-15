From: Andrew <ald2@arrakis.es>
Subject: scsi hd
Date: Mon, 15 May 2006 21:00:36 +0200
Message-ID: <4468CFD4.6090202@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I am trying to install an scsi hd (IBM DDRS 34560) on a P4 runnning 
Slackware 10.2 / 2.6.13. The hd came out of a pII/300 I found and which 
worked perfectly once I changed the ram. At the moment it has an ntfs 
system on it.

The scsi adaptor it was attached to is an Adaptec AHA-2940U/UW/D / 
AIC-7881U. I think the right module is the aha152x.

CONFIG_SCSI = y

I don't know what else I need configured.

The aha152x module loads without errors. Where do I go from here? 
/proc/scsi/scsi does not list any devices. Presumably I am missing one 
or more steps.

TIA,

Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
