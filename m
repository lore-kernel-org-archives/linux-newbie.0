From: R S <linuxrocks94556@yahoo.com>
Subject: Wi-Fi driver
Date: Wed, 16 Oct 2002 11:44:23 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021016184423.4085.qmail@web9401.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello All!

I am running Redhat 6.2 and Linux 2.2.19 on a Dell
Latitude LM Pentium 133 with 72 Mb RAM, and was
wondering the best way to get a Lucent Orinoco Gold
PCMCIA card to work. But I get the following:

executing modprobe -r wvlan_cs

initializing socket 1

socket 1: Lucent Technologies WaveLAN/IEEE Adapter

executing: 'modprobe wvlan_cs network_name=## key=## 
enable_encryption=Y

+ /lib/modules/2.2.19-6.2.12/pcmcia/wvlan_cs.o invalid
parameter parm_key_1

insmod failed

modprobe exited with status 255

insmod exited with status 1
get dev info on socket 1 failed 
resource temporarily unavailiable

Can anyone tell me where I should begin looking in
order to resolve this?

thanks, 

Richard Spencer

__________________________________________________
Do you Yahoo!?
Faith Hill - Exclusive Performances, Videos & More
http://faith.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
