From: "Phil C" <hpypenguin.lists@gmail.com>
Subject: IceWM Configure Issues: Loading wallpaper and terminal at startup
Date: Sat, 6 Sep 2008 19:23:31 -0700
Message-ID: <703270f30809061923sd9375del5b6b34e594b093df@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=8g0A7j+xdyUS5RH+ZogfKT+WgZ4m62upP1GMyXvyhjs=;
        b=pp0PvBNJMw62kTnVrCIZ93po1VOZzOdpLbzM2q2PorNtWnE0SU+uOBX5p5tSn7c7P4
         9kEMCW9qUmBf6lFn6NnpJKhRGFQsth922iWuWrz4FwkNXzBaL0ec8/5UoqMRHtKVGEcU
         iXeud//lviIEcfMcUZ+1vNPFFifvPzR5+Qzos=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have started using IceWm on my laptop to allow for a low memory
option for running the few programs I have that require X. I have been
trying to get it to load the wallpaper and terminal that I use at
startup. I am using habak to set the wallpaper and xfce4-terminal with
devilspie to load the terminal as a layer on top of the wallpaper.

My startup file is as follows:

#!/bin/sh
xfce4-terminal&
habak -ms -hi ~/wallpaper.jpg&

I already know that the theme's wallpaper is not causing the issue as
no wallpaper loads when IceWM starts. Also I am loading IceWm by using
.xinetd in my home folder with the command 'exec icewm' as the only
line in the file.

I did chmod +x and chmod 755 to the startup file but it still doesn't
run when icewm loads.

Any suggestions? These issues are certainly not crucial but they would
save me roughly 30 seconds when I need to startx.

Thanks

 - Phil C
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
