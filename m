From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Mon, 13 Jan 2003 16:31:23 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03011316312301.04461@unix.pa3gcu>
References: <014601c2ba72$28d85720$6400a8c0@00arc>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <014601c2ba72$28d85720$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jonathan Kallay <yoni@kallay.net>, linux-newbie@vger.kernel.org

On Sunday 12 January 2003 19:38, Jonathan Kallay wrote:
> I have been able to start X Windows in the past, but after plugging in a
> different monitor (and changing the configuration file), startx will cause
> the screen to go blank and never come back.  CTRL-ALT-BKSP won't work.  The
> only way that I can see what is going on is by telnetting in from a
> different computer and running startx.  No errors appear in the log file,
> other than "Failed to load GLCore (module does not exist, 0)".  The very
> bottom of the output reads:
>  (II) [GLX]: Initializing GLX extension
> XIO:  fatal IO error 104 (Connection reset by peer) on X server ":0.0"
>       after 0 requests (0 known processed) with 0 events remaining.
>
> Any suggestions?

Yes, i do have some suggestions. 
I read your reply to Ray as well where you say you use the nv driver which is 
from XFree.

Firstly if you use a 2.2.xx kernel i would stongly advise you to get the 
relavant driver for your card from www.nvidia.com and install it.
You will see a lot of improvements to video speed and quality.

To adress your problem as is, the GLX module as its called resides in 
/usr/X11R6/lib/modules/extensions/
Check and make sure its there, according to your error its not.

What i dont understand is why should it dissapier if all you did was plugin 
another monitor and edit XF86Config(-4).

Normally speaking i never edit anything when changing monitors as they are 
basicly all the same, i mean they will work even if they are configured 
wrongly, (yes) the doc's say you can damage a monitor by giving incorrect 
params to XF86Config, however times change, most all monitors thesedays will 
simply give a click and not show any screen or show a screen with horizontal 
or vertical strips and no picture.

If all you did was edit XF86Config(-4) and change the monitor then i cant see 
why you lost a extention module, you must have done something else like 
install some software or you have made an typo in your XF86Config(-4) file.

Do as Ray said and give us more details.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
