From: Carl <carl@anexia.co.uk>
Subject: Re: diabling monitor power saving
Date: Mon, 04 Nov 2002 11:42:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021104114139.01ecf440@interzone.anexia.co.uk>
References: <200211012159.gA1LxYM08124@hartford-hwp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211012159.gA1LxYM08124@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Haines,

I use this line in my /etc/rc.d/rc.local (RedHat Machine) to disable
the console blanking so i can always see any errors without wiggling
the mouse etc... I don't use X though and console is always at a prompt
in run level 3.

        # Turn off console blanking
        echo -e "\033[9;0]" > /dev/tty1


Regards
Carl


At 16:59 01/11/2002 -0500, Haines Brown wrote:
While I've nothing against the principle of power saving, I find it
very annoying to have my screen go blank and then I have to wait while
it slowly comes back to life. 

I've disabled so-called screen savers, but don't know where to disable
power saving for my monitor so that it remains on (as a night
light, so that when inspired, I can find my way to the computer ;-) 

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
