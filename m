From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: symbolic links
Date: Sat, 6 Jul 2002 08:13:29 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02070608132900.01455@unix.pa3gcu>
References: <200207060403.g6643Nr01549@philonline.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207060403.g6643Nr01549@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux <linux-newbie@vger.kernel.org>

On Saturday 06 July 2002 04:03, Peter wrote:
> Hi,
>
> when reinstalling binutils-2.10.91.0.2-3 which apparenly got corrupted I
> received the following messages:
>
> /sbin/ldconfig: /usr/lib/libkdeui.so.2 is not a symbolic link
>
> /sbin/ldconfig: /usr/lib/libncurses.so.4 is not a symbolic link
>
> /sbin/ldconfig: /usr/lib/liboaf.so.0 is not a symbolic link
>
> /sbin/ldconfig: /usr/local/lib/libncurses.so.5 is not a symbolic link
>
> /sbin/ldconfig: /usr/local/lib/libgtkextra-0.99.so.1 is not a symbolic link
>
> /sbin/ldconfig: /usr/local/qt/lib/libqt.so.2 is not a symbolic link
>
> How do I go about that?

AFAIK the libs;
/usr/lib/libkdeui.so.2
/usr/lib/libncurses.so.4
/usr/lib/liboaf.so.0
Should reside in /lib and there should be s symbolic link in /usr/lib to lib 
for each libary.
Possably when thoses libs are placed into the proper directory then ldconfig 
possably will create a symlink altho' i am not sure.

The libs in /usr/local i suspect you have installed yourself, i suggest you 
read the README and INSTALL files for qt and gtk and pay attention to the 
options for ./configure 

I am always very careful when it comes to upgrading libs as "more often than 
not" problems arise, sometimes to the point of rendering your system 
unuseable because one missed a seemingly small point in one or another README.

>
> Thanks and regards

--
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
