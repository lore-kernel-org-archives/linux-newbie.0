From: david@lang.hm
Subject: Re: Question on syslogd and syslog
Date: Tue, 5 Jul 2011 17:33:35 -0700 (PDT)
Message-ID: <alpine.DEB.2.02.1107051732170.7310@asgard.lang.hm>
References: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com> <alpine.DEB.2.02.1106281238210.7935@asgard.lang.hm> <BANLkTi=tFc2uoGMNFAAFqpeka_otC6CsOQ@mail.gmail.com> <alpine.DEB.2.02.1107021021090.26801@asgard.lang.hm>
 <CALyraeO1N3rvtHkRd9YWWV6azg-Y42dM3W9ytwo-nV4Rik3=9g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="680960-103187949-1309912415=:7310"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CALyraeO1N3rvtHkRd9YWWV6azg-Y42dM3W9ytwo-nV4Rik3=9g@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Cc: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--680960-103187949-1309912415=:7310
Content-Type: TEXT/PLAIN; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

the mechanism for putting all the logs with a paticular facility in a=20
different logfile if the filtering that I mentioned. if you use anything=20
other than sysklogd, you can filter things into files based on anything in =

the message, not just the facility.
David Lang

  On Sun, 3 Jul 2011, Sri Ram Vemulpali=20
wrote:

> Facilities of syslogd are associated to a particular file. So, in my
> application there are 20 tasks which needs to have a separate log file
> for every task. So, mapping every task to one facility fills my
> requirement. So, this is the reason I want to extend the facilities of
> level LOGLOCAL0-7.
>
> Coming to previous question, the purpose is to fulfill the above requirem=
ent.
>
> Thanks,
> Sri.
>
> On Sat, Jul 2, 2011 at 1:23 PM,  <david@lang.hm> wrote:
>> the problem is that in the syslog spec, the facility and severity get
>> combined into one 8 bit field (one of the two only has 12 values defined
>> instead of 16, but I don't remember off the top of my head which one)
>>
>> so extending this is creating a new protocol.
>>
>> also, the reason I was talking about filtering is that other than filter=
ing,
>> what purpose is there in settng the facility?
>>
>> David Lang
>>
>> On Sat, 2 Jul 2011, Sri Ram Vemulpali wrote:
>>
>>> Thanks for the replies. My question is more on how to extend
>>> facilities, rather on how to filter the messages. It seems there is a
>>> code in the toolchain syslog.h where the array representing the
>>> facilities needs to be extended. Please correct me if I am wrong.
>>>
>>> Sri.
>>>
>>> On Tue, Jun 28, 2011 at 3:41 PM, =A0<david@lang.hm> wrote:
>>>>
>>>> you would be creating a completely different over-the-wire protocol for
>>>> your
>>>> syslog messages.
>>>>
>>>> however, note that newer syslog daemons (syslog-ng and rsyslog for
>>>> example)
>>>> allow you to do filtering on just about anything in the message, not j=
ust
>>>> the facility and severity.
>>>>
>>>> David Lang
>>>>
>>>> On Tue, 28 Jun 2011, Sri Ram Vemulpali wrote:
>>>>
>>>>> Date: Tue, 28 Jun 2011 14:11:59 -0400
>>>>> From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
>>>>> To: linux-kernel-mail <linux-kernel@vger.kernel.org>,
>>>>> =A0 =A0linux-newbie@vger.kernel.org
>>>>> Subject: Question on syslogd and syslog
>>>>>
>>>>> Hello All,
>>>>>
>>>>> =A0 I am looking to modify number of facilities available in syslog so
>>>>> that for my application I can have much more array of them at disposal
>>>>> of my need. So currently only LOG_LOCAL0 - LOG_LOCAL7 are defined for
>>>>> user, what if I want to extend them, is there a way I can extend them.
>>>>> Or should I go ahead and modify the source code of syslog. Can any
>>>>> please point me in right direction and where can I get syslogd and
>>>>> syslog source code. Thanks in advance.
>>>>>
>>>>>
>>>>
>>>
>>>
>>>
>>
>
>
>
>
--680960-103187949-1309912415=:7310--
