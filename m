From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian -> sound modules
Date: Fri, 27 Dec 2002 09:04:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021227083019.02107cd0@celine>
References: <5.1.0.14.1.20021226085851.020b2100@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E0C3710.7070904@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ok. With some additional details provided, let's see what I can do to help, 
at least with your sound problems. Inline below.

If you need to post another followup, please:

         A. Be as specific as you possibly can about what the sound 
hardware is.
         B. Be very clear which system (the desktop or the laptop) any 
particular bit of information comes from.
         C. Provide unedited reporting of commands and responses (except 
for passwords, but NO other exceptions, please).

At 12:18 PM 12/27/02 +0100, Kurt Sys wrote:
[...]
>OK, here it comes (I ran 'modconf' and tried to install a driver/module, 
>such as the '100% soundblaster compatible' one, but some others give the 
>same result, and the ones that don't give 'installation failed' are 
>actually not alright since I get the message that 'device /dev/dsp doesn't 
>exist' if I run 'cat /somepath/somefile.wav > /dev/dsp'):
>
># /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: init_module: no such 
>device
># Hint: insmod errors can be cause by incorrect module parameters, 
>including invalid IO or IRQ parameters
># You may find more information in syslog or the output from dmesg
># /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod 
>/lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o failed
># /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod xxxxx.o failed
># Installation failed

I'm not actually familiar with modconf; does it really report its results 
substituting "x.x.xx" for the kernel version? And what is module "xxxxx.o"? 
Is that gobbledygook out of modconf, a module I'm unacquainted with, or 
your unwise attempts to edit the output (General Rule #1: NEVER edit error 
output except for passwords, and make it unambiguously clear when you do 
even that).

The "no such device" response on the first line usually means that the 
module did not find hardware to initialize. So it suggests that "xxxxx.o" 
is not the right module for the sound hardware on whichever of your systems 
you are reporting about here.

As to "/dev/dsp" ... I can't tell from what you sent whether the /dev/ 
entry itself exists or not ("ls -l /dev/dsp*"). I'm not even certain which 
of your two systems you get this message from. If it doesn't exist, you'll 
need to create it, which you can do manually with "mknod". There is 
probably a Debian package that sets up this sound stuff (the needed /dev/* 
devices, I mean), but if so, I forget its name. If it does exist but using 
it returns that message, that means that /dev/dsp is not pointing to any 
real, physical device on the system (that is, you don't have a working 
sound module installed in the kernel).

>I'm quite sure my soundblaster is sb 128 PCI and I know the IRQ, IO and 
>other parameters (at least for my desktop). On my laptop, I already get 
>some sound, but it quite often, it's like it's ging in 'overdrive'.

I don't really know what "overdrive" is "like". Do you perhaps mean it 
plays at double speed? (General Rule #2: Describe symptoms as exactly as 
you possibly can. Metaphorical trouble reports are hard to interpret.) If 
so, this is indicative of the wrong module ... one that *almost* works but 
isn't really right for your sound card.

>>  If you are using the out-of-the-box 2.2.20-compact kernel that 
>> Debian-Woody initially installs ... I believer it does not include ANY 
>> sound support (it's trimmed down to fit on a boot/rescue floppy), and 
>> you need a full-size kernel-image package (or your own compile from 
>> kernel-source).
>
>Well... if you use 'menuconfig' (for kernel 2.2.20), you can choose some 
>sound support, including the ones I think I need (100% soundblaster 
>compatible), but I might be wrong. I already compiled the kernel, with the 
>modules (not directly into the kernel), and I try to compile them 
>permanently by using modconf, but this fails.

Yes, a *custom-compiled* 2.2.20 (or even a full kernel-image package for 
it) will have the soundcard modules. Not using modconf myself, I don't know 
how to use it to "compile them permanently" (and the man page doesn't tell 
me). I'm not even sure what the phrease means.

 From what you wrote here, my best *guess* is that you have not yet found 
the right module for your sound card. One approach is simply brute force -- 
compile all the soundcard modules, then modprobe (NOT insmod or modconf) 
them one by one until you find one that works. Then add that one to 
/etc/modules .

As to your SMB problems ... the additional info you provided suggested 
nothing to me. The (presumed) edits you did even made it hard for me to 
figure out what it was saying in places. So I'll leave that one for someone 
else to take a try at.

[rest deleted]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
