From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: childsplay
Date: Fri, 16 Jul 2004 16:16:01 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407161616.01390.pa3gcu@zeelandnet.nl>
References: <40F7B938.1020505@arrakis.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40F7B938.1020505@arrakis.es>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

On Friday 16 July 2004 13:17, Andrew wrote:
> Hi,
> The version of 'childsplay' included in Mandrake 10 gives the following
> error:
> Traceback (most recent call last):
>    File "/usr/lib/childsplay/childsplay.py", line 40, in ?
>      except (ImportError,MyError),info:
> NameError: name 'MyError' is not defined

Your missing a libary or it sounds like it to me.
Check 
http://speakeasy.rpmfind.net/linux/RPM/mandrake/9.2/contrib/i586/childsplay-0.68-1mdk.noarch.html
For the needed dep's/requirements.

> Can anyone give me any idea what this means and how I can correct it?
> TIA,
> Andrew

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
