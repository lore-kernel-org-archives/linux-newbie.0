From: Rohit Sarkar <rohitsarkar5398-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Beginner query regarding usbhid
Date: Thu, 26 Mar 2020 17:18:42 +0530
Message-ID: <5e7c969c.1c69fb81.37131.654a@mx.google.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
 <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
 <5e7b9127.1c69fb81.f2f8b.582c@mx.google.com>
 <cfda560c-ad5f-5e71-ab22-d8639688722b@infradead.org>
 <5e7c3e48.1c69fb81.7da14.34ab@mx.google.com>
 <fdc818d7-842c-cfef-3654-0478e74bfa73@infradead.org>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SDvQOZJ+z1FKNbiL9FyHx2teONjRmGEPng9pjTyfUhw=;
        b=DxvS7Di7vGig5VierRsGTFrp2KHACmu3N0VCuAVhl71TaPVIWJxh7/QAhK2sWXwrb+
         12uJ8ysbnuNAwHHJZSuQ1SYV+2opZs3coSegia7jVI3BfmbJQzTvTV3YYAZVCssGLL94
         joSeBLv6kJxp1lDcBai9W31UPopoayRdA+CUC0DsRu0vb72aB0L3wse5BzKW2eUaHlUJ
         ObqFPqqOtmpK1f5SK8QWgU1dFLlB6nXbrK9A9lRNErXVGmnBV4nVa6eFG+u+e3qHuHh5
         hQYB2VseyxTKW+e5xb/nQjTYpFzedzDd7bImpJbH5umAHlZAkPIOL1KCwH83L25Bu+Ae
         6nQg==
Content-Disposition: inline
In-Reply-To: <fdc818d7-842c-cfef-3654-0478e74bfa73-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Randy Dunlap <rdunlap-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Hubert CHAUMETTE <hubert.chaumette-A7wQCf4NAVlWk0Htik3J/w@public.gmane.org>, Oliver Neukum <oneukum-IBi9RG/b67k@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi,
On Wed, Mar 25, 2020 at 11:07:55PM -0700, Randy Dunlap wrote:
> 
> So /home/rohit/kernels/staging is the top-level kernel source directory?
> 
> "M=dir" is for external modules to be built.  AFAICT you are not building any
> external modules.
> 
> Just run
> $ cd <top of kernel source tree>
> $ make all
> $ sudo make install

Wow it worked now.
I ran make and make modules_install install. After that I restarted the
system.

Does this mean everytime I do some changes to an intree module I need to
reboot my system?
> 
> 
> -- 
> ~Randy
> 
Thanks,
Rohit
