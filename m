From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Upgrading from 2.4.18 (Redhat 7.3) to 2.5.59
Date: Wed, 19 Feb 2003 12:43:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0302191243130F.29824@unix.pa3gcu>
References: <720FB032F37C0D45A11085D881B033684CBC74@MBXSRV24.stu.nus.edu.sg>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B033684CBC74@MBXSRV24.stu.nus.edu.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>, Jose Luis Alarcon <jlalarcon@linuxwaves.com>
Cc: linux-newbie@vger.kernel.org

On Wednesday 19 February 2003 11:40, Eng Se-Hsieng wrote:
> Dear all,
>
> I realise that it's a difficult upgrade for a newbie like me. However, I
> would really to upgrade from 2.4.18 (Redhat 7.3) to 2.5.59 as soon as
> possible
>
> I have read the changelog for 2.5.59 but I was unable to find what
> software, including: libs, compiler and utilities I would have to upgrade
> in order to make my system suitable for 2.5.59.

Load ./linux/Documentation/Changes into an editor
goto line 41 read on untill line 61.

There is a list if "neded" libs, tools and utils.

Somply compare your system with the list, for example;

the first line says;
o  Gnu C                  2.95.3                  # gcc --version

It means you need at least version 2.95.3 of gcc, to find out which you have 
you type;
gcc --version
If the version is "lower" than the "needed" version then you will need to 
upgrade.
Thats how its done, to behonest i see nothing difficult in doing that.

>
> If I understand correctly, I shouldn't recompile the 2.5.59 kernel until I
> have all this sorted out?

You can always try, no one is stopping you, however your chance of sucess is 
nominal.

If i may say so, if you did not understand howto check your system with the 
list in the Changes file then you will find in very hard to compile and 
install a development kernel let alone use it, its not for the light at heart.

However once again noone is stopping you from doing so.

BTW, to give you a hint on how developemnt kernels change, the latest kernel 
is 2.5.62.

>
> Grateful for any suggestions.

Stay where you are unless "you know what you are doing".

>
> Eng Se-Hsieng


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
