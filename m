From: joy <gracecott@sancharnet.in>
Subject: Re: mouse not writing to device file.....
Date: Fri, 13 Feb 2004 14:27:04 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <402C9160.3060907@sancharnet.in>
References: <5.1.0.14.1.20040212091018.01f91780@celine>
 <5.1.0.14.1.20040212202502.01faeaa0@celine>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

>>
>> I have a USB mouse , but it used to work fine froom the same usb port 
>> before the reinstall.....
>
>
> Do you mean it previously worked with Debian-Woody, or that it worked 
> with Slackware? Or something else? Were you using a stock kernel or 
> one you compiled? I don't use a USB mouse here, but I wouldn't count 
> on a stock Debian kernel supporting one ... though someone else here, 
> someone who uses a USB mouse with Debian, would be a better source of 
> advice at this point.

used to use a 2.6.1 now 2.6.2.

> I haven't used a stock Linux kernel (aside from the early stage of an 
> install) for years, so I don't recall what they include either 
> compiled in or as modules ... both USB mouse support and Input Core 
> mouse support appear to be available as modules, so modprobe'ing them 
> (or adding them to /etc/modules) may be the prior fix you've 
> forgotten. Just a guess, though, as I say.

The clincher so to say. after reading this I saw my previous kernel 
conf, and voila, HID support was configured as a module (was built into 
my older kernel). just added a modprobe into my startup scripts
and the mouse is working fine!!!

also Ray, about that trick I tried (cat /dev/psaux ..... ), I tried it 
again. the mouse is not unresponsive, I get a newline for a right click 
and scroll wheel click, ie , it is writing whitespaces atleast......

>
>
>
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
