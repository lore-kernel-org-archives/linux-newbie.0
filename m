From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: su fails
Date: Wed, 16 Jul 2003 10:55:16 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprsea2e1vhmmv6x@smtp.arrakis.es>
References: <Pine.LNX.4.56.0307151320130.4165@filesrv1.baby-dragons.com> <3F133105.7010309@bcgreen.com> <5.1.0.14.1.20030714080202.01ef9e68@celine> <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es> <200307142023.43039.pa3gcu@zeelandnet.nl> <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com> <5.1.0.14.1.20030715074706.01faa538@celine> <oprsc1u8ichmmv6x@smtp.arrakis.es> <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net> <Pine.LNX.4.56.0307151320130.4165@filesrv1.baby-dragons.com> <5.1.0.14.1.20030715122050.01fbba40@celine> <oprseazgwzhmmv6x@smtp.arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprseazgwzhmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org


>>
>> Unaddresed possibilities do include:
>>
>> 1. That you somehow were tricked into downloading and installing a=20
>> trojan app on the Slackware host. This is unlikely if you've stuck to=20
>> "official" Slackware update sites, and not even all that likely if=20
>> you've downloaded the sourcve of well-known apps from their sites and=20
>> installed them. But if you installed anything obscure, consider it=20
>> carefully.
> I'll check that out.
>>
>> 2. You don't say what the other system is, so I'll assume the worst,=20
>> that it runs Windows.
> Mandrake 9.0. There's a WinXP installation on it but I haven't run it for=
=20
> months.
>>
>> 3. The Coyote firewall/router may have been compromised. I haven't=20
>> looked at Coyote for years, so I don't know if it is keeping up with=20
>> security patches. How risky this is depends on what the firewall/router =

>> runs, but risk candidates include kernel-level problems, BIND problems, =

>> ssh problems ... that's what I can think of offhand.
> I'll check that out too.
>>
>>> 'stderr is not a tty - where are you?'
>>
>> With xdm, there is no console to map them to, so an xdm start **might** =

>> generate that sort of message (does your xdm have a small window,=20
>> probably in the lower right, that logs info?
> No
> if not, this guess gets more
>> convincing). Or they might be an old leftover of some time when that=20
>> userid tried to start X in some way that did not work. But the really=20
>> odd thing is that there is no reason why STDERR *should* be a tty; it is=
=20
>> common to redirect STDERR to a file (in fact, it is a common practice=20
>> when debugging X problems). So the message is, in a way, objecting to a =

>> commonplace practice.
> More info:
> cat lastlog:
> ~?tty30?pts/1(fqdn Mandrake9.0 machine)sh-2.05b$
> The file is 292292 bytes. This message could have something to do with a =

> tunnel I was trying at a time when the Slackware host was running a=20
> different (Suse) installation. Right?
> cat faillog:
> pts/0=C3=BC
> ?tty5
> 1/4?
> (The 1/4 actually appears in small script without the slash). The file is=
=20
> 24024 bytes.
> Translation anyone?
> TIA,
> Andrew
>



--=20
Using M2, Opera's revolutionary e-mail client: http://www.opera.com/m2/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
