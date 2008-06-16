From: Suresh Rajashekara <suresh@mistralsolutions.com>
Subject: Re: unknown partition table
Date: Mon, 16 Jun 2008 10:56:59 -0700
Message-ID: <4856A96B.7040807@mistralsolutions.com>
References: <a1d91fa0806161043w108cfe67o51ebc0ec45cb8fe7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-omap-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :organization:user-agent:mime-version:to:cc:subject:references
         :in-reply-to:content-type:content-transfer-encoding:sender;
        bh=nbM7Zm3MINhREqDlxfHXZSc5hd9U1LIVw6oTA9JEmbs=;
        b=KRA4BgFuwIEMcz1D1Se9NWv3I22mteE391UjfaCVvD8Jxp26zVZT34uYf5AvDOLstY
         nXbqJm+94m9G8z/r1+Cex1qt/Nsn8UH2OiYrUr2JEuPv3gwg2ma1RDgtCkE2eImljCdk
         vpcWytHA3ZlWX8qshIkD9s1nvyFm3bvKwfJ7A=
In-Reply-To: <a1d91fa0806161043w108cfe67o51ebc0ec45cb8fe7@mail.gmail.com>
Sender: linux-omap-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: mohammed shareef <mdshareef@gmail.com>
Cc: omap <linux-omap@vger.kernel.org>, linux-newbie@vger.kernel.org

mohammed shareef wrote:

> sda: Write Protect is off
> sda: assuming drive cache: write through
>  sda:<7>usb-storage: queuecommand called
>  unknown partition table
> sd 0:0:0:0: Attached scsi removable disk sda

Try formatting once. Use fdisk (on Linux) to format it and make partitions.

Regards,
Suresh
