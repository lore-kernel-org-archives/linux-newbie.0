From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: su fails
Date: Wed, 16 Jul 2003 18:11:10 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F15F7AE.8060705@bcgreen.com>
References: <3F133105.7010309@bcgreen.com>	 <5.1.0.14.1.20030714080202.01ef9e68@celine>	 <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es>	 <200307142023.43039.pa3gcu@zeelandnet.nl>	 <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com>	 <5.1.0.14.1.20030715074706.01faa538@celine>	 <oprsc1u8ichmmv6x@smtp.arrakis.es> <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: 333101@personal.net.py, linux-newbie@vger.kernel.org

I haven't had the timer for a full report, but, althought I'm not
CLEAR that his box has been rooted, things like minor changes to
su, and other wierd things failing are signs of a rootkit (yes,
a clumsy one) being installed.  Having su suddenly start to
give different messages is a sign  that SOMEBODY has changed
SOMETHING.

If you can't show that you changed it, then you have to presume
that somebody else has.

At the very least, I think he should run something like chkrootkit to s=
ee
if any well-known root kit is being used.

Alan Bort wrote:
> Well... I think bash actually has a builtin su... so if you reinstall
> bash (not a very big package anyway)... it might help. since you've
> already installed shadow again...
>=20
> Anyway... I agee with the (quote)'I'd just load a new OS and migrate =
the
> user data over to it.'(/quote) idea...
>=20
> El mar, 15-07-2003 a las 12:38, Andrew Langdon-Davies escribi=F3:
>=20
>>>>>It sounds to me like you've been rooted, and somebody installed
>>>>>a trojan.  I'd do a full hunt for signs of a rootkit. When in
>>>>>doubt (especially if there are ony a few people on your system),
>>>>>I'd just load a new OS and migrate the user data over to it.
>>>
>>>I don't want to sound like Pollyanna, but interpreting your initial=20
>>>trouble report as evidence of a breakin seems to me like an enormous=
=20
>>>leap.
>>>
>>>>I thought reinstalling shadow had put everything right, but there a=
re=20
>>>>still hiccups. For example, although I can now su again --that is, =
it=20
>>>>now recognises the password-- if I give the wrong password I still =
get=20
>>>>just 'sorry'.


--=20
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
        the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
