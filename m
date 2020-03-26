From: Randy Dunlap <rdunlap-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: Beginner query regarding usbhid
Date: Thu, 26 Mar 2020 09:16:26 -0700
Message-ID: <4637ad23-b086-b76d-5ce0-99da85764b45@infradead.org>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
 <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
 <cfda560c-ad5f-5e71-ab22-d8639688722b@infradead.org>
 <5e7c3e48.1c69fb81.7da14.34ab@mx.google.com>
 <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
 <5e7c5b10.1c69fb81.eb1b6.4979@mx.google.com>
 <fd519185-4b66-ce4f-a12e-fc1329c73ce2@infradead.org>
 <5e7cd502.1c69fb81.2402c.714b@mx.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
        Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
        Subject:Sender:Reply-To:Content-ID:Content-Description;
        bh=4z4ryFy5Ro40is8WzUMXK/w3XSlExsdiHcqNZ71+Qws=; b=IIlIh7VRzqckJUiiDieNKzNxOp
        xgPUcYubx1BrhepVScJ5cTKMbi4gpu0KdgbxW/OdJyw8CaXwaR+FYDwD03iVN+Kb5ecJRqFMbRyIS
        oTJQvIXByz1jbxTcE5LfmkfVt7+Lok/ru4NAW78Nck1Ko8Sm+IP+TBp3Js7K6+6oc0exl1G2/E/I4
        T2YzikLIU7yRQFQ2f6T1CjCT3jLdQjFBm4IuaN5VOLKOnGctBBh2kQDK8ZKyQqCUbkJstw/i24/XH
        Q4MwxM9J/vV5S6CDoF5o0qtpD/hV5jfXpq5WKZfdzIe9roQoBSkdkGdFLrt13fNVuYeTvLEZEzYor
        bre+a4gQ==;
In-Reply-To: <5e7cd502.1c69fb81.2402c.714b-ATjtLOhZ0NVl57MIdRCFDg@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rohit Sarkar <rohitsarkar5398-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Hubert CHAUMETTE <hubert.chaumette-A7wQCf4NAVlWk0Htik3J/w@public.gmane.org>, Oliver Neukum <oneukum-IBi9RG/b67k@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On 3/26/20 9:14 AM, Rohit Sarkar wrote:
> On Thu, Mar 26, 2020 at 09:02:55AM -0700, Randy Dunlap wrote:
>> On 3/26/20 12:34 AM, Rohit Sarkar wrote:
>>
>>>>>>>
>>>>>>> The command I used for building was "make -C /home/rohit/LINUX/kernels/staging  M=$(pwd)"
>>>>>>> and for installing the modules: "sudo make -C /home/rohit/LINUX/kernels/staging  M=$(pwd) modules_install"
>>>>>>> both were executed from the usbhid directory.
>>>>>>
>>>>>> why those commands?  seems unusual.
>>>>> My Linux kernel source is in the directory mentioned in the commands. So
>>>>> it is same as running "make M=drivers/hid/usbhid/" from the linux kernel
>>>>> source root.
>>>>
>>>> So /home/rohit/kernels/staging is the top-level kernel source directory?
>>>>
>>>> "M=dir" is for external modules to be built.  AFAICT you are not building any
>>>> external modules.
>>>>
>>>> Just run
>>>> $ cd <top of kernel source tree>
>>>> $ make all
>>>> $ sudo make install
>>> Further, on my system it takes a significant amount of time to run "make
>>> all" for some reason. (30 minutes) even though I have previously
>>> built the kernel and not pulled any update.
>>> AFAIK, make is only supposed to build the files that have
>>> changed. Idk why it is also compiling other files. Most of the time is
>>> taken by make running modpost.
>>>
>>> That is the reason I tried to build and install only the hid folder
>>
>> OK, I get that.
>>
>> For a driver that is built as a loadable module, you should be able to
>> edit the driver, build it, unload previous version (rmmod),
>> load new version (modprobe or insmod), and test it, without having to
>> reboot the kernel. [until an oops or BUG or WARN happens]
>>
>> If you don't "install" the new module file, I think that modprobe will
>> look in /lib/modules/kernel_version/* for the module file and find the
>> old one.  In this case I usually use "insmod path_to_new_driver_file"
>> to load & test it.
> Hmm, the weird part is that I did run "sudo make modules_install".
> Shouldnt that get the latest modules into /lib/modules/{kernel
> version}/*. Although it didnt work before rebooting.

Yes.

> I guess insmod path_to_new_driver_file is the best option here.


-- 
~Randy

