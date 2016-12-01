From: Samuel Bernardo <samuelbernardo.mail@gmail.com>
Subject: Re: linux kernel support for logitech g502 proteus
Date: Thu, 1 Dec 2016 16:44:38 +0000
Message-ID: <10298a05-f2cb-a4c4-ce7b-deeb2e5c29a8@gmail.com>
References: <2916ca4f-c4cf-06c9-3189-e33635ca621f@gmail.com>
 <58404CB1.6090705@moshe.nl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tJOHaQf1MHu5CepXXMtgkOOO4IAoBffM0"
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=PExEzQ7BPYZEN4pbCSneuPE8/5cgQvcOxxuk4j4DBz0=;
        b=ReQEyvyEugKPA5oJGFLj0O1NLXkNxKb1se9uTotcCaQSmFnfUCqnlvZBifF54toJTd
         g2swYubE4tQieT/3Af/ITKtTyJPZt4g+w3GUgTqn2lJpl0Qp7z7Oze8DKTsZl0LAY+ER
         i/nav4Tqr74ldx7OcqZtzGSn0c1snGjBnlcSEvpfe/Rb+4bsqF3hsmcrEOjH4ypWE+Lo
         xlYOpbC5J4U08rHRgxdJjDdxtzcjPrHTgJ6qC07e6zwYfM2RuKcHxei4ULRo3mXBphH7
         5732rn5dqnSCsUtb3osdASOjnaz4FY33ayFfGn5C4WgJCLwDbLmLlLv7vAuyaUFrFjVA
         cgMw==
In-Reply-To: <58404CB1.6090705@moshe.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: =?UTF-8?Q?M=c3=b4she_van_der_Sterre?= <me@moshe.nl>
Cc: linux-newbie@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--tJOHaQf1MHu5CepXXMtgkOOO4IAoBffM0
Content-Type: multipart/mixed; boundary="EVgPuS0fb269XWBDxKI1DIcDuDu2rXtBH"
From: Samuel Bernardo <samuelbernardo.mail@gmail.com>
To: =?UTF-8?Q?M=c3=b4she_van_der_Sterre?= <me@moshe.nl>
Cc: linux-newbie@vger.kernel.org
Message-ID: <10298a05-f2cb-a4c4-ce7b-deeb2e5c29a8@gmail.com>
Subject: Re: linux kernel support for logitech g502 proteus
References: <2916ca4f-c4cf-06c9-3189-e33635ca621f@gmail.com>
 <58404CB1.6090705@moshe.nl>
In-Reply-To: <58404CB1.6090705@moshe.nl>

--EVgPuS0fb269XWBDxKI1DIcDuDu2rXtBH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi M=C3=B4she van der Sterre,

Thanks for you answer.

This mouse can store keys in their internal memory but can also load
profiles from a local file.

When using profiles, keys are not stored in internal mouse memory. I had
tested it in other PC running Windows and when I disconnected from USB
and then connected to my PC running Linux verified that keys where not
being detected.

Only when I stored the keys in mouse memory (without using profile) I
could catch them using xev or showkey. This is why I think that could be
a missing feature for linux mouse module.


On 12/01/2016 04:15 PM, M=C3=B4she van der Sterre wrote:
> Hi,
>
> From your story, I assume the mouse has some kind of memory that rememb=
ers the key bindings. This means there is not actually a need for a speci=
fic kernel driver. I guess it is possible to program the mouse from user-=
space, with libusb for example. If there is no linux software available t=
hat already does this, you will need to do some reverse engineering on th=
e usb protocol used. This can be very simple, very hard or anything in be=
tween. I have no experience reverse engineering USB from windows, but you=
 could start by looking at USBPcap or simmilar windows based usb sniffers=
=2E
>
> As for the correct mailinglist, this question would be on topic for lin=
ux-newbie as it relates somewhat to driver development, but not the other=
s.
>
> I hope this helps,
> M=C3=B4she van der Sterre
>
> On 12/01/2016 11:57 AM, Samuel Bernardo wrote:
>> Hello,
>>
>> I'm sorry if I'm spamming some lists with this help request, but I don=
't
>> know exactly what's the right mailing list.
>>
>> I would like to use Logitech G502 RGB gaming mouse with programmed
>> profiles from their software, but I realized that generic driver in
>> linux didn't support it. Logitech discards any support for Linux OS.
>> This is the only reason I need a dual boot with Windows for programmin=
g
>> the mouse or generate the xml template for the key bindings.
>>
>> In Windows key mapping for mouse can be loaded from a xml file that
>> stores profiles or programmed directly into the mouse, but limited to
>> the keys available in keyboard or software.The following guides explai=
ns
>> the setup:
>>
>> http://support.logitech.com/en_us/article/26855
>>
>> http://support.logitech.com/en_us/article/26862?product=3Da0q31000009u=
2F9AAI
>>
>> With xml template is also possible to configure additional keys like F=
13
>> that are usefull to map macros for example in an IDE software. The gui=
de
>> explaining how to change xml file is below:
>>
>> http://i.imgur.com/NbmjWCS.png
>>
>> This mouse has many programmable keys that I would like to use in linu=
x.
>>
>> I suspect that xml configuration is loaded with the windows driver for=

>> g502. Since with actual generic driver in linux 4.8 the profile could
>> not be loaded, I ask if I you could help giving additional support for=

>> it in linux kernel?
>>
>> Thanks,
>>
>> Samuel
>>
>>
>>
>>



--EVgPuS0fb269XWBDxKI1DIcDuDu2rXtBH--

--tJOHaQf1MHu5CepXXMtgkOOO4IAoBffM0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYQFN2AAoJEO2Nqc2/qzs5cpUP/3c208/71QFuP+XZIkCDRe9t
75G/ZDAkg3zorqj6n/le2YutRQtquFIgKhrP2mnHiqMCWrkI4c3qtq5ix/R9eDg9
NOQuIiKqXJ+9cdK9+fYf46K7C5/+P1YTUqnRTktttO3+IHJvRNdxQPSuKL0/4FAy
Q/Ndl3TPBiWKFrOrIrCSrUsipF2HIiKQ3EdlCOdHLGrKGA+lWeyBeS30cQrVqjv4
mhk9nd0EVAP1azbsowTXYaMYXjB7s746IB1Ligf9CAotlZbzej4yz1bYC5jzWMWE
Qe0uPUx36+d1cbeWXWmvKYVbjuBKP5PsmcmvZAQqgckqDn2ZvnoHlH/d2UN3eXlw
YczC83FlzmbvNccbh0LrP/3nHbSzeZzuZNfZ4iE3GjeybmFQOmtjRTjYNQaZIa7/
X4vSFq+1ZMf+sFYg+snfrzRiCFyIJUW8uQNOCQTRRpzi7swwgoeg8THnNlIFE9RW
aXOUM2YqYsS68dcay5PIErLn28l/SXE5YQV/Fc8lpzVcCcil10vVSayMsYrYxC4k
VxWUsfrAIuOSprG1Gi48Ibg9C6YPEyuDszV3WtRNCzbvHlGhCl6YOYhPRry7rkk+
JQE+nwxa6jhv9ws+9Y6F66ApyXEM801DxVHVVV8qD1NH/L6YWyod19lvRtF0pZiQ
pgZqvDUqGuJ8d5IStatt
=gGWE
-----END PGP SIGNATURE-----

--tJOHaQf1MHu5CepXXMtgkOOO4IAoBffM0--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
