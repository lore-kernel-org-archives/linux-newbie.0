From: Ray Olszewski <ray@comarre.com>
Subject: Re: Apache in Linux
Date: Thu, 04 Jul 2002 07:43:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020704073648.020fd890@celine>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15D6@ccdc-exchg.careerco
 mmunity.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D15D6@ccdc-exchg.careerco
 mmunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Sridhar J (june end)" <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

At 12:11 PM 7/4/02 +0530, Sridhar J (june end) wrote:
>Hi
>
>1. I have installed Mandrake Linux 8.2 with all server tools. But I couldn't
>find where Apache was put in. I know that we have to untar and then install
>apache, but the gzip file could not be found. Can someone help me?

Not being a Mandrake user (I run Debian here), I can't give you 
Mandrake-specific help at any level of detail.  Since Mandrake is an 
rpm-based distro, I'd expect you need to find an 
apache_something_or_other.rpm, not apache_something_or_other.tar.gz or 
apache_something_or_other.tgz .

On my systems, apache installed at /usr/sbin/apache, BTW.



>2. Is there any equivalent in Linux for the "File find" utility in windows.
>I have nautilus, but it didn't show up Apache. It took up a huge amount of
>time seaching only /usr.


There is a command called "find" that is a rough equivalent. If you have 
the "locate" database installed, there is also "locate", which is faster. 
Finally, for executables in the PATH, there is the "which" command. Their 
respective man pages should provides the needed details.

If you are running a window manager on top of X, some of them have 
GUI-based find-like apps. Also, I think Midnight Commander has some 
find-like capabilities.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
