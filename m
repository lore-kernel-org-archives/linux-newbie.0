From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Compiling kernel for a different machine.
Date: Fri, 17 May 2002 19:21:10 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205171921100I.27213@unix.pa3gcu>
References: <20020517160123.GB797@prester.hh59.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020517160123.GB797@prester.hh59.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Axel H. Siebenwirth" <axel@hh59.org>, linux-newbie@vger.kernel.org

On Friday 17 May 2002 16:01, Axel H. Siebenwirth wrote:
> Hello,
>
> 1)
> I guess it should be ok compiling a kernel for one machine on a second one?
> So if I have done so, it there all I need to copy over to the other machine
> System.map and bzImage. Am I right about that?

You have had some hints from others but no one as yet has said the magic 
word, "Will it boot",,,,,?????
Answer Yes if made too or the two machines use the same device for there root 
filesystem.
Why the same device,?
Details;
Machine one where the compiling is done will compile an image, in that image 
there is a defined "BOOT_DEVICE" if both machines have (say for the sake iof 
easyness the same device) /dev/hda1 then there is no problem, if machine one 
has /dev/hda1 and the target machine has /dev/hda2, NO it wont boot out of 
the box.

How do we get it to boot, answer easy;
rdev bzImage /dev/hdxx where xx is the drive and partition nr.
Or define ROOT_DEV = /dev/xxx in the Topdir Makefile

Recap;
use rdev # rdev -h or 'man rdev'
copy the image to the new machine with ftp (for example)
create /lib/modules/version number (on the destination machine)
ftp the compelete /lib/modules/version-number tree to the destination machine.
copy System.map to /boot
Edit /etc/lilo.conf on the destination machine, presuming you use lilo,
check all is ok with /sbin/lilo -t
then if no errors occur /sbin/lilo
Reboot.

>
> 2)
> I have checked out X server from cvs. Can I use cvs to track changes made
> to spefific files/directories? I have not got so much out of "cvs log" or I
> made something wrong.

When upgrading a kernel version you do not need to even think about changing 
or upgrading X, if i may say so, if you need to ask howto compile a kernel on 
a machine for another destination then i would certainly not advise you to go 
around updating your X server.
 
>
> Thank you and my best regards,
> Axel Siebenwirth

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
