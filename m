From: chuck gelm <chuck@gelm.net>
Subject: Re: Can a normal user format, mount the card
Date: Wed, 09 Nov 2005 07:34:27 -0500
Message-ID: <4371ECD3.9030601@gelm.net>
References: <3AEC1E10243A314391FE9C01CD65429B04F016@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3AEC1E10243A314391FE9C01CD65429B04F016@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Hi, Mukund Jampala:

  Mount; yes.  Format; I don't know.

  fstab:
/dev/sda1	      /mnt/flash     msdos     noauto,users
/dev/cdrom            /mnt/cdrom     iso9660   noauto,users,ro  0   0

HTH, Chuck

Mukund JB. wrote:
> Dear users,
> 
> I am just here to confirm whether a normal user can mount and format a device.
> As for as I rememder a normal user is not allowed to mount. I tried it & I am not able to do it.
> 
> Then fhow can a normal user access a device. I am seeing that he is not even able to place files into a mounted device.
> 
> Regards,
> Mukund Jampala
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
