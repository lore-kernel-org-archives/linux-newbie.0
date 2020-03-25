From: Hubert CHAUMETTE <hubert.chaumette-A7wQCf4NAVlWk0Htik3J/w@public.gmane.org>
Subject: Re: Beginner query regarding usbhid
Date: Wed, 25 Mar 2020 16:41:38 +0100
Message-ID: <b799aa1720fecb94d832264b4561eb8a@kolabnow.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
 <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
        message-id:references:in-reply-to:subject:subject:from:from:date
        :date:content-transfer-encoding:content-type:content-type
        :mime-version:received:received:received; s=dkim20160331; t=
        1585150900; x=1586965301; bh=0ph5OARN93v8JXiH+1jNUGgcgcS3WLAgdrc
        kNcyfzjU=; b=b31OZoWlD6N7eWy4uJVwy/8Z+Ek/g4rw9wgVOFhExysWdYqH9iC
        zMEeaiMYw6x+zns1lICLr5FKECay2KNhJdbo2S68ixq85KgM2wLAKr9iTNCTN7cj
        aF2GdBcFHL/FJ908G/8UKbwol91jV0QQ07NIgV0h1bmnzXZfVIWRRA2q6/v8kFUa
        Vl8+WW+f/G+n1hFbb4JxRIvCxIg/AR0KpZz6SyZAlAKiWMlptlrkYaqPOy+W9oDL
        f0gSUbT7RR1rhcn3fRepZEpmnqHxRtRWY1UfbIgIkTqce/6v6b87f7zKaZV7mb+8
        OEjDEtmgquuHQ5ibJmtlyl0ujmi673HnGMdwkXXF0mS1Wcl63fcMPhKJB9TQdlUY
        YG0PwblTbrQ6TsQf6ffJYhwbf4Jlu1RF+kXzDcLi1XmJhUdd72cgFXQNJT7Ekm5K
        gGPnsLWFgPna5UW5scSKcLJgc+w 
In-Reply-To: <5e7b6f15.1c69fb81.d92d3.facb-ATjtLOhZ0NVl57MIdRCFDg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: Rohit Sarkar <rohitsarkar5398-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Oliver Neukum <oneukum-IBi9RG/b67k@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Le 25/03/2020 15:47, Rohit Sarkar a écrit :
> I was trying to mess around with the driver that drives my mouse. I
> found out that it is usbhid. I then added a printk statement to the 
> init
> and exit function of usbhid.
> I then compiled and installed the usbhid drivers. Post that I ran
> `sudo modprobe -r usbhid` and `sudo modprobe usbhid` but couldnt 
> observe
> any logs in dmesg.
> 
> I am certain I am missing something fundamental. Could someone help me
> with this.

Hi,

Did you check whether your module was effectively loaded with lsmod?
What log level did you use in your printk statement? Depending on your
system default loglevel your logs might not be printed. A quick fix
would be to use one of the lowest levels (pr_emerg, but pr_err might
suffice).
Regards,

Hubert Chaumette
