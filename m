From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: olivetti p100 with onboard ATI Mach64
Date: Fri, 02 May 2003 11:21:50 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EB238AE.4020506@arrakis.es>
References: <5.1.0.14.1.20030430114653.01f79408@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030430114653.01f79408@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

>
>
>>
>> I have two machines as described above and both give me exactly the 
>> same problem. Soon after booting from a Linux floppy the screen goes 
>> blank.
>
>
> You mention testing with tomsrtbt. As I recall, it uses a framebuffer 
> device to let it set the video mode.
> Offhand, I don't know whether any of the full-strength distros do not 
> use the framebuffer by default, particularly in their installers 
> (since you talk about testing with floppies). Offhand, I know that the 
> router-oriented LEAF distros (leaf.sourceforge.net) do not use it, and 
> probably other floppy-based distros (trinux? maybe) also omit this. So 
> you might try one of them to see if this is your problem. If it is, 
> you can easily compile a custom kernel that leaves out framebuffer 
> support, assuming you are working toward a hard-disk install.

Looks like you were right. Bering boots to a console prompt with no 
trouble. (It must be great to know so much). Next step is indeed to go 
for a hard-disk install, which means I can't put off learning to compile 
a kernel any longer. Presumably I can do this on another machine and 
then transfer it (?).
I was thinking of installing something like Peanut. What do you reckon? 
I can probably rustle up about 800 megas of disk space on two disks. The 
machine will not be used for anything more ambitious than 
text-processing, Internet, etc.
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
