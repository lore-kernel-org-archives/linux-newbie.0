From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: multiple X displays and nvidia
Date: Tue, 06 Apr 2004 11:35:33 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407279E5.9040805@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

PII 266 Mandrake-9.2. Icewm 1.2.13pre3. XDM. XFree86 4.3.
This machine also has (or rather, HAD) an X display exported from:
PIV 1.8 G Mandrake-9.2. GDM. XFree86 4.3. (Started from inittab).
The PII has a dual monitor display using Xinerama. Both video cards used 
the nv driver. Since installing nvidia drivers, only the remote display 
from the PIV starts. Commenting out the line in inittab allows the local 
display to start, after which trying to start the remote display from 
the command line fails. In both cases, the error message in 
XFree86.0.log or XFree86.1.log is:

(EE) NVIDIA(0): Failed to allocate external video decoder object
(EE) NVIDIA(0):  *** Aborting ***

Fatal server error:
AddScreen/ScreenInit failed for driver 0

Any ideas anyone?
TIA
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
