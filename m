From: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: Beginner query regarding usbhid
Date: Wed, 25 Mar 2020 22:43:07 +0530
Message-ID: <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=RXLxeC9OROmQQXYGBBBEvN5sljiBTZ5VVdFyLA+6ua4=;
        b=e0Ed5MpREuQ7o1oPQZGuPjGHKWcFg4OGWmXLOH0qOcZrgFs8+q55lZ0VyEt4zyDCu0
         nbNBjBVJWBq4+9p0e08lTof4j3m+Ikdzpwkm5DadcWo9a6TKGAwXScW24KlcLL7gapsc
         +omZRWNNfTI0/z17YeAkDV63aBEOcyr4hciF/gxQ6ZhzfAL+W69s1H7eCPNikyH0N7K+
         P8YL2f99uA+1t4/aFE965BWaT+qk/ju0Lte+JIQfcol9ioaHC7YePgSd7Z5PT5khb/Pv
         W1EhR5V4r2TZLbD1KMPvg94sjMczD2McgrodCfRDUPCxdukC9zXvikbc+/vnc1/BBC8z
         1Bfg==
Content-Disposition: inline
In-Reply-To: <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-9"
To: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Cc: Oliver Neukum <oneukum@suse.com>, linux-usb@vger.kernel.org, linux-newbie@vger.kernel.org

On Wed, Mar 25, 2020 at 04:41:38PM +0100, Hubert CHAUMETTE wrote:
> Le 25/03/2020 15:47, Rohit Sarkar a =E9crit=A0:
> > I was trying to mess around with the driver that drives my mouse. I
> > found out that it is usbhid. I then added a printk statement to the init
> > and exit function of usbhid.
> > I then compiled and installed the usbhid drivers. Post that I ran
> > `sudo modprobe -r usbhid` and `sudo modprobe usbhid` but couldnt observe
> > any logs in dmesg.
> >=20
> > I am certain I am missing something fundamental. Could someone help me
> > with this.
>=20
> Hi,
>=20
> Did you check whether your module was effectively loaded with lsmod?
> What log level did you use in your printk statement? Depending on your
> system default loglevel your logs might not be printed. A quick fix
> would be to use one of the lowest levels (pr_emerg, but pr_err might
> suffice).
> Regards,

Hey,
I did check that module was loaded. And one of the signs was that my
mouse started working after insmod :).

I used printk(KERN_ALERT "some message") for logging. I also tried with
KERN_ERR but no luck.=20

The command I used for building was "make -C /home/rohit/LINUX/kernels/stag=
ing  M=3D$(pwd)"
and for installing the modules: "sudo make -C /home/rohit/LINUX/kernels/sta=
ging  M=3D$(pwd) modules_install"
both were executed from the usbhid directory.
from the usbhid directory.
> Hubert Chaumette

Thanks,
Rohit
