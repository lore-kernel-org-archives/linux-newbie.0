From: Boris Bezlaj <boris@gajba.net>
Subject: Re: Strange Mice Behavior
Date: Mon, 31 Mar 2003 17:28:00 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030331152800.GA396@gajba.net>
References: <03033007191701.03588@unix.pa3gcu> <200303300356.h2U3uEM03859@philonline.com> <200303310636.h2V6ant03112@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200303310636.h2V6ant03112@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Mar 31, 2003 at 02:36:49PM +0800, Peter wrote:
> 
> With this new setting in XF86Config for the mouse the Kensington mouse is now 
> the crazy one, meaning zipping erratically across the screen in X when touched 
> and not reacting to the touch of a button. Since I want to use the BenQ mouse 
> this is not anymore relevant
> 
> Remains the question why is there no such mice problem with RH7.3?

I don't know about your actual setup, but i have two mice(one ADB one
button apple mouse and usb logitech one) conected here. I use
/dev/input/mice (using new input api with 2.4 kernel ) and i only have
one mouse input entry in X config as ImPS/2 protocol device..everything
works perfectly..

Maybe you would try that? Also when mouse cursor moves without
control/buttons don't work, it usually means u are using the wrong
protocol for the mouse data.

-- 

  Boris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
