From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: Debian -> sound modules
Date: Fri, 27 Dec 2002 12:18:40 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E0C3710.7070904@rug.ac.be>
References: <5.1.0.14.1.20021226085851.020b2100@celine>
Reply-To: kurt.sys@rug.ac.be
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> Comments inline below.
> 
> At 03:10 PM 12/26/02 +0100, Kurt Sys wrote:
> 
>> Hello,
>> 1. I just can't get sound working. I installed Woody, but it coming 
>> with a kernel which doesn't support sound (as far as I understand all 
>> well), so I recompiled the kernel with different sound modules (I 
>> compile the 'debian way' and when I 'make menuconfig', I choose some 
>> different 'sound modules'). On my desktop, I have a very standard 
>> soundblaster (PCI 128, and I know I/O, IRQ, DMA, etc), on my (Dell 
>> Inspiron 2650) laptop, it's rather new and I now it's a 'integrated 
>> intell sound controller'. What's the problem?
>> I tried to run sndconfig, but it complains about my kernel. It asks 
>> for a kernel at least 2.2... and I use 2.2.20 on my desktop and 2.4.16 
>> on my laptop. I don't get it. I think it searches for a module, sb or 
>> snd. When I try to 'insmod' the 'soundblaster' (100% compatible 
>> things, actually the ones I need!?) modules, it failes, for some 
>> reason or another. I don't know why... So I tried alsa and installed, 
>> alsa-headers, alsa-modules (but Debian tells me I have to use 
>> alsa-base, so that's what I do), alsa-utils and alsaconf. If I run 
>> alsaconf, I can choose some cards and give the right 'parameters', but 
>> alsa then it fails again, because 'can't locate module snd'.
>> It's more or less the same story for my laptop... although I have 
>> actually no idea which 'modules' I have to choose for the soundcard 
>> which is 'integrated'.
> 
> 
> First, if you want detailed help, you need to describe the problem 
> better. "it failes, for some reason or another. I don't know why" is a 
> bit vague to diagnose. There should be an error message if your "insmod" 
> attempt fails, and if it succeeds, then you need to explain waht you 
> mean by "fails" in a bit more detail.
> 

OK, here it comes (I ran 'modconf' and tried to install a driver/module, 
such as the '100% soundblaster compatible' one, but some others give the 
same result, and the ones that don't give 'installation failed' are 
actually not alright since I get the message that 'device /dev/dsp 
doesn't exist' if I run 'cat /somepath/somefile.wav > /dev/dsp'):

# /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: init_module: no such 
device
# Hint: insmod errors can be cause by incorrect module parameters, 
including invalid IO or IRQ parameters
# You may find more information in syslog or the output from dmesg
# /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod 
/lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o failed
# /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod xxxxx.o failed
# Installation failed


I'm quite sure my soundblaster is sb 128 PCI and I know the IRQ, IO and 
other parameters (at least for my desktop). On my laptop, I already get 
some sound, but it quite often, it's like it's ging in 'overdrive'.

> My current kernel (2.4.19, compiled by me. on Sid) runs a stock 
> Soundblaster card using the Ensoniq driver that I compiled in (Creative 
> Ensoniq AudioPCI 97 (ES1371) in Sound, using "make menuconfig"). If you 
> are using the out-of-the-box 2.2.20-compact kernel that Debian-Woody 
> initially installs ... I believer it does not include ANY sound support 
> (it's trimmed down to fit on a boot/rescue floppy), and you need a 
> full-size kernel-image package (or your own compile from kernel-source).

Well... if you use 'menuconfig' (for kernel 2.2.20), you can choose some 
sound support, including the ones I think I need (100% soundblaster 
compatible), but I might be wrong. I already compiled the kernel, with 
the modules (not directly into the kernel), and I try to compile them 
permanently by using modconf, but this fails.



>> 2. I want to get to a network with a Windows NT server. I know I have 
>> to use samba, but again, some trouble. I didn't manage to mount the 
>> filesystem, so I looked for some tools and found one: xsmbrowser. With 
>> this thing, I'm able to connect so the server and read all the files 
>> etc, but I can't mount the filesystem, even not as root. I really have 
>> to be able to mount the filesystem, because I can't print if it's not 
>> mounted (I guess). So, it is surely possible to connect to the server 
>> and read the stuff, but I really want to know how I have to mount the 
>> whole filesystem. I have a password for my own directory (although if 
>> I use xsmbrowser, I can read everyones documents with that passwd, but 
>> that has something to do with some 'server things', I guess) and I 
>> have the password of the administrators (although I'm not really an 
>> administrator...).
> 
> 
> Once again, "I can't mount the filesystem, even not as root" is less 
> informative than your telling us the actual command you enter and the 
> error message, or other actual failure, you get in response. In 
> particular, how does what you WANT to do differ from what you say you 
> CAN do ("connect so the server and read all the files etc")? The "etc" 
> part in particular leaves my mystified.
> 
> Do you have smbfs support in your kernel (either compiled in or loaded 
> as a module)?

Yes, I have smbfs support in my kernel and I installed the packages smb, 
smbclient.

Here comes the command and the 'error messages':

# mount -t smbfs "//hostname/sharename" localmountpath

# 9xx: session request to xxx.xxx.xxx.xxx failed (Called name not present)
# 9xx: session request to xxx failed (Called name not present)
# Passwd:

I give my password, or password of administrator

# 9xx: session setup failed: ERRDOS - ERRnoacces (acces denied.)
# SMB connection failed

I get the same messages if I put '-o username=kurts' (kurts is my 
username on that server). I also tried different sharenames... And I use 
the IP-adress of the server, just to be sure.


Now, if I run 'xsmbrowser', I just give in:
the name of the server (or IP-address) for the subnet IP
a name for it
the name of the workgroup
advanced options: username and password

If I do this, I can see all the files on the server, all directories, 
all printers, so, the whole filesystem. I can, again still using 
'xsmbrowser', choose to mount the filesystem, or a directory, but it 
gives the message that it's not possible: If I do this as root, the 
message I get is that only root can mount, If I do this as root, I have 
to check the message (but I first need to be logged in as root... which 
is not the case right now.)


> Details are at the heart of troubleshooting, Provide them in your followup.

I hope I provided you some more details right now... As you can see, I'm 
really new :-).


tnx,
Kurt.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
