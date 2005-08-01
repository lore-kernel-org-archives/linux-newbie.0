From: gautam borad <borad.gautam@gmail.com>
Subject: Re: kernel version problem
Date: Mon, 1 Aug 2005 19:20:13 +0530
Message-ID: <751caf1c05080106502a1d681@mail.gmail.com>
References: <4a618d080507300336460644fc@mail.gmail.com>
	 <20050730125013.84096.qmail@web40608.mail.yahoo.com>
Reply-To: gautam borad <borad.gautam@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050730125013.84096.qmail@web40608.mail.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: rekha vn <vidiyala_r@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Hi Rekha,
          When i said use -l /usr/src/linux/include it does not mean u
have to type "exactly" that, the name of the folder will be different.
Use that name. Besides the arrow thing you are talking about is
actually a soft link (asuming you saw it in ls listing).

Bye       

On 7/30/05, rekha vn <vidiyala_r@yahoo.com> wrote:
> i've tried both the methods:
> 
> 1.modprobe --force ./hello.o
> 2.-I in gcc (/usr/src/linux/include)
> 
> i'm getting "kernel will get tainted" warnings.
> 
> anyother better way?
> In my /usr/src/ I have two folders one as LINUX and
> also LINUX2.4.21-4.EL
> how is it possible?
> moreover, the LINUX folder has an arrow symbol over
> it?what does that mean?
> 
> 
> 
> 
> __________________________________
> Yahoo! Mail
> Stay connected, organized, and protected. Take the tour:
> http://tour.mail.yahoo.com/mailtour.html
> 
> 


-- 

---------------------------------------
We would change the world....
but GOD wont give the source!!
---------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
