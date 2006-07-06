From: "joy merwin monteiro" <joy.merwin@gmail.com>
Subject: Re: Linux Startup Issues
Date: Thu, 6 Jul 2006 01:04:52 +0000
Message-ID: <4b0d6e0d0607051804s4bc34817w1419cafa047eec07@mail.gmail.com>
References: <000801c6a072$bb16b020$6900a8c0@ANCHORMAN>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c6a072$bb16b020$6900a8c0@ANCHORMAN>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jesse <jlc@msdlg.com>
Cc: linux-newbie@vger.kernel.org

could you attach the file /var/log/XFree86.0.log or Xorg.0.log ??
would be helpful .... dont really know, but I think Debian is using
the Xorg server rather than the Xfree86 server ....
try
apt-cache search xorg
apt-cache search xfree86

it will give you a list of the relevant packages ...

Joy


On 7/5/06, Jesse <jlc@msdlg.com> wrote:
> I am running Debian Linux, and every time I have to reboot, it tries to
> start the Gnome graphical interface. There's always an error, "I cannot
> start the X server (your graphical interface). It is likely that it is not
> set up correctly. Would you like to view the server output to diagnose the
> problem?". When I say yes, it appears that the problem is "no screens
> found". I tried editing the XF86Config-4 file, but I have no idea what to
> look for, or what to change. I also tried running the XFreeConfig program,
> but while testing, it gets to a certain video mode, and freezes up.
>
> I tried an "apt-get install XFree86", but it tells me that it can't find
> XFree86.
>
> Any idea what I need to do to get this fixed?
>
> Thanks,
>
> Jesse
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


-- 
Aham Brahma Asmi
          -- Brihadaranyaka Upanishad, Yajur Veda
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
