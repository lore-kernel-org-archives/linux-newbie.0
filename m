From: "Manish Katiyar" <mkatiyar@gmail.com>
Subject: Re: Copy-on-Write
Date: Wed, 6 Feb 2008 18:11:48 +0530
Message-ID: <ea11fea30802060441q4a3bd399x715acc734cf873a6@mail.gmail.com>
References: <ea11fea30802060300y73391357icfa2a94e3ff7971@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B07A303A9@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=d1bd6sCdmM2bsvhOtVAdI3xy8OjREh4HM0njKLiSokA=;
        b=aspg5AjgHnES+/D/jiF6K5WrB/NuY+UENz5XTgeJaCQ5I7rYQvdEeUxsyVCDYU/ACfmKlxFZIsRSl3nz2vUjruHnBYuTF7PEs3e1BNfh59gR+8Br2AwvE+P4lp77RkqpL4n4zuHOP04QaSKrKegDPILryVxSDq9i8QcEYP8/2aw=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A303A9@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Feb 6, 2008 6:03 PM, Rajat Jain <Rajat.Jain@infogain.com> wrote:
>
> Hi,
>
> >>
> >> I had read that the operating systems that use copy-on-write
> >> mechanism for fork(), it is better if they deliberately allow the
> >> CHILD to run first.
> >>
> >> This would be better because in 99% of the cases child will call
> >> exec() and the new address space will be allocated. Instead if the
> >> parent is executes first, an unnecessary copy of the pages is made
> >> (if parents writes) and later on when child executes, a fresh
> >> address space is executed.
> >>
> >> So in linux, is a child run first or the parent? Can we rely on this
> >> information?
> >
> > No with fork() it is not guaranteed.......however if you use vfork()
> > child is guaranteed to run first......
> >
>
> So as the author says, isn't running child first a good idea that needs to be implemented?
>

Not sure......I am getting a bit confused.....If implemented will
there be any issues in case of backward compatibility ?? ... For
example what will happen to daemon programs where typically parent
process exits after a fork() and rest of the code is taken care by the
child . In that case will there be an issue ???


> Thanks,
>
> Rajat
>



-- 
Thanks & Regards,
********************************************
Manish Katiyar  ( http://mkatiyar.googlepages.com )
3rd Floor, Fair Winds Block
EGL Software Park
Off Intermediate Ring Road
Bangalore 560071, India
***********************************************
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
