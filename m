From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Skype wont't open
Date: Thu, 3 Mar 2005 07:34:19 +0100
Message-ID: <200503030734.20052.pa3gcu@zeelandnet.nl>
References: <20050302073310.E9506207D8@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <20050302073310.E9506207D8@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Wednesday 02 March 2005 08:33, Peter wrote:
> Thanks Adam!

I presume you meant Richard Adams...

> My /etc/ld.so.conf is practically the same:
>
> /usr/local/lib
> /usr/X11R6/lib
> /usr/i486-slackware-linux/lib
> /opt/kde/lib
> /usr/lib/qt/lib

There should be no need to define qt at all as you define /usr/lib, futher 
more its the define order that matters according to others who have the same 
problem as you.

Ray mentioned dependancies that quite possably backs up the need to define 
libs in a spesific order to aviod such problems. 

> /usr/local/tmake/lib
> /usr/lib
> /usr/local/ActiveTcl/lib
> /usr/include
> /usr/local/lib/sigc++-1.2
> /lib
>
> and ls -al /usr/lib/qt
> /usr/lib/qt -> qt-3.3.3

Ok but are you sure qt3.3.2 is deleted,?? 
>
> After this installation of qt-3.3.3 I did ldconfig.
>
> I have no other version qt installed.
>
> ls /usr/lib/qt*
> /usr/lib/qt:
> README-QT.TXT  examples    lib      plugins
> bin            extensions  mkspecs  tutorial
> doc            include     pics
>
> /usr/lib/qt-3.3.3:
> README-QT.TXT  examples    lib      plugins
> bin            extensions  mkspecs  tutorial
> doc            include     pics
>
> Regards
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
