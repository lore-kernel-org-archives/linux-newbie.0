From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: accessing USB memory stick
Date: Thu, 5 Feb 2004 10:17:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040205151721.GA588@lnx2.w8mch.ampr.org>
References: <Pine.LNX.4.44.0402041422210.17345-100000@legolas.personal.engin.umich.edu>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44.0402041422210.17345-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 02-04, Karthik Vishwanath wrote:
> Hello,
> 
> How do I mount a usb memory stick? I do see something connected to usb on
> the output mount (I am running Redhat 9):
> $ mount | grep usb
> usbdevfs on /proc/bus/usb type usbdevfs (rw)
> 
> On plugging the device into the machine and looking at dmesg, shows me 
> stuff (which I think is connected to plugging in the usb stick):
> 
> hub.c: new USB device 00:1d.7-6, assigned address 3
> WARNING: USB Mass Storage data integrity not assured
> USB Mass Storage device found at 3
> 
> Is the device being recognized? How can I access it? 
> 
> Thanks,
> 
> -K
> 
> ---------------------

Greetings: FWIW - here's a snip of my dmesg pertaining to my flash
drive:
------------------------------------------------------------------------------
usb.c: registered new driver usb-storage
scsi1 : SCSI emulation for USB Mass Storage devices
  Vendor: Link-Max  Model: UL-641            Rev: 7.77
  Type:   Direct-Access                      ANSI SCSI revision: 02
Attached scsi removable disk sda at scsi1, channel 0, id 0, lun 0
SCSI device sda: 128000 512-byte hdwr sectors (66 MB)
sda: Write Protect is off
 sda: sda1
WARNING: USB Mass Storage data integrity not assured
------------------------------------------------------------------------------
Merely mounting /dev/sda1, you can write and read per a normal
drive.. If your 'dmesg' doesn't report an assign scsi channel to
the drive, something else is amiss..

Be advised I've had to return at least one vendors' flash drive not
responding and not usable with Linux... I've found the few I've tried
to be a mixed bag of tricks.. I don't think they've, the producers,
gotten it all together completly yet... <grin> The one I am now using
is crazy in that it works automagically with Linux but Win98FE and
Win98SE flaky, and Win95USB negative, the design targets.... Go
figure, eh?

HTH a bit. Cheers.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
