From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: usb web cam
Date: 15 May 2003 07:05:36 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1052996736.9332.5.camel@goldfinger.orbdesigns.com>
References: <1052970400.1153.1.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1052970400.1153.1.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>

On Wed, 2003-05-14 at 23:46, ramzez wrote:
> HI friends...
>   I'm using Red Hat 8.0 and now I get a "creative go plus" USB webcam...
> but I don't how use it over Linux

There were several models of this camera, IIRC. If your's is CT6840,
then it's like mine. At the kernel level, I have Video4Linux and USB
OV511 options built as *modules* (not built into the kernel,it doesn't
work that way for me). At boottime,in my modules.autoload, I specify
ov511, which autoloads the camera module and the dependency, videodev.
Once those are in place, you should be able to use any reasonable V4L
client to do captures, either motion or still.

.brian

-- 
Brian P. Bilbrey <bilbrey@orbdesigns.com>
Orb Designs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
