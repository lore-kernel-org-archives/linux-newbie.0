From: Rohit Sarkar <rohitsarkar5398-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Beginner query regarding usbhid
Date: Wed, 25 Mar 2020 20:17:45 +0530
Message-ID: <5e7b6f15.1c69fb81.d92d3.facb@mx.google.com>
References: <5e7b5fbc.1c69fb81.cace7.7aa1@mx.google.com>
 <1585147543.3831.8.camel@suse.com>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pxDEsOjM3UFaHt2qYSxBLGrNORMIpdTM3WpsoD2yldw=;
        b=jLak2bOC33v+hfYCh+VUtUrWcFkekBRlEtAgQz5ojYZmEi+vXYVF1pzRYt6W5TeV9F
         4Z0gUue5lj3IJ1fs11h7mjVpRTVjj/blQWEOvarw2CrfEy4U8f2xTW8SEPPQyO+FFDR3
         +svqwP8AGKq8tn5d7ygsNteWp9ZTtzTlvwtp7n5nHTwV1yesZPJa9fecZeIKA/EO99qb
         qZDq1Aocm81icmK7DIdT2pZAEC2DyB6HKrwFjbJejb7GmQErIPdPwoAmePdYnEacxQTX
         cUviISgknRjGILixu+GCHu/oLJFL0X8jeZcW8r73qG1R5zhBAa6Ulg24dstgAmeAnE+s
         LEnQ==
Content-Disposition: inline
In-Reply-To: <1585147543.3831.8.camel-IBi9RG/b67k@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oliver Neukum <oneukum-IBi9RG/b67k@public.gmane.org>
Cc: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-newbie-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, Mar 25, 2020 at 03:45:43PM +0100, Oliver Neukum wrote:
> Am Mittwoch, den 25.03.2020, 19:12 +0530 schrieb Rohit Sarkar:
> > 
> 
> Hi,
> 
> I am afraid something went wrong with your mail.
> 
> 	Regards
> 		Oliver
> 
Ah, Thanks for telling me. 

This was the original mail:

Hi,

I was trying to mess around with the driver that drives my mouse. I
found out that it is usbhid. I then added a printk statement to the init
and exit function of usbhid.
I then compiled and installed the usbhid drivers. Post that I ran
`sudo modprobe -r usbhid` and `sudo modprobe usbhid` but couldnt observe
any logs in dmesg.

I am certain I am missing something fundamental. Could someone help me
with this.

Thanks,
Rohit
