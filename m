From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: mouse setup
Date: Wed, 3 Jul 2002 15:47:44 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207031547.44350.pa3gcu@zeelandnet.nl>
References: <50420696.20020703074009@sby.centrin.net.id>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <50420696.20020703074009@sby.centrin.net.id>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org

On Wednesday 03 July 2002 00:40, adwin wrote:
> Hello,
>
>   my system is Mandrake 8.2 & KDE 3.0 in my system.
> I got a problem with my ps2 mouse port so I use USB Mouse instead.
> I got problem, because my mouse cannot be detected. I have been try
> use mousedrake to detect my mouse. It is success to detect my mouse
> but my mouse still cannot be used. Then I try to detect with kudzu, it
> also doesn't work (it say like " cannot create /dev/usbmouse").
> how to solve this problem ?
>
> thanks
>
> ps: my mouse is Logitech optical.

Ah!, ok, well use the converter plug usb>ps2 which logitec supplied, plug the 
thing into the mouse ps2 socket and tell gpm it has a ps2 mouse.
gpm -m /dev/mouse -t ps2
Make sure the device files are linked correctly, /dev/mouse should be linked 
to psaux.
You use kde3, PS/2 should be ok in XF86Config, users of kde2 need to define 
this sort of mouse as IMPS/2.

They say it can be made to work as an usb mouse, i had no luck, looks like 
logitec knew what they were doing when they decided to supply a converter 
plug with those mice. ;-)

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
