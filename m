From: Ray Olszewski <ray@comarre.com>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sun, 24 Oct 2004 09:07:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041024085546.020676a8@celine>
References: <5.1.0.14.1.20041023211235.01feb690@celine>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
 <5.1.0.14.1.20041023211235.01feb690@celine> <Pine.LNX.4.58.0410240025400.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410240025400.1287@debian-emach>
References: <5.1.0.14.1.20041023211235.01feb690@celine>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
 <5.1.0.14.1.20041023211235.01feb690@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:45 AM 10/24/2004 -0500, James Miller wrote:
[...]
>A final stray thought: don't know if you caught my earlier statement about
>entering atyfb in /etc/modules.  I created an initrd that, so far as I can
>tell, contains this module.  However when I boot with the video=atyfb:etc,
>the module doesn't seem to load.

No, I missed this before ... or actually, I saw it but didn't follow then 
what you were saying.

initrd doesn't work that way. It loads modules *after* the kernel itself is 
loaded, but *before* the "real" root filesystem is mounted. So it provides 
a way to supply, for example, modules needs to mount disk drives to the 
kernel before the kernel actuallt has to mount the drive. (You could, for 
instance, make the ide stuff modules this way.)

I believe initrd module loading does *not* work with kernel arguments of 
the sort you are using. Instead, those arguments need the relevant drivers 
to be in the kernel itself. As a consequence, and since we (or I, at least) 
don't know what is compiled in tht kernel you are using, it is hard to 
guess how the kernel is trying to deal with the bootline agrument you are 
passing it.

The way to do your approach is to use /etc/modules to load a framebuffer, 
then use fbset (which you can put in an init script) to do the mode 
selection. The way you are actually doing it, from a console, should be an 
acceptable equivalent.

I do wonder, though, if trying to change framebuffer settings *after* X is 
already using the framebuffer is introducing a problem. You might try 
preventing X from loading (remove the symlink to /etc/init.d/xdm from your 
default runlevel directory) and see if you can modify framebuffer settings 
any more readily then.

>So I resorted to adding atyfb to
>/etc/modules,

Which one? The one on the root filesystem, or the one in the initrd image?

Probably the second. In any case, it's being installed too late for 
bootline parameters to affect it. That's why you need to use fbset.

(Now, I wonder if the kernel itself is still trying to use vesafb, or maybe 
even vgafb ... that's the trouble with using precompiled kernels, the need 
to guess about what's in them ... during the init sequence, before xdm 
comes on, do you get the modified display with the pengiun at the top? If 
so, this is a sure indication that it is using *some* framebuffer at that 
point. And if X is set up with Option "UseFBDev" "true.", it is looking for 
a framebuffer when it loads )

>after which it started loading and showing up in dmesg--such
>as in portions I've included in previous messages.  Ideally, I should have
>this module compiled into the kernel, I suppose.  But I'm trying to defer
>anything like that in hopes that I can see if it even works first (e.g.,
>if I have sufficient video RAM to support the resolution I need atyfb
>for).





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
