From: chuck gelm <chuck@gelm.net>
Subject: Re: Burn Mulitple cd's at once?
Date: Mon, 30 Jan 2006 08:58:41 -0500
Message-ID: <43DE1B91.1040109@gelm.net>
References: <dr8g79$4fb$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dr8g79$4fb$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Todd Patton <Todd@acpdata.com>
Cc: linux-newbie@vger.kernel.org

Todd Patton wrote:

> Does anyone know if this is possible in Linux. I can do it in M$ Win 
> with Nero but the NEroLinux left this feature off. Basically I want to 
> burn 4 copies of a folder or image at the same time. Thank you for any 
> responses.

Hi, Todd:

Assuming that your 4 cd burners are configured as SCSI or SCSI emulation
and are channel 0, id 0, lun 0,1,2,3:

#!/bin/bash
#
# /usr/local/bin/burncd.sh
#

eject
cat /usr/local/bin/burncd.sh

echo ""
echo " First argument is <$1>."
echo "Second argument is <$2>."
echo ""

if [ -n $1 ] ; then
 if [ -n $2 ] ; then
  cdrecord -v dev=0,0,0 fs=64M speed=$2 driveropts=burnproof gracetime=2 
$1 &
  cdrecord -v dev=0,0,1 fs=64M speed=$2 driveropts=burnproof gracetime=2 
$1 &
  cdrecord -v dev=0,0,2 fs=64M speed=$2 driveropts=burnproof gracetime=2 
$1 & 
  cdrecord -v dev=0,0,3 fs=64M speed=$2 driveropts=burnproof gracetime=2 $1
 else
  echo "Second argument is burn speed [1 - 52] and must not be null."
 fi
else
 echo ""
 echo "First argument is filename.ext and must not be null."
 echo ""
fi
eject
mount /mnt/cdrom
ls -l /mnt/cdrom
umount /mnt/cdrom
echo $1
badblocks -vc 256 /dev/cdrom
eject

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
