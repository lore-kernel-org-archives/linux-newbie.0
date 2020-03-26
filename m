From: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: Beginner query regarding usbhid
Date: Thu, 26 Mar 2020 09:02:55 -0700
Message-ID: <fd519185-4b66-ce4f-a12e-fc1329c73ce2@infradead.org>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
 <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
 <cfda560c-ad5f-5e71-ab22-d8639688722b@infradead.org>
 <5e7c3e48.1c69fb81.7da14.34ab@mx.google.com>
 <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
 <5e7c5b10.1c69fb81.eb1b6.4979@mx.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
        Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
        Subject:Sender:Reply-To:Content-ID:Content-Description;
        bh=7pCSG1I7Ih72LxJ85263Rr4EmDEAj59VCAzFap2WcMg=; b=Y1dQzGpt9J+N/ok56rBWuMweF9
        Kn+0WdsB6nSgH16mcis2CrJOttC46ErWjCxbpDnSBM4WHM8iPBZVtfq3dJKohPdyreGXnV8AbqYyj
        wDXxPU2O2iiGn9jZxFbB3WI+mn7t7lUMtDJWrHlVbzV6qAwLbr2d131EeNEjSrt/t83GTRaBGRVZb
        PZsoZ0T7LyZKGBlg6P2VRLPxLWzSLJ75AaT7dhlUqZMMMmvHHdzeVMq9IMn08sL++ECkrt26oSdEv
        dyPizh9seOQnKotUoe6FLNI+PECV+a+W+rMon13B3oXlZekagdJJZ4Nvo+Ycz3lJ0po72P8T8SBZ5
        GT9gbwNA==;
In-Reply-To: <5e7c5b10.1c69fb81.eb1b6.4979@mx.google.com>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>, Oliver Neukum <oneukum@suse.com>, linux-usb@vger.kernel.org, linux-newbie@vger.kernel.org

On 3/26/20 12:34 AM, Rohit Sarkar wrote:

>>>>>
>>>>> The command I used for building was "make -C /home/rohit/LINUX/kernels/staging  M=$(pwd)"
>>>>> and for installing the modules: "sudo make -C /home/rohit/LINUX/kernels/staging  M=$(pwd) modules_install"
>>>>> both were executed from the usbhid directory.
>>>>
>>>> why those commands?  seems unusual.
>>> My Linux kernel source is in the directory mentioned in the commands. So
>>> it is same as running "make M=drivers/hid/usbhid/" from the linux kernel
>>> source root.
>>
>> So /home/rohit/kernels/staging is the top-level kernel source directory?
>>
>> "M=dir" is for external modules to be built.  AFAICT you are not building any
>> external modules.
>>
>> Just run
>> $ cd <top of kernel source tree>
>> $ make all
>> $ sudo make install
> Further, on my system it takes a significant amount of time to run "make
> all" for some reason. (30 minutes) even though I have previously
> built the kernel and not pulled any update.
> AFAIK, make is only supposed to build the files that have
> changed. Idk why it is also compiling other files. Most of the time is
> taken by make running modpost.
> 
> That is the reason I tried to build and install only the hid folder

OK, I get that.

For a driver that is built as a loadable module, you should be able to
edit the driver, build it, unload previous version (rmmod),
load new version (modprobe or insmod), and test it, without having to
reboot the kernel. [until an oops or BUG or WARN happens]

If you don't "install" the new module file, I think that modprobe will
look in /lib/modules/kernel_version/* for the module file and find the
old one.  In this case I usually use "insmod path_to_new_driver_file"
to load & test it.

-- 
~Randy

