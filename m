From: 1stFlight <1stflight@ameritech.net>
Subject: Re: rpm
Date: Tue, 3 Dec 2002 12:47:55 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212031247.55787.1stflight@ameritech.net>
References: <5.1.1.6.0.20021204083139.009f6010@mail.dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20021204083139.009f6010@mail.dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Pomeroy <dave@dpomeroy.com>, linux-newbie@vger.kernel.org

On Wednesday 04 December 2002 11:32 am, Dave Pomeroy wrote:
> I just installed Mandrake 9.0.  Everything is cool except when I try to run
> rpm to ad a package I get an error saying that I have 2 different versions
> of RPM.  Anyway to fix this without a reinstall?  Thanks for your help.
>
>
> Dave Pomeroy K7DNP South East Washington
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


Odd,  try this 

rpm -v 

and see what message you get, failing that try 

find / -name rpm* -print 

And see where the different "rpms" are installed

Happy hunting! 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
