From: Ray Olszewski <ray@comarre.com>
Subject: Re: Silly Question
Date: Wed, 18 Jun 2003 07:41:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030618073330.02009c18@celine>
References: <00a601c33577$75d0bba0$e764a8c0@fesnel.noip.org>
 <1055903157.9558.9.camel@localhost.localdomain>
 <3EEFF697.6060309@heem.org>
 <courier.3EEFFE8A.00005CCE@softhome.net>
 <200306180834.56048.my@masterpe.nl>
 <courier.3EF02531.00007626@softhome.net>
 <00a601c33577$75d0bba0$e764a8c0@fesnel.noip.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EF034A7.2050308@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 11:45 AM 6/18/2003 +0200, Flemming Greve Skovengaard wrote:
>John T. Williams wrote:
>>anyone know how or where I could get the source code for basic linux
>>programs like "ls" and or "mkdir" or "rm" ?
[...]
>The basic fileutils (ls, cp, rm, etc) can be found at:
>http://www.gnu.org/software/fileutils/fileutils.html
>
>You might also want to take a look at:
>http://www.gnu.org/software/coreutils/
>
>GNU's webpage holds many if not all of the Linux utils.
>http://www.gnu.org/


Good options all. An additional one is the source packages associated with 
whichever Linux distribution you use.

In Debian, as an example, you can use the command "dpkg-query -S filename" 
to find the package that holds any file actually on your system. You can 
then use "apt-get source packagename" to install it.

I imagine the other packaging systems (or at least RPM) have analogous 
capabilities. Slackware CDs used to include a complete filelist that you 
could grep to match an app to its .tgz package.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
