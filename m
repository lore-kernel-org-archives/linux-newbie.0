From: Eric Bambach <eric@cisu.net>
Subject: Re: how to replace three spaces with tab
Date: Thu, 2 Jun 2005 17:40:01 -0500
Message-ID: <200506021740.01816.eric@cisu.net>
References: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

sed 's/   /\t/' largefile.txt > largefile.edited

Notice that s/(Three spaces)/(special Tab character sequence)/

This will replace ALL occurances of 3 spaces in your file. Make sure yo=
u dont=20
have 3 spaces in any other context or those will be changed too. It wil=
l=20
output to a new file in case i didnt get it right ;)

On Thursday 02 June 2005 05:11 pm, James Miller wrote:
> Here's another example of what looks like something that should be fa=
irly
> straightforward but which I've been struggling with for at least an h=
our
> and cannot find an answer. I ran into this before and was similarly
> stumped, so I did it all manually. This time I just want to get it do=
ne
> and finally find out the secret, my ignorance, or whether this really=
 is
> one of those irresolvable riddles of (Linux) life.
>
> I have a document that consists of about 5,500 entries, each on its o=
wn
> line. If this matters, it's a block file to block out advertising by
> resolving certain domains to the localhost (127.0.0.1). In each line =
of
> the file as I saved it, there are three space characters between the =
IP
> and the domain name (damn that elinks browser for doing that!). For m=
y
> router to effectively use the file, each of those 5,500 three-space
> sequences need to be changed to a tab sequence--like when you press t=
he
> tab key while typing in a document. How can I automate this?
>
> I know how I'd do it in Word, but I've sworn off that sorry excuse fo=
r a
> piece of software (those guys in Redmond will be jumping with glee wh=
en
> they read this one: man with naive open source principles walks off L=
inux
> precipice). None of the Linux equivalents I've tried (Abiword, OpenOf=
fice,
> gedit, nano) gives any indication of how a tab character can be inser=
ted
> in their search-and-replace feature. There are no formatting characte=
rs to
> select, as they call them in smarmy M$ speak. The search-and-replace
> dialogues all understand hitting the tab key as the user wanting to m=
ove
> to the next field, not as data entry. There's probably a simple comma=
nd
> line way to do this, but if I were adept enough at simple command lin=
e
> stuff, I'd have found it already. Can anyone offer pointers on how to
> automate replacement of the 5,500 three-space sequences with a tab
> sequence?
>
> Thanks, James
>
> -------------------------------------------------------------------+
> If you hit the "reply" button in your email client to respond to my
> message, be sure to remove the REMOVETHIS portion of my email address
> (inserted as an anti-spam tactic). If you don't, your message won't
> reach me.
> -------------------------------------------------------------------+
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
