From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: Printf and scanf
Date: Tue, 28 Jun 2005 09:12:58 +0530
Message-ID: <4b0d6e0d050627204268dd1ea7@mail.gmail.com>
References: <20050605122105.1865.qmail@web52905.mail.yahoo.com>
	 <d93f04c70506241420114b28da@mail.gmail.com>
	 <20050627181103.ABFB324F@eagle.6wind.com>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050627181103.ABFB324F@eagle.6wind.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andriot <andriot@6wind.com>
Cc: linux-newbie@vger.kernel.org

Now you have piqued my interest.......
what special characters??
any place on the net I can read up on this?

Joy


On 6/27/05, Andriot <andriot@6wind.com> wrote:
> Hendrik Visage wrote:
> 
> >On 6/5/05, Ankit Jain <ankitjain1580@yahoo.com> wrote:
> >
> >
> >
> >>i just want to know how scanf function can be used on
> >>the place of printf and vice versa
> >>
> >>
> >
> >In the Obfuscated C contest one of the first/early entries is one that
> >states "Using read to write" (Or something to similar extend, or
> >perhaps even using scanf to print). Reading that code is hackery, and
> >from my first glance at the code, it was don't with quote and macro
> >hackery.
> >
> >Thus you could #define scanf __prinf and #define printf __scanf... or
> >something with similar confusing
> >
> >
> 
> Of course, it is not possible to use directly printf like a scanf ;)
> But you can use printf to write some values into arguments when you call
> the function. This uses special caracters you put in the format string.
> And this should prevent you to call printf with a string the user wrote,
> because this is a very big security hole.
> 
> JP
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
<ed__> riel: if it were a vax, gcc would probably be an opcode

	- excerpt from #kernelnewbies
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
