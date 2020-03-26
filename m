From: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: Beginner query regarding usbhid
Date: Thu, 26 Mar 2020 12:23:57 +0530
Message-ID: <5e7c5188.1c69fb81.16130.41e1@mx.google.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
 <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
 <cfda560c-ad5f-5e71-ab22-d8639688722b@infradead.org>
 <5e7c3e48.1c69fb81.7da14.34ab@mx.google.com>
 <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=irHhJ4FW1FooG54OXFIdqp5Kwi3iVj6Axe06f7CYwF4=;
        b=CaJn9Wm7E+8H8py7nPUHiPEz6dqWW5/BB9GHPn6ly/gBVoCn6o3R7GVyB5LuKJjdZ1
         20FseggxMy02OBxhGIXad/VLrjcvFGwoLpWJY3OsoCZfdW9oq1gF+5kpAIAS3TmCsGx+
         50O4ttqI4iu2bA4mMtLxIZ//OVeCJY6Hq8sHlDRK0wXW6ftbmLnmB97SpJ/VJkw0Rt68
         yWcnXgjPdSLpGcHX1ViVBlJJkRZcQgJtrDhdhLHYAcgkJkaoxvrHJT4TZnH24nh1pUBw
         Ku8eWveTG8Fh/CEIMTapz+EfLye9Oclrwam5zDf14kSpCjrKuAHDXtkFB45kGeFK87Fj
         7dOA==
Content-Disposition: inline
In-Reply-To: <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>, Oliver Neukum <oneukum@suse.com>, linux-usb@vger.kernel.org, linux-newbie@vger.kernel.org

On Wed, Mar 25, 2020 at 11:07:55PM -0700, Randy Dunlap wrote:
> On 3/25/20 10:31 PM, Rohit Sarkar wrote:
> > On Wed, Mar 25, 2020 at 02:40:27PM -0700, Randy Dunlap wrote:
> >> On 3/25/20 10:13 AM, Rohit Sarkar wrote:
> >>> On Wed, Mar 25, 2020 at 04:41:38PM +0100, Hubert CHAUMETTE wrote:
> >>>> Le 25/03/2020 15:47, Rohit Sarkar a écrit :
> >>>>> I was trying to mess around with the driver that drives my mouse. I
> >>>>> found out that it is usbhid. I then added a printk statement to the init
> >>>>> and exit function of usbhid.
> >>>>> I then compiled and installed the usbhid drivers. Post that I ran
> >>>>> `sudo modprobe -r usbhid` and `sudo modprobe usbhid` but couldnt observe
> >>>>> any logs in dmesg.
> >>>>>
> >>>>> I am certain I am missing something fundamental. Could someone help me
> >>>>> with this.
> >>>>
> >>>> Hi,
> >>>>
> >>>> Did you check whether your module was effectively loaded with lsmod?
> >>>> What log level did you use in your printk statement? Depending on your
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
> > [  391.077410] input: MOSART Semi. 2.4G Wireless Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2:1.0/0003:3938:1031.0002/input/input26
> > [  391.136724] input: MOSART Semi. 2.4G Wireless Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2:1.0/0003:3938:1031.0002/input/input27
> > [  391.137285] hid-generic 0003:3938:1031.0002: input,hiddev0,hidraw0: USB HID v1.10 Mouse [MOSART Semi. 2.4G Wireless Mouse] on usb-0000:00:14.0-2/input0
> > [  391.137480] usbcore: registered new interface driver usbhid
> > [  391.137483] usbhid: USB HID core driver
> > "
> 
> I can't tell that helps any.
> 
> >> Could an older (original) usbhid module be reloaded so that the mouse
> >> started working again?  That would also explain the lack of (new) messages.
> > I think so too. But how do I verify if this is the case?
> > 
> >> What kernel version are you using?  Is it a distro kernel?
> > I am currently running a bleeding edge kernel that I built. ie 5.6-rc7. 
> >> Are you trying to replace the usbhid module in a distro kernel or are
> >> you building the entire kernel?
> > I am building the entire kernel
> >>> I used printk(KERN_ALERT "some message") for logging. I also tried with
> >>> KERN_ERR but no luck. 
> >>>
> >>> The command I used for building was "make -C /home/rohit/LINUX/kernels/staging  M=$(pwd)"
> >>> and for installing the modules: "sudo make -C /home/rohit/LINUX/kernels/staging  M=$(pwd) modules_install"
> >>> both were executed from the usbhid directory.
> >>
> >> why those commands?  seems unusual.
> > My Linux kernel source is in the directory mentioned in the commands. So
> > it is same as running "make M=drivers/hid/usbhid/" from the linux kernel
> > source root.
> 
> So /home/rohit/kernels/staging is the top-level kernel source directory?
> 
> "M=dir" is for external modules to be built.  AFAICT you are not building any
> external modules.
Oh, I think M=dir options just makes the Makefile build the folder
specified. I see such an output when I run the make command which makes
me feel that the make command I am using is actually building the
modules:
"
drivers/hid/usbhid❯ make -C /home/rohit/LINUX/kernels/staging  M=$(pwd)                                            staging/git/master !
make: Entering directory '/home/rohit/LINUX/kernels/staging'
  AR      /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/built-in.a
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/hid-core.o
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/hiddev.o
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/hid-pidff.o
  LD [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbhid.o
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbkbd.o
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbmouse.o
  MODPOST 3 modules
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbhid.mod.o
  LD [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbhid.ko
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbkbd.mod.o
  LD [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbkbd.ko
  CC [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbmouse.mod.o
  LD [M]  /home/rohit/LINUX/kernels/staging/drivers/hid/usbhid/usbmouse.ko
make: Leaving directory '/home/rohit/LINUX/kernels/staging'
"

> Just run
> $ cd <top of kernel source tree>
> $ make all
> $ sudo make install
> 
> 
> -- 
> ~Randy
> 
Thanks,
Rohit
