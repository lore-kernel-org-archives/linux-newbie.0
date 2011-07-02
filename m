From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Re: Question on syslogd and syslog
Date: Sat, 2 Jul 2011 10:28:44 -0400
Message-ID: <BANLkTi=tFc2uoGMNFAAFqpeka_otC6CsOQ@mail.gmail.com>
References: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com>
	<alpine.DEB.2.02.1106281238210.7935@asgard.lang.hm>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=26eREzmJ0n78H+YYZ1i6q02XNdqixPp585i3D4KpRzc=;
        b=P6dKNZGaiBDRejOP5YHlvo9g1z4zGDgB1kJ4gAPD88eZ+d8I57kbA7sXjWQxgHzBU8
         UTqYdxHS9OvsZFK+RCpbf0whATWxYO5kWRjNJkK/4VqX4nmxuAEzX9XbAutNnZHWSl8F
         S+fvkPemTVlzJf2N+pEivYNrKcxpPFGFqCguI=
In-Reply-To: <alpine.DEB.2.02.1106281238210.7935@asgard.lang.hm>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: david@lang.hm
Cc: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

Thanks for the replies. My question is more on how to extend
facilities, rather on how to filter the messages. It seems there is a
code in the toolchain syslog.h where the array representing the
facilities needs to be extended. Please correct me if I am wrong.

Sri.

On Tue, Jun 28, 2011 at 3:41 PM,  <david@lang.hm> wrote:
> you would be creating a completely different over-the-wire protocol f=
or your
> syslog messages.
>
> however, note that newer syslog daemons (syslog-ng and rsyslog for ex=
ample)
> allow you to do filtering on just about anything in the message, not =
just
> the facility and severity.
>
> David Lang
>
> On Tue, 28 Jun 2011, Sri Ram Vemulpali wrote:
>
>> Date: Tue, 28 Jun 2011 14:11:59 -0400
>> From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
>> To: linux-kernel-mail <linux-kernel@vger.kernel.org>,
>> =A0 =A0linux-newbie@vger.kernel.org
>> Subject: Question on syslogd and syslog
>>
>> Hello All,
>>
>> =A0 I am looking to modify number of facilities available in syslog =
so
>> that for my application I can have much more array of them at dispos=
al
>> of my need. So currently only LOG_LOCAL0 - LOG_LOCAL7 are defined fo=
r
>> user, what if I want to extend them, is there a way I can extend the=
m.
>> Or should I go ahead and modify the source code of syslog. Can any
>> please point me in right direction and where can I get syslogd and
>> syslog source code. Thanks in advance.
>>
>>
>



--=20
Regards,
Sri.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
