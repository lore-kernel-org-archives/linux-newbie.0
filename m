From: smertz <smertens@mho.com>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 16:59:13 -0600
Message-ID: <d34drn$722$1@sea.gmane.org>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine> <d349ga$qln$1@sea.gmane.org> <4255B0C6.5000203@gelm.net>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4255B0C6.5000203@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


> 
> 
> mount /dev/sdc1 /mnt/thumb

Trying this gives me the error
mount: special device /dev/sdsc1 does not exist


dmesg lines again
usb 1-1: new high speed USB device using address 4
scsi3 : SCSI emulation for USB Mass Storage devices
   Vendor: Generic   Model: STORAGE DEVICE    Rev: 1.22
   Type:   Direct-Access                      ANSI SCSI revision: 02

> 
> HTH, Chuck
> 
>> Red Hat Enterprise Linux ES release 4 (Nahant)
>>
>>
>> $ cat /proc/scsi/scsi
>> Attached devices:
>> Host: scsi0 Channel: 00 Id: 00 Lun: 00
>>   Vendor: ATA      Model: ST3200822AS      Rev: 3.02
>>   Type:   Direct-Access                    ANSI SCSI revision: 05
>> Host: scsi2 Channel: 00 Id: 00 Lun: 00
>>   Vendor: eM       Model: Bay Reader       Rev: 1.00
>>   Type:   Direct-Access                    ANSI SCSI revision: 02
>>
>>
>>
>> Thanks
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
