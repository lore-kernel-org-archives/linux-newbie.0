From: wa4chq@netscape.net (neil t)
Subject: Re: lilo questions.......
Date: Mon, 25 Nov 2002 18:29:55 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <36CC57E9.6206A156.0006BEFC@netscape.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hey Ray-
Thanks for the reply.....
Let me see if I can explain some of the things I wrote....

Ray Olszewski <ray@comarre.com> wrote:

>*Making* this directory is not enough; you then need to *mount* the 
>appropriate filesystem on it. (And using *s in directory names is bad 
>practice, BTW.)

I was using the * as a highlight for this note

>>------------image=/boot/vmlinuz
>>       -------------label=*mandrake*
>>       -------------root=/dev/hda3
>>       -------------read-only
>
>Not sure how the --------- bits got here, but they do not belong

again using --------- as highlight, just for the note....

>2. Make a separate filesystem (probably on /dev/hda) that all distros mount 
>as /boot, and put all the kernels in it. Their names need to be dsitinct, 
>of course ... if I did this, I'd use names like vmlinuz-2.4.19-deb and 
>vmlinuz-2.4.19-mandrake. Then use the appropriate names on the various 
>image= lines.
>
>3. Retain separate /boot diretories for each distro, and edit the lilo.conf 
>you install from appropriately. For example, if you were installing lilo 
>from Debian, your various entries might look like this --
>
>         image=/mnt/mandrake/boot/vmlinuz
>                 label=*mandrake*
>                 root=/dev/hda3
>                 read-only
>         image=/boot/vmlinuz
>                 label=Debian
>                 root=/dev/hdb2
>                 read-only
#2 and #3 look interesting.  If you were doing this, which would you use?
 Are the Kernel numbers what you show in example 2 following vmlinuz?


>>it says Install LILO in the MBR 
The "it" is the  manual I copied for installing Debian Woody said this:
"The next three selections refer to setting up the system to boot up.
* Select 'Make System Bootable
* Select the default 'Install LILO in the MBR and press Enter when the "Securing LILO" message appears."

>I mounted it from mandrake...
The "it" here refers to the drive that contains Debian...hda1

>it was added to the lilo list. (this refers to Debian)
 
>>understand that it will run from there, but not really perfect.
Here I mean that by not using the boot disk for Debian and instead scrolling down to Debian when the "graphic" LILO appears I find that Debian boots but does not run the same as when I use the boot disk.
 
>>"kernal" there?  I know it contains important info from the installation 
Here about coping the Kernel is a question...I really don't know what goes  on a boot disk.  Referring to as 'Kernel' is because I don't know what to call it....

>when I boot from floppy, wvdial works 'fb', but from lilo
I bet the other fellow (the ham radio op) who has also been helping me with the LILO stuff knows what 'fb' means...!
 
>And "not really perfect" is not very descriptive as a trouble report.
Sorry, I sometimes have trouble describing things in detail.  I guess as an example I will describe something similiar when I first got involved with a simple linux that ran from dos called "Basiclinux".  I don't remember all of the details, but in the beginning some of the stuff like the mail program and pppsetup were stored on a floppy.  If I didn't use the floppy, I would have to set the mail up again, and the pppsetup too.  This probably isn't a good description, but all I know is last night if I didn't use the boot disk for Debian, I would get disconnected after entering 'wvdial'.  I have since then installed Basiclinux in its own partition on my Toshiba laptop.
I will give it (debian) a try once more without the floppy to see if the same thing happens.

Thanks for the info and help.....
Neil T.


>-------------------------------------------"Never tell me the odds!"--------
>Ray Olszewski                   -- Han Solo
>Palo Alto, California, USA            ray@comarre.com
>-------------------------------------------------------------------------------
>
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
