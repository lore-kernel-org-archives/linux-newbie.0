From: Peter <pfheiss@philonline.com>
Subject: Re: symbolic links
Date: Thu, 11 Jul 2002 15:55:53 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207110755.g6B7trw02464@philonline.com>
References: <20020709205526.GB1736@cam.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from sos22@cam.ac.uk 
   of "Tue, 09 Jul 2002 21:55:26 +0100." <20020709205526.GB1736@cam.ac.uk> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sos22@cam.ac.uk
Cc: linux-newbie@vger.kernel.org

Hi Steve,

thanks for your elaborate explanation.

sos22@cam.ac.uk said:
> First: These errors are almost certainly not caused by problems with
> binutils. They would be reported during the installation of binutils,
> but they probably weren't caused by that.

Correct, it is /sbin/ldconfig giving the errors which apparently is run after 
the installation of binutils.

sos22@cam.ac.uk said:
> so it's probably safest just to ignore them unless they're leading to
> problems elsewhere.

That is what I am doing since there seem to be no problems.

/usr/local/lib/libncurses.so.5 resides as well in /usr/lib as a symbolic link 
to /usr/lib/libncurses.so.5.2.

sos22@cam.ac.uk said:
>  However, you only need to care about this if /usr or /usr/local are
> on different partitions to /lib

They are all on different partitions seeminly unhindered.

I don't dare to play with libraries and leave their possitioning to RedHat 
during installation or to some programs installed in /usr/local.

Regards
-- 
Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
