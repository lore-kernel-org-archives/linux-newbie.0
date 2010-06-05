From: Joel Fernandes <agnel.joel@gmail.com>
Subject: Re: /proc/${PID}/cmdline parsing
Date: Sat, 5 Jun 2010 15:09:22 +0530
Message-ID: <AANLkTikrB7I4gn5x6xPqeHxBb7n9uN2T3M_i0RYeU1pe@mail.gmail.com>
References: <20100603092026.4807b1bb@pbmiha.malagasy.com>
	<20100603091935.GA15493@joel-laptop>
	<20100603122929.0782ae55@pbmiha.malagasy.com>
	<20100603123825.GE4720@nereid>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=IjPQENT2hFasLwxQban7B9FyPLPM3of/yUH0/psTaGc=;
        b=uOSdwxmIGrxEfHdG4Bko+6SMmQ/rV0745hxubCYSdHAtnxDSaHdMIq0mcjzoYFDBji
         hb8rhO+wvvPTs9Es5z5QvoP4FkWEsljsXjCR6vVsTe9KhOP4/clxnF21j+bZdYeQTM2J
         erJMzf7K5fW0SUnRWeYe0A5Ta1x/octRtF054=
In-Reply-To: <20100603123825.GE4720@nereid>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Kristof Provost <kristof@sigsegv.be>
Cc: Mihamina Rakotomandimby <mihamina@gulfsat.mg>, linux-newbie@vger.kernel.org

>>> I want to split "watchfind/-typef-nametoto" (the content
>>> of /proc/${PID}/cmdline) to get "watch find / -type f -name toto" (=
the
>>> command I issued above)
>>>
>>> But I cannot figure out how to split it.
>>> Would you know another place in the system I should look at?
>>>
>>>
>>
>> Running 'hexdump -C /proc/2202/cmdline' produces this:
>>
>> 00000000 =A02f 73 62 69 6e 2f 67 65 =A074 74 79 00 33 38 34 30
>> |/sbin/getty.3840|
>> 00000010 =A030 00 74 74 79 31 00 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 |0.tty1.|
>> 00000017
>>
>> It looks like the fields are separated by 0 bytes.
>> You'll simply need to read the file and split on every zero byte.
>
> You're right.
>
> I'm no awk expert, so the following command might not be as beautiful=
 as can
> be, but it does exactly what Mihamina wants :
>
> $ cat /proc/PID/cmdline | awk '{BEGIN {FS =3D "\0"} ; {ORS =3D " "}; =
{for (i =3D 1
> i < NF; i++) print $i}'
>

While we're at it, here's a perl one-liner :-)
cat /proc/self/cmdline | perl -F"\0" -lane 'foreach(@F) { print; }'

take care,
Joel
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
