From: Peter <heisspf@skyinet.net>
Subject: Re: Skype wont't open
Date: Thu, 03 Mar 2005 17:56:20 +0800
Message-ID: <20050303095620.CB9D11B503@heisspf>
References: <200503030734.20052.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
In-Reply-To: Your message of "Thu, 03 Mar 2005 07:34:19 +0100."
             <200503030734.20052.pa3gcu@zeelandnet.nl> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


pa3gcu@zeelandnet.nl said:
> I presume you meant Richard Adams...

Actually Richards

pa3gcu@zeelandnet.nl said:
> Ok but are you sure qt3.3.2 is deleted,?? 

heisspf@~:$ locate qt-3.3.2
heisspf@~:$

Not a trace left. Updated daily.

I put this now into ld.so.conf only with no change of the error message after 
doing ldconfig. This is anyhow the sequence put-in by slackware I think.

/usr/local/lib
/usr/X11R6/lib
/usr/i486-slackware-linux/lib
/opt/kde/lib
/usr/lib
/lib

and leaving /usr/lib/qt out I get:

error while loading shared libraries: libqt-mt.so.3: cannot open shared object 
file: No such file or directory


I have the strong suspicion the problem is in those libs in /usr/X11R6/libs.
Are they different from distro to distro?

This is the end of strace dynamic skype:

read(4, "&\0\0\0\1\1\22\t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\1\0\0\0\0"..., 604) = 604
writev(2, [{"./skype", 7}, {": ", 2}, {"symbol lookup error", 19}, {": ", 2}, 
{"./skype", 7}, {": ", 2}, {"undefined symbol: XkbSetPerClien"..., 41}, {"", 
0}, {"", 0}, {"\n", 1}], 10./skype: symbol lookup error: ./skype: undefined 
symbol: XkbSetPerClientControls
) = 81
exit_group(127) 

Regards
-- 
Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
