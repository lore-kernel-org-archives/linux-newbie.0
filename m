From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: kernel build
Date: Sat, 4 May 2002 06:53:21 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02050406532101.19766@unix.pa3gcu>
References: <20020503172146.GA12171@neon>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020503172146.GA12171@neon>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Axel H. Siebenwirth" <axel@hh59.org>, linux-newbie@vger.kernel.org

On Friday 03 May 2002 17:21, Axel H. Siebenwirth wrote:
> Hi,
>
> what is "make dep" actually doing? What are those dependency files for. A
> friend of mine insists on his opinion that it is enough to make bzImage
> after reconfiguring the kernel. I always do a "make dep" after
> configuration 'cause it says to do so.

Make dep (depend) means what it says, the process looks at what you have 
choosen in your config file and then creates a file called .depend in each 
source directory, .depend contains locations of header files called by each 
option you choose.
Basicly thats it in a nutshell.

In fact your friend (like yourself) is correct, if you do not do 'make dep' 
it will be done for you as make is told to check that it has been done in the 
Makefile.

I belive its because long ago one "had" to type make dep, but thats long gone.

>
> Regards,
> Axel

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
