From: wa4chq@netscape.net (neil t)
Subject: Re: lilo questions.......
Date: Mon, 25 Nov 2002 06:46:47 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02999E7B.406CD980.0006BEFC@netscape.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Hi Chuck--

Chuck Gelm <nc8q@gelm.net> wrote:
>Are you looking for a better Debian Woody 3.0 regular install
>than the one you copied?  Which one did you copy?

I am not sure I understand.  I had a copy of the installation procedures for Woody 3.0, it looked like to me that they were setting it up for something other then a normal, everyday type of person. This is a quote from the article..."The options we select in this procedure are more appropriate for a server system..."  I copied it from www.aboutdebian.com/install3.htm (I think that is correct)

> But you never mentioned running /sbin/lilo  !!

I have seen in other books to just run 'lilo', but I did run /sbin/lilo.

>> Ok, so I guess if I install Debian 3.0 or even Red Hat again, it will replace my existing bootloader but I will still have the option to make Mandrake the default.  This is determined when I edit /etc/lilo.conf.

> ...and run /sbin/lilo.

OK, let me see if I understand this.....I have Mandrake installed already.  
If I decide to install another distro on another partition, it will install 'lilo' and be the default system.  If I now want to add the already installed Mandrake, I will first have to (in the other distro) do this:

------------mkdir /mnt/*mandrake*
then edit:

------------/etc/lilo.conf
add below "other distro" info:

------------image=/boot/vmlinuz
      -------------label=*mandrake*
      -------------root=/dev/hda3
      -------------read-only
save and run /sbin/lilo

Is that right?....I hope....!!!
I went ahead and cleaned out the hd that contained RH 7.2 yesterday.  I installed Deb woody 3.0 (didn't set up X yet) I had the options to make the system bootable, or it says Install LILO in the MBR (I made a boot disk).  I mounted it from mandrake (as a practice) and edited /etc/lilo.conf and ran /sbin/lilo and it was added to the lilo list.  I understand that it will run from there, but not really perfect.  That is why I have the disk.  I am not sure, but is it because I copied the "kernal" there?  I know it contains important info from the installation there ie:  when I boot from floppy, wvdial works 'fb', but from lilo, I get disconnected.
Am I on the right track?  !!
I am enjoying tinkering with this stuff....kinda like building my own qrp rigs.....
72 es tnx om
Neil wa4chq

>> secret is mounting all your disks/partitions where "lilo" can
>  reach them all in one go, you can define any partition "in use
>  or not" as long as it is mounted.
>          ^^^^^^^^^^^^^^^^^^^^^^^^
><snipped to end>
>So,
> if all the partitions you want to choose to boot from are mounted,
> run /sbin/lilo.
>
>HTH, Chuck
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>


-- 
Arachne/DRdos-Mandrake9.0/Basiclinux-QrpHamRadio
http://www.qsl.net/wa4chq
 


__________________________________________________________________
The NEW Netscape 7.0 browser is now available. Upgrade now! http://channels.netscape.com/ns/browsers/download.jsp 

Get your own FREE, personal Netscape Mail account today at http://webmail.netscape.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
