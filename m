From: chuck gelm <chuck@gelm.net>
Subject: Re: CD-RW-Drive & cdrecord & ATAPI
Date: Wed, 29 Dec 2004 14:17:58 -0500
Message-ID: <41D302E6.2080903@gelm.net>
References: <5.1.0.14.1.20041229074910.0217b010@celine>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041229074910.0217b010@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux <linux-newbie@vger.kernel.org>

Ray Olszewski wrote:
<snip>
> Others have said a lot here already, but I want to raise more 
> fundamental puzzlement. I didn't know cdrecord (see below) was even able 
> to burn to atapi devices under 2.4.x kernels. You might want to report 
> the error messages in more detail.
<snip>

Hi, Ray:

  I am using Slackware v9.1, kernel 2.4.22, and a
"CRW-5224A, ATAPI CD/DVD-ROM drive"

   'cdrecord' can 'burn' to ATAPI devices with SCSI emulation.

If append="hdc=ide-scsi" is parsed in lilo.conf during boot
( and you are using lilo as the boot loader
   and /dev/hdc is your CDROM-RW device ;-)
then applications that default to using SCSI devices will use
the ATAPI device.  Here is a script that I use to burn data to
my ATAPI CDROM-RW device:

#!/bin/bash
#
# /usr/local/bin/burncd.sh
#

cat /usr/local/bin/burncd.sh

echo ""
echo " First argument is <$1>."
echo "Second argument is <$2>."
echo ""

eject -t ; close the CDROM tray

if [ -n $1 ] ; then
  if [ -n $2 ] ; then
   cdrecord -v dev=0,0,0 fs=64M speed=$2 driveropts=burnproof $1
  else
   echo "Second argument is burn speed [1 - 52] and must not be null."
  fi
else
  echo ""
  echo "First argument is filename.ext and must not be null."
  echo ""
fi
mount /mnt/cdrom && ls -l /mnt/cdrom && umount /mnt/cdrom
echo $1
eject

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
