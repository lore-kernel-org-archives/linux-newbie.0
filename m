From: James Miller <jamtat@mailsnare.net>
Subject: RE: USB devices, mount points and fstab
Date: Fri, 30 May 2003 10:45:29 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305301034310.1059@homenet>
References: <BKEGKPICNAKILKJKMHCAOEOHEBAA.Riley@Williams.Name>
 <1054129305.20167.28.camel@dhcp22.swansea.linux.org.uk>
 <Pine.LNX.4.53.0305291221530.1059@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0305291221530.1059@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

What about gui apps that help one keep track of disks ("block devices"?)
and what /dev node(?) they occupy?  I know such things exist.  I used to
use Mandrake, for example, and it had this system utility called "Mandrake
Control Panel."  It was by using this that I initially discovered that the
computer was seeing my original USB HD as a scsi device.  Mandrake Control
Panel has a section called "mount points" where it gives a graphical
display of all disks hooked up to the system and tells whether they are
mounted or not.  It doesn't just rely on fstab for its information about
drives: my original USB HD appeared unmounted under "mount points" as sda1
as soon as I hooked it up to the system, and before I did any editing to
fstab (the gui utility will actually modify fstab for you to reflect the
new disk if you tell it to).  Does anyone know of any other such gui apps
for Linux?  I've got a "double cheese burger with the works - plus"
install on the Libranet system I'm using now, so there are tons of apps on
here already.  But none of the ones I've tried thus far work like the
Mandrake Control Panel I've outlined above.  Further input on such apps
from any gui-philes on this list?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
