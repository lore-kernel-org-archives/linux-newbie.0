From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian -> sound modules
Date: Thu, 26 Dec 2002 09:15:28 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021226085851.020b2100@celine>
References: <3E0B0DDC.9040705@rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E0B0DDC.9040705@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Comments inline below.

At 03:10 PM 12/26/02 +0100, Kurt Sys wrote:
>Hello,
>
>I'm rather a newbie to Linux (and to this list) and I've been trying 
>already some different distro's. In my opinion, Debian as (by far) the 
>best one (I've tried RedHet, Slackware, which I didn't like and SuSe, 
>which I think is also OK), but there are a few things I can't get right. I 
>have both a desktop and a laptop... and after a few months, I would like 
>to get everything working.
>
>1. I just can't get sound working. I installed Woody, but it coming with a 
>kernel which doesn't support sound (as far as I understand all well), so I 
>recompiled the kernel with different sound modules (I compile the 'debian 
>way' and when I 'make menuconfig', I choose some different 'sound 
>modules'). On my desktop, I have a very standard soundblaster (PCI 128, 
>and I know I/O, IRQ, DMA, etc), on my (Dell Inspiron 2650) laptop, it's 
>rather new and I now it's a 'integrated intell sound controller'. What's 
>the problem?
>I tried to run sndconfig, but it complains about my kernel. It asks for a 
>kernel at least 2.2... and I use 2.2.20 on my desktop and 2.4.16 on my 
>laptop. I don't get it. I think it searches for a module, sb or snd. When 
>I try to 'insmod' the 'soundblaster' (100% compatible things, actually the 
>ones I need!?) modules, it failes, for some reason or another. I don't 
>know why... So I tried alsa and installed, alsa-headers, alsa-modules (but 
>Debian tells me I have to use alsa-base, so that's what I do), alsa-utils 
>and alsaconf. If I run alsaconf, I can choose some cards and give the 
>right 'parameters', but alsa then it fails again, because 'can't locate 
>module snd'.
>It's more or less the same story for my laptop... although I have actually 
>no idea which 'modules' I have to choose for the soundcard which is 
>'integrated'.

First, if you want detailed help, you need to describe the problem better. 
"it failes, for some reason or another. I don't know why" is a bit vague to 
diagnose. There should be an error message if your "insmod" attempt fails, 
and if it succeeds, then you need to explain waht you mean by "fails" in a 
bit more detail.

My current kernel (2.4.19, compiled by me. on Sid) runs a stock 
Soundblaster card using the Ensoniq driver that I compiled in (Creative 
Ensoniq AudioPCI 97 (ES1371) in Sound, using "make menuconfig"). If you are 
using the out-of-the-box 2.2.20-compact kernel that Debian-Woody initially 
installs ... I believer it does not include ANY sound support (it's trimmed 
down to fit on a boot/rescue floppy), and you need a full-size kernel-image 
package (or your own compile from kernel-source).

In any case, you should be using modprobe, not insmod ... it will sort out 
module interdependencies for you (as long as you've compiled the ones you 
need).

>2. I want to get to a network with a Windows NT server. I know I have to 
>use samba, but again, some trouble. I didn't manage to mount the 
>filesystem, so I looked for some tools and found one: xsmbrowser. With 
>this thing, I'm able to connect so the server and read all the files etc, 
>but I can't mount the filesystem, even not as root. I really have to be 
>able to mount the filesystem, because I can't print if it's not mounted (I 
>guess). So, it is surely possible to connect to the server and read the 
>stuff, but I really want to know how I have to mount the whole filesystem. 
>I have a password for my own directory (although if I use xsmbrowser, I 
>can read everyones documents with that passwd, but that has something to 
>do with some 'server things', I guess) and I have the password of the 
>administrators (although I'm not really an administrator...).

Once again, "I can't mount the filesystem, even not as root" is less 
informative than your telling us the actual command you enter and the error 
message, or other actual failure, you get in response. In particular, how 
does what you WANT to do differ from what you say you CAN do ("connect so 
the server and read all the files etc")? The "etc" part in particular 
leaves my mystified.

Do you have smbfs support in your kernel (either compiled in or loaded as a 
module)?

>Any help? Any suggestions? Thanks,

Details are at the heart of troubleshooting, Provide them in your followup.


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
