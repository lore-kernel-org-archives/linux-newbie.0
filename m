From: "Richard Genoud" <richard.genoud@gmail.com>
Subject: Re: Kernel Patch and Config Issues
Date: Thu, 9 Oct 2008 10:30:46 +0200
Message-ID: <80b317760810090130w2fd200cfq343c16f60e7b3dba@mail.gmail.com>
References: <703270f30810082113s50ed80ccg6d886519d907f4f7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=PxrA8/33/+AfVAndr8539kEPOe4yaDnoYaMWRmGtIVM=;
        b=uo1pEc/dpfAPRhIrCYAWxLXwN96b8oV07H/4XrGTcuyoz+1kxGHtUkNoqpIv0MEVrt
         yImRBoiveNXFZOGcvW/N3jinq5YtGh+ctPEm/L7o3NLhc3225744uQPFvpA9hqY/tFx2
         Deg7h/1C4MeL7U8K4oCeaXqoWviJGigMNGXYk=
In-Reply-To: <703270f30810082113s50ed80ccg6d886519d907f4f7@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Phil C <hpypenguin.lists@gmail.com>
Cc: linux-newbie@vger.kernel.org

2008/10/9 Phil C <hpypenguin.lists@gmail.com>:
> I am having two issues with compiling my kernel. I am using 2.6.26 source.
>
> The first issue has to do with config and mkinitramfs. I have been
> messing with kernel to see what happens in different situations and I
> can't figure out why my expectation is different from the outcome
> here. The steps I'm using are;
>
> make mrproper
>
> make allmodconfig
>
> make
>
> make modules_install
>
> make install
>
> mkinitramfs-kpkg -o /boot/img-2.6.26 2.6.26
>
> I anticipate the outcome to be that I will have all drivers loaded as
> modules yet my wireless network card won't work. I was under the
> impression that mkinitramfs without options would load all modules at
> boot, is this not the case? If not what steps would I need to take to
> ensure that all modules are loaded at boot.

the modules loaded at boot are controlled by /etc/modules  (or
/etc/modules.conf), not by initramfs.
please have a look at man modules or man modules.conf

> The other issue is with patching. I am attempting to patch the source
> with the -5 patch using the command;
>
> patch -p1 < patch-2.6.26-5.tar.gz
>
> from the top level of the source tree. I get an error saying that the
> entire patch is garbage. I checked the man page for patch already and
> didn't see anything to suggest that I was doing the wrong thing here
> so I'm pretty confused on this one.

well, you file is gzipped, try :
bzcat patch-2.6.26-5.tar.gz | patch -p1
or
gunzip --stdout patch-2.6.26-5.tar.gz | patch -p1

> Thanks in advance for the help
>
>  - Phil C


richard
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
