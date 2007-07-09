From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: Padding in gcc
Date: Mon, 9 Jul 2007 20:51:12 +0530
Message-ID: <366312910707090821k5690fadbra8030bf657a8bd5c@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
	 <366312910707090738u5b3b00bxe56e609dae905b7a@mail.gmail.com>
	 <C86899CCB10A6C4E93D5978DCB232D4B052E0024@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ud7+qmqF+amaT4qBgCMg7XIXG4GrZgVRR+/kfsfLttcRr4OVFymnBrzi4xASOF9oi2tWyjXK/CwnmuAyxoy16IXwB5j35e5GuFwLnxhScNG+QVoUxoKeyqNYSZQiF6mcOGlt8Vy5uYs5pDuEik6NXs2dv4E5Fw6Z67mBhxwTDdo=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B052E0024@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 7/9/07, Rajat Jain <Rajat.Jain@infogain.com> wrote:
>
>
>
> Hi,
>
> >>
> >> Can we always rely on the fact that gcc will pad the following structure?
> >>
> >> typedef struct {
> >>     int descrp;      SYSCALL64_STRUCT_ATTR;
> >>     (Automatic padding here?)
> >>     long long pos;   SYSCALL64_STRUCT_ATTR;
> >>     int mode;        SYSCALL64_STRUCT_ATTR;
> >> } lseek64_t;
> >>
> >> What is the correct way to make it portable? Explicitly added padding
> fields?
>
> >may be i am missing something but why is this not portable? And how
> >does padding makes this portable?
>
> Hi ... sorry I could not ask very well, what I wanted to. I have a piece of
> code that ASSUMES that the above structure is padded (and I do not want to
> change that code). So how can I make sure that this structure is always
> padded (Is there any other way apart from adding explicit padding field?)
>
> So like we have a "packed" gcc attribute, do we have a "padded" gcc
> attribute or something like that (that ensures that gcc will always pad this
> structure.).
GCC will always pad it for best alignment depending on the
architecture. There is attribute to avoid this padding  though.
But padding is done by default depending on architecture for which you
compile your program.
So as long as cross compiliation process is correct, it should work i guess.

OTOH do you want to add just a fixed number of bytes irrespective of
the architecture?

Thanks
[PS : psbl has blacklisted me ,please CC to newbies too, just in case]

>
> Thanks,
> Rajat
>
>


-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
