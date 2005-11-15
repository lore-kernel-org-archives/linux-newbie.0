From: chuck gelm <chuck@gelm.net>
Subject: Re: MPG Video Format
Date: Mon, 14 Nov 2005 22:29:59 -0500
Message-ID: <43795637.90904@gelm.net>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051115105214.25290e02@Peter.meridiantelekoms.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> I downloaded a video clip of 270 MB in mpg format. I would like to burn it
> onto a CD, however, I get the error message with k3b:
> 
> "unable to handle the file due to unsupported format"
> 
> The program graveman tries to write and stops just saying: failed.
> 
> Changing the file.mpg to file.mpeg made no difference.
> 
> The video clip plays nicely with Totem.
> 
> Is there a way to burn it onto a CD?
> 
> Thanks & regards
> 
Hi, Peter:

  I don't know k3b.  I know mkisofs and cdrecord.
If
  Size of folder that contains file.mpg <= size of CD-R media.
  You have a scsi cdrom or scsi emulation.
  Your CD-ROM/RW drive is device 0,0
   mkisofs -o file.iso /path/to/directory/file.mpg
   cdrecord -R dev=0,0 file.iso
-or-

  mkisofs -R /path/to/file.mpg

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
   time cdrecord -v dev=0,0,0 fs=64M speed=$2 driveropts=burnproof 
gracetime=2 $1
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
