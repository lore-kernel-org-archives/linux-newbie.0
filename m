From: mike <mike@kevino.org>
Subject: Re: changing refresh rate.
Date: Sun, 03 Oct 2004 11:49:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416049B4.7070403@kevino.org>
References: <652016d30410020314a67f701@mail.gmail.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <652016d30410020314a67f701@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



manish regmi wrote:
> hi all,
>  How can i change the refresh Rate. I am using Fedora Core 2.
> The monitor settings(gdm) does not have refresh rate option. I want to
> make it exactly 100 HZ(My system supports this value in Windows). I
> have Geforce 2 MX 100/200 card and have installed propritary driver
> from nVidia.
> 
> I looked in the xorg.conf file. There is not any entry about refrash rate.
> 
> Thanks in advance.
> Manish

I have MDK10.0 came with XFree I installed Xorg on mine the
xorg.conf is linked to XF86Config-4
xorg.conf -> XF86Config-4
Should be a section

Section "Monitor"
    Identifier "monitor1"
    VendorName "Dell"
    ModelName "Dell P780"
    HorizSync 30-85
    VertRefresh 48-120

But be aware that you could damage a videocard or monitor with the
wrong values, at least that was warnings I have seen.

You can do a google search for linux and your monitor/display and
see if others have dealt with your hardware.

Keep an open mind on what hardware can do in windows and what it can
do in Linux.

Mike
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
