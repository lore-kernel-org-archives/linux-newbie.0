From: "James Miller (office)" <jamtat@mailsnare.net>
Subject: RE: Slack9.0/Atapi-ZIP250???
Date: Mon, 30 Jun 2003 14:26:24 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306301419160.466@veclin.office>
References: <BKEGKPICNAKILKJKMHCAGEDPEIAA.Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAGEDPEIAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On Mon, 30 Jun 2003, Riley Williams wrote:

> Hi Hal.
>
>  >>> This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
>  >>> internal, as /dev/sda4, as long as I insmod ide-scsi.o..
>  >>> (That file also installs sd_mod.o )..
>
>  >> You're doing this wrong. I have the Atapi Zip100 internal. It
>  >> does not need the ide-scsi.co. Just set it up like this:
>  >>
>  >> /dev/hdc4       /zip            auto    noauto,user 0 0
>  >>
>  >> You only need the scsi stuff when using the external type Zip
>  >> (which I also have).
>
>  > Greetings and - Gad Zooks.. Where did you discover the above?
>  > Everything I've read about ZIP drives say they _must_ use scsi
>  > emulation..
>
> SCSI emulation is needed for PARALLEL PORT and SCSI INTERFACE zip
> drives only - and NOT for ATAPI IDE zip drives - UNLESS you included
> the string "hdc=ide-scsi" as a kernel parameter. If you did that,
> then you told the kernel to use the ide-scsi driver to access the
> drive in the secondary master IDE position independent of whether
> such was necessary or not.
>
Doesn't scsi emulation also apply to USB Zip (and other IDE) devices as
well?  I have an external Zip100 drive that plugs into the computer via
USB, and it appears under the /dev/sdaX node.  It shows up as a scsi
device, even though it's apparently using some sort of IDE to USB trickery
- which makes me believe that these also use scsi emulation.  I could be
seriously miscomprehending - an ever-present danger to my semi
computer-literate cognitive apparatus.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
