From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Specify gcc version during make
Date: Sun, 6 Apr 2003 09:58:17 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03040609581703.02940@unix.pa3gcu>
References: <720FB032F37C0D45A11085D881B03368A2B80B@MBXSRV24.stu.nus.edu.sg>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B80B@MBXSRV24.stu.nus.edu.sg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eng Se-Hsieng <g0202512@nus.edu.sg>, linux-newbie@vger.kernel.org

On Saturday 05 April 2003 09:35, Eng Se-Hsieng wrote:
> Dear all,
>
> I am running gcc version 2.96 and need to install gcc version 3.2.
>
> After this installation, how may I specify in make bzImage which
> compiler version to use?

/usr/bin/gcc is a symbolic link to /usr/bin/gcc-version.
I would imagen having multiple compilers is not such a handy thing to have.

> Thank you.
>
> Regards,
> Se-Hsieng


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
