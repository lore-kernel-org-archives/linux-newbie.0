From: Peter <heisspf@skyinet.net>
Subject: Udev Mysteries
Date: Tue, 06 Jun 2006 12:37:48 +0800
Message-ID: <200606060437.k564bmtw003755@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

After udev messed with the symlink of /dev/modem I have now problems with 
sound.

a) alsactl restore does not restore anymore with the initial result that in 
skype I    could not be heard. :-(

b) flashplayer has not more sound.

Doing google on udev skype, udev alsactl and udev flashplayer shows that I am 
not alone, however, could not find specific answers except for alsactl which I 
have not yet tested.

To solve the problems I have to do aumix l,s manually after which I can be 
heard on skype except I have to be closer to the mike then before the change 
to udev.

Doing 'alsactl restore' on the console has no effect just as on booting.

To make flashplayer have sound I have to 'chown heisspf:root /dev/sound/dsp' 
from root:root.

It seems udev was released w/o proper testing that it really works. To do this 
is incomprehensible for me.

Any ideas how to correct these udev mysteries?

Thanks & regards



-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
