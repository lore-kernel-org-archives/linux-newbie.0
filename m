From: Cyril <tipecaml@gmail.com>
Subject: Re: /proc/${PID}/cmdline parsing
Date: Fri, 04 Jun 2010 23:05:50 +0200
Message-ID: <4C096AAE.3000904@gmail.com>
References: <20100603092026.4807b1bb@pbmiha.malagasy.com> <20100603091935.GA15493@joel-laptop> <20100603122929.0782ae55@pbmiha.malagasy.com> <20100603123825.GE4720@nereid>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=LKJmpS155uiQHKXANyu0mfzmA6r20U+IowP9xm5LXbY=;
        b=TsKCG6pmsM/8s+t0r6Ci9sas0d7HcTq+VXq6P532L1GUcZfX2A0O4XZmqfFcPmKwA2
         FO2qGA/X2Fm1xSGNLSUpsm6WqmAgABaXOCTdFmWvcTUGp1OwLZZv+bQ2DzaY8EWE3GCC
         MK7vxp8CQBAt9WN4yuLDu0Q7r4XCWOhi278l0=
In-Reply-To: <20100603123825.GE4720@nereid>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Kristof Provost <kristof@sigsegv.be>
Cc: Mihamina Rakotomandimby <mihamina@gulfsat.mg>, linux-newbie@vger.kernel.org



Kristof Provost a =E9crit :
> On 2010-06-03 12:29:29 (+0300), Mihamina Rakotomandimby <mihamina@gul=
fsat.mg> wrote:
>  =20
>>> Joel Fernandes <agnel.joel@gmail.com> :
>>>      =20
>>>> If I launch a=20
>>>>  $ watch find / -type f -name 'toto'
>>>> (it's a useless command just for the example)
>>>> and then I get the PID of this.
>>>>        =20
>>> PID of what? watch or find?
>>>      =20
>> PID of "watch"
>>
>>    =20
>>>> When I=20
>>>>  $ cat /proc/${PID}/cmdline
>>>>  watchfind/-typef-nametoto
>>>> Yes, it's the command line, but I would like to parse it, in order=
 to
>>>> display the launched executable + its arguments.
>>>> How to parse it?
>>>>        =20
>>> Could you be a bit more clear with your question?
>>>      =20
>> I want to split "watchfind/-typef-nametoto" (the content
>> of /proc/${PID}/cmdline) to get "watch find / -type f -name toto" (t=
he
>> command I issued above)
>>
>> But I cannot figure out how to split it.
>> Would you know another place in the system I should look at?
>>
>>    =20
>
> Running 'hexdump -C /proc/2202/cmdline' produces this:
>
> 00000000  2f 73 62 69 6e 2f 67 65  74 74 79 00 33 38 34 30 |/sbin/get=
ty.3840|
> 00000010  30 00 74 74 79 31 00                             |0.tty1.|
> 00000017
>
> It looks like the fields are separated by 0 bytes.
> You'll simply need to read the file and split on every zero byte.
>
> Kristof
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>  =20

You're right.

I'm no awk expert, so the following command might not be as beautiful a=
s=20
can be, but it does exactly what Mihamina wants :

$ cat /proc/PID/cmdline | awk '{BEGIN {FS =3D "\0"} ; {ORS =3D " "}; {f=
or (i=20
=3D 1 i < NF; i++) print $i}'

Cyril.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
