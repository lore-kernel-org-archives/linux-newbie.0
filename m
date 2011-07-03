From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Re: Question on syslogd and syslog
Date: Sun, 3 Jul 2011 13:54:07 -0400
Message-ID: <CALyraeO1N3rvtHkRd9YWWV6azg-Y42dM3W9ytwo-nV4Rik3=9g@mail.gmail.com>
References: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com>
	<alpine.DEB.2.02.1106281238210.7935@asgard.lang.hm>
	<BANLkTi=tFc2uoGMNFAAFqpeka_otC6CsOQ@mail.gmail.com>
	<alpine.DEB.2.02.1107021021090.26801@asgard.lang.hm>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=VBADEpAK7CVKt5xUDfYBvBInawV27+whXc/3OFIMQfM=;
        b=kwnQ8R7eUAM1HZkcOOYqpV31fApgLH9CxLoAUHz6N+XRRuNQwHy6MCE65SXqreKoZ9
         lQ8s/AsPO+6dOxbH3ik2hSxXx7O0yCPivN9808rzDFOgd8UwbWthHhpKXwxRUlnOUSEH
         A9NPRWC4Ttb5okRNbhrwVgOE/b8lyS6RnaXWI=
In-Reply-To: <alpine.DEB.2.02.1107021021090.26801@asgard.lang.hm>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: david@lang.hm
Cc: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

=46acilities of syslogd are associated to a particular file. So, in my
application there are 20 tasks which needs to have a separate log file
for every task. So, mapping every task to one facility fills my
requirement. So, this is the reason I want to extend the facilities of
level LOGLOCAL0-7.

Coming to previous question, the purpose is to fulfill the above requir=
ement.

Thanks,
Sri.

On Sat, Jul 2, 2011 at 1:23 PM,  <david@lang.hm> wrote:
> the problem is that in the syslog spec, the facility and severity get
> combined into one 8 bit field (one of the two only has 12 values defi=
ned
> instead of 16, but I don't remember off the top of my head which one)
>
> so extending this is creating a new protocol.
>
> also, the reason I was talking about filtering is that other than fil=
tering,
> what purpose is there in settng the facility?
>
> David Lang
>
> On Sat, 2 Jul 2011, Sri Ram Vemulpali wrote:
>
>> Thanks for the replies. My question is more on how to extend
>> facilities, rather on how to filter the messages. It seems there is =
a
>> code in the toolchain syslog.h where the array representing the
>> facilities needs to be extended. Please correct me if I am wrong.
>>
>> Sri.
>>
>> On Tue, Jun 28, 2011 at 3:41 PM, =A0<david@lang.hm> wrote:
>>>
>>> you would be creating a completely different over-the-wire protocol=
 for
>>> your
>>> syslog messages.
>>>
>>> however, note that newer syslog daemons (syslog-ng and rsyslog for
>>> example)
>>> allow you to do filtering on just about anything in the message, no=
t just
>>> the facility and severity.
>>>
>>> David Lang
>>>
>>> On Tue, 28 Jun 2011, Sri Ram Vemulpali wrote:
>>>
>>>> Date: Tue, 28 Jun 2011 14:11:59 -0400
>>>> From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
>>>> To: linux-kernel-mail <linux-kernel@vger.kernel.org>,
>>>> =A0 =A0linux-newbie@vger.kernel.org
>>>> Subject: Question on syslogd and syslog
>>>>
>>>> Hello All,
>>>>
>>>> =A0 I am looking to modify number of facilities available in syslo=
g so
>>>> that for my application I can have much more array of them at disp=
osal
>>>> of my need. So currently only LOG_LOCAL0 - LOG_LOCAL7 are defined =
for
>>>> user, what if I want to extend them, is there a way I can extend t=
hem.
>>>> Or should I go ahead and modify the source code of syslog. Can any
>>>> please point me in right direction and where can I get syslogd and
>>>> syslog source code. Thanks in advance.
>>>>
>>>>
>>>
>>
>>
>>
>



--=20
Regards,
Sri.
