From: Rohit Sarkar <rohitsarkar5398-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Beginner query regarding usbhid
Date: Thu, 26 Mar 2020 13:04:36 +0530
Message-ID: <5e7c5b10.1c69fb81.eb1b6.4979@mx.google.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
 <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
 <cfda560c-ad5f-5e71-ab22-d8639688722b@infradead.org>
 <5e7c3e48.1c69fb81.7da14.34ab@mx.google.com>
 <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=gD9n36NZuXyx2RhUiN6cZDSK6trev/p202dOJYJeUlA=;
        b=bs66KNFEduu3kCDKnv1qSqty+U4sYSq3GQziWfwUuT7cizjcjJ84UmX+VUF9wcNGwy
         qK9WVfrX7ISSyJsU7NyZoQS2HAowVIjXJJTCPGr+DpHNIXnj+97ynarFwaQh/ks2zxF6
         jOeiy+nQ+2W7tB2IB6o2G8dtLvwaSp9UlWFij2OXjlo5lDYCCmQlgzzERhWX7qxHC/EQ
         7cq2zx1lqTf3kd3zY8EZN2SLVPlWdgCIpEyBylyzEV5g8VGVGDQMibPj6GgboACjnQj3
         3Ipa+PdLSPzL2DU6f+SqWXQ/pTTUyqWiw4hLaY8L7JEkMxlIy64Tiz6v1SF7W0DJegFc
         f9Nw==
Content-Disposition: inline
In-Reply-To: <fdc818d7-842c-cfef-3654-0478e74bfa73-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Randy Dunlap <rdunlap-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Hubert CHAUMETTE <hubert.chaumette-A7wQCf4NAVlWk0Htik3J/w@public.gmane.org>, Oliver Neukum <oneukum-IBi9RG/b67k@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, Mar 25, 2020 at 11:07:55PM -0700, Randy Dunlap wrote:
> On 3/25/20 10:31 PM, Rohit Sarkar wrote:
> > On Wed, Mar 25, 2020 at 02:40:27PM -0700, Randy Dunlap wrote:
> >> On 3/25/20 10:13 AM, Rohit Sarkar wrote:
> >>> On Wed, Mar 25, 2020 at 04:41:38PM +0100, Hubert CHAUMETTE wrote:
> >>>> Le 25/03/2020 15:47, Rohit Sarkar a =E9crit=A0:
> >>>>> I was trying to mess around with the driver that drives my mouse. I
> >>>>> found out that it is usbhid. I then added a printk statement to the=
 init
> >>>>> and exit function of usbhid.
> >>>>> I then compiled and installed the usbhid drivers. Post that I ran
> >>>>> `sudo modprobe -r usbhid` and `sudo modprobe usbhid` but couldnt ob=
serve
> >>>>> any logs in dmesg.
> >>>>>
> >>>>> I am certain I am missing something fundamental. Could someone help=
 me
> >>>>> with this.
> >>>>
> >>>> Hi,
> >>>>
> >>>> Did you check whether your module was effectively loaded with lsmod?
> >>>> What log level did you use in your printk statement? Depending on yo=
ur
> >>>> system default loglevel your logs might not be printed. A quick fix
> >>>> would be to use one of the lowest levels (pr_emerg, but pr_err might
> >>>> suffice).
> >>>> Regards,
> >>>
> >>> Hey,
> >>> I did check that module was loaded. And one of the signs was that my
> >>> mouse started working after insmod :).
> > Hi,
> >> Hi,
> >> I'm not convinced that your modified usbhid module was loaded.
> > Hmm, here's my dmesg logs if that helps:
> > "
> > [  382.132319] usbcore: deregistering interface driver usbhid
> > [  391.077410] input: MOSART Semi. 2.4G Wireless Mouse as /devices/pci0=
000:00/0000:00:14.0/usb1/1-2/1-2:1.0/0003:3938:1031.0002/input/input26
> > [  391.136724] input: MOSART Semi. 2.4G Wireless Mouse as /devices/pci0=
000:00/0000:00:14.0/usb1/1-2/1-2:1.0/0003:3938:1031.0002/input/input27
> > [  391.137285] hid-generic 0003:3938:1031.0002: input,hiddev0,hidraw0: =
USB HID v1.10 Mouse [MOSART Semi. 2.4G Wireless Mouse] on usb-0000:00:14.0-=
2/input0
> > [  391.137480] usbcore: registered new interface driver usbhid
> > [  391.137483] usbhid: USB HID core driver
> > "
>=20
> I can't tell that helps any.
>=20
> >> Could an older (original) usbhid module be reloaded so that the mouse
> >> started working again?  That would also explain the lack of (new) mess=
ages.
> > I think so too. But how do I verify if this is the case?
> >=20
> >> What kernel version are you using?  Is it a distro kernel?
> > I am currently running a bleeding edge kernel that I built. ie 5.6-rc7.=
=20
> >> Are you trying to replace the usbhid module in a distro kernel or are
> >> you building the entire kernel?
> > I am building the entire kernel
> >>> I used printk(KERN_ALERT "some message") for logging. I also tried wi=
th
> >>> KERN_ERR but no luck.=20
> >>>
> >>> The command I used for building was "make -C /home/rohit/LINUX/kernel=
s/staging  M=3D$(pwd)"
> >>> and for installing the modules: "sudo make -C /home/rohit/LINUX/kerne=
ls/staging  M=3D$(pwd) modules_install"
> >>> both were executed from the usbhid directory.
> >>
> >> why those commands?  seems unusual.
> > My Linux kernel source is in the directory mentioned in the commands. So
> > it is same as running "make M=3Ddrivers/hid/usbhid/" from the linux ker=
nel
> > source root.
>=20
> So /home/rohit/kernels/staging is the top-level kernel source directory?
>=20
> "M=3Ddir" is for external modules to be built.  AFAICT you are not buildi=
ng any
> external modules.
>=20
> Just run
> $ cd <top of kernel source tree>
> $ make all
> $ sudo make install
Further, on my system it takes a significant amount of time to run "make
all" for some reason. (30 minutes) even though I have previously
built the kernel and not pulled any update.
AFAIK, make is only supposed to build the files that have
changed. Idk why it is also compiling other files. Most of the time is
taken by make running modpost.

That is the reason I tried to build and install only the hid folder
>=20
>=20
> --=20
> ~Randy
>=20
