From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: insmod: unresolved symbol
Date: Thu, 16 Sep 2004 14:28:10 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409161428.10469.pa3gcu@zeelandnet.nl>
References: <20040916053654.46231.qmail@web53607.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040916053654.46231.qmail@web53607.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Donald Duckie <schipperke2000@yahoo.com>, linux-newbie@vger.kernel.org

On Thursday 16 September 2004 07:36, Donald Duckie wrote:
> hi simon & chuck!
>
> thank you very much for the information that you have
> sent.
>
> i have some confirmation though, because the
> information confuses me: removing the
> CONFIG_MODVERSIONS might not change anything. well,  i
> tried it, but the result was indeed still the same.
>
> anyway, here was what was done:
> i compiled the snull source file on 2.4.18-sh which i
> got from
> http://www.oreilly.com.tw/editor_column/a138_read.html.
> it was mentioned in that site that snull was compiled
> with 2.4.24.
>
> anyway, compilation with 2.4.18-sh was successful,
> but upon running insmod on 2.4.18-sh, i got those
> unresolved errors.
>
> any help/information are very  much welcome.
>
>
> and with depmod (since i am cross-compiling):

Meaning.???

> i also tried running "depmod
> -a" prior to compilation, but depmod wrote into
> /lib/modules/2.4.24, instead of
> /lib/modules/2.4.18-sh. both directories exists.
> do i really need to run depmod? 

If you had taken the trouble to have answered the few questions i asked you in 
my reply on the other thread, you could have gotten an answer here strait 
away from me, however you choose not to so you still have problems.
depmod with the -a option will write modules.dep to the directory which 
matches the results of the command, 'uname -r', so seeing that depmod wrote 
to 2.4.18 we can presume you are getting mixed up with 2.4.18-sh and 2.4.18, 
as i said in a previous mail, the directroy containg the linux source code 
(which is linked to "linux" with a symlink) is simply a name, the name of the 
resulting kernel is taken from the topdir Makefile lines 1,2,3 and 4, 4 is 
optional.

> how will i made it
> update the /lib/modules/2.4.18-sh directory instead of
> the /lib/modules/2.4.24 directory?

I think its time you answered the questions i and others have asked, then and 
only then could one get to the bottom of the problem you are having. I am 
convinced its got nothing to do with kernel 2.4.18 (see my comments in other 
mails).

> again, thanks for the help guys . ..

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
