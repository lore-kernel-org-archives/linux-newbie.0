From: James Miller <jamtatREMOVETHIS@mailsnare.net>
Subject: Re: how to replace three spaces with tab
Date: Thu, 2 Jun 2005 18:35:07 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0506021831040.7223@localhost.localdomain>
References: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
 <200506021740.01816.eric@cisu.net>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1963722583-1117755307=:7223"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200506021740.01816.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1963722583-1117755307=:7223
Content-Type: TEXT/PLAIN; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Thu, 2 Jun 2005, Eric Bambach wrote:

> sed 's/   /\t/' largefile.txt > largefile.edited
>
> Notice that s/(Three spaces)/(special Tab character sequence)/
>
> This will replace ALL occurances of 3 spaces in your file. Make sure you =
dont
> have 3 spaces in any other context or those will be changed too. It will
> output to a new file in case i didnt get it right ;)

Thanks for that command line tip, Eric. Meantime, I discovered that xedit=
=20
tells you, in it's search-and-replace routine, how to enter a tab=20
sequence: you hit ctrl-q and then tab while you're in the field where you=
=20
input the replacement text. This seems to have worked quite well. Why=20
xedit, of all editors, should have this feature? Dunno. Are there yet=20
other ways of doing this?

Thanks, James

>
> On Thursday 02 June 2005 05:11 pm, James Miller wrote:
>> Here's another example of what looks like something that should be fairl=
y
>> straightforward but which I've been struggling with for at least an hour
>> and cannot find an answer. I ran into this before and was similarly
>> stumped, so I did it all manually. This time I just want to get it done
>> and finally find out the secret, my ignorance, or whether this really is
>> one of those irresolvable riddles of (Linux) life.
>>
>> I have a document that consists of about 5,500 entries, each on its own
>> line. If this matters, it's a block file to block out advertising by
>> resolving certain domains to the localhost (127.0.0.1). In each line of
>> the file as I saved it, there are three space characters between the IP
>> and the domain name (damn that elinks browser for doing that!). For my
>> router to effectively use the file, each of those 5,500 three-space
>> sequences need to be changed to a tab sequence--like when you press the
>> tab key while typing in a document. How can I automate this?
>>
>> I know how I'd do it in Word, but I've sworn off that sorry excuse for a
>> piece of software (those guys in Redmond will be jumping with glee when
>> they read this one: man with naive open source principles walks off Linu=
x
>> precipice). None of the Linux equivalents I've tried (Abiword, OpenOffic=
e,
>> gedit, nano) gives any indication of how a tab character can be inserted
>> in their search-and-replace feature. There are no formatting characters =
to
>> select, as they call them in smarmy M$ speak. The search-and-replace
>> dialogues all understand hitting the tab key as the user wanting to move
>> to the next field, not as data entry. There's probably a simple command
>> line way to do this, but if I were adept enough at simple command line
>> stuff, I'd have found it already. Can anyone offer pointers on how to
>> automate replacement of the 5,500 three-space sequences with a tab
>> sequence?
>>
>> Thanks, James
>>
>> -------------------------------------------------------------------+
>> If you hit the "reply" button in your email client to respond to my
>> message, be sure to remove the REMOVETHIS portion of my email address
>> (inserted as an anti-spam tactic). If you don't, your message won't
>> reach me.
>> -------------------------------------------------------------------+
>> -
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" =
in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
>
> --=20
> ----------------------------------------
> --EB
>
>> All is fine except that I can reliably "oops" it simply by trying to rea=
d
>> from /proc/apm (e.g. cat /proc/apm).
>> oops output and ksymoops-2.3.4 output is attached.
>> Is there anything else I can contribute?
>
> The latitude and longtitude of the bios writers current position, and
> a ballistic missile.
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-December =
08,2000
>
> ----------------------------------------
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-------------------------------------------------------------------+
If you hit the "reply" button in your email client to respond to my=20
message, be sure to remove the REMOVETHIS portion of my email address=20
(inserted as an anti-spam tactic). If you don't, your message won't=20
reach me.
-------------------------------------------------------------------+

--8323328-1963722583-1117755307=:7223--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
