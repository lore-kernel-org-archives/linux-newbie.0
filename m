From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Strange Mice Behavior
Date: Sun, 30 Mar 2003 07:19:17 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03033007191701.03588@unix.pa3gcu>
References: <200303300356.h2U3uEM03859@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303300356.h2U3uEM03859@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

On Sunday 30 March 2003 03:56, Peter wrote:
> Since I did not get any reply to my mail below I helped myself with putting
> the following 2 lines in /etc/profile:
>
> gpm -k
> gpm -t ps/2 -m /dev/mouse
>
> Now the Kesington mouse works correctly on the console and in X, however
> the Benq mouse which BTW is a wheel mouse still goes crazy in X.
>
> Is there a better way of getting the mice to work? Now I have first to open
> root to make the mouse work and when opening user I get the error message
> that I have no permission.

Ray explained the details but, IMHO you should try using IMPS/2 with x for a 
wheel mouse, presuming the Benq (what ever that is) is a 3 button mouse, then 
try the following in your XF86Config(-4) file.

Section "InputDevice"
 
# Identifier and driver
 
    Identifier  "Mouse1"
    Driver      "mouse"
    Option "Corepointer"
    Option "Device" "/dev/psaux"
    Option "Protocol"    "IMPS/2"
    Option "Buttons" "5"
    Option "Emulate3Buttons" "off"
    Option "ZAxisMapping" "4 5"

EndSection 

The syntax is for XFree 4.x

If all esle fails goto;

www.xfree86.org


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
