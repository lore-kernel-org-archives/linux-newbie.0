From: "Sverre Hamre" <sverre.hamre@gmail.com>
Subject: Re: Problems compiling Binutils 2.17
Date: Tue, 12 Aug 2008 11:48:34 +0200
Message-ID: <a2016d8d0808120248o7aaeff57r99c837df2048a874@mail.gmail.com>
References: <633001.84864.qm@web59712.mail.ac4.yahoo.com>
	 <4896D5B8.2000505@oak.selfip.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=K6VrC0KKz1xerxxek9XUN/ebUwhDNXqpAwUIDRDuPKk=;
        b=ij1szFpZ6z1Uubm4cgIanolpOdFF1yyASPcc+zBqK6cHh5ZzXLMeWhg3ElrS+XUMQA
         pOWpwLOYsyAKtb7AJUcTQmZsdPpgUZBdE74jHjGaSsgFv9eQqiA8z4o8SXY+rdZHWFPV
         GBuvUStty3t5xzHjHhXKfaxuRyUwy/SwdvaHs=
In-Reply-To: <4896D5B8.2000505@oak.selfip.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Haywood <tla@oak.selfip.net>
Cc: Phil C <hpypenguin@yahoo.com>, Yeti <yeti@myhich.com>, Newbie Mailing List <linux-newbie@vger.kernel.org>

On Mon, Aug 4, 2008 at 12:11 PM, Dave Haywood <tla@oak.selfip.net> wrote:
> Phil C wrote:
>
>>> It seems like the configure script is not working.
>>> Did you check whether it is executeable or not? ( chmod +x )
>>>
>>
>>
>>>
>>> Is it in the directory ../binutils-2.12/ ?
>>> Why are you installing a system wide libary with sudo and not as root
>>> user?
>>> Yeti
>>>
>>
>> Ill have to check on the permissions. I'm installing with sudo because I
>> use Ubuntu so there is no root login.
>>
>>
>
> Couple of options I can think of on Ubuntu:
>
>   1) sudo su -
>
>         You now have a root shell to do the install
>
>
> or:
>
>
>   2) add a "wheel" group to /etc/group and add your user id to it
>
>        in /etc/pam.d/su uncomment "auth sufficient pam_wheel.so trust"
>
>         You can now su without using sudo and without specifying any
> password so long as you are a member of the wheel group
>

also on ubuntu sudo -i
then you are root user.

Sverre

>
> Dave.
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
