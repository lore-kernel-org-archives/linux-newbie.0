From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Having problem in playing audio CD
Date: Sun, 29 Aug 2004 21:35:15 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4132A073.2030604@comcast.net>
References: <ef2116a9040829055765a7f55b@mail.gmail.com> <4131D3E1.2080608@vip.cybercity.dk> <ef2116a90408290736714c2b1e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <ef2116a90408290736714c2b1e@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kumaresh Perumal <kumaresh.perumal@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Kumaresh Perumal wrote:
> Hi Flemming,
>
> I am able to play audio CDs perfectly in windows, so I was thinking of
> any missing configuration for linux.
>
> Thanks,
> Kumaresh
>
> On Sun, 29 Aug 2004 15:02:25 +0200, Flemming Greve Skovengaard
> <dsl58893@vip.cybercity.dk> wrote:
>
>>
>>Kumaresh Perumal wrote:
>>
>>>Hi,
>>>
>>>I recently installed redhat linux and I couldn't play audio CD. I
>>>didn't get any error, but the toolbar says audio is playing with
>>>volume 40% and I couldn't hear any sound. I verified my soundcard and
>>>it works perfectly with the test sound.
>>>
>>>Let me know if I need to configure anythings.
>>>
>>>Thanks and regards,
>>>kumaresh
>>>-
>>>To unsubscribe from this list: send the line "unsubscribe
linux-newbie" in
>>>the body of a message to majordomo@vger.kernel.org
>>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>Please read the FAQ at http://www.linux-learn.org/faqs
>>>
>>>.
>>>
>>
>>I can think of 3 things that might be wrong.
>>
>>1. Check and make sure there is audio cable from your CDROM-drive to your
>>    soundcard
>>2. Check and make sure that CD volume is not muted
>>3. Check and make sure that CD volume is not low
>>

Few things here... even though you are able to play audio CDs under
Windows you might still want to check for an audio cable from the CD
drive to the soundcard.  Basically, most Windows audio CD players don't
use the audio cable because while the audio cable allows you to play
audio CDs with less CPU overhead (a good thing), it does not allow you
to 'rip' audio from the CD to a hard disk, which is a feature most
Windows CD players want.  In order to rip from a CD it needs to go over
the IDE data ribbon cable, so most Windows CD Players just do everything
over the data cable.  On the other hand, some (many? most?) Linux CD
players go with the philosophy of one purpose for one application, so
the CD player doesn't worry about ripping, and thus uses the CD audio
cable.  Note that if you don't have a CD audio cable from the CD drive
to your soundcard, most Linux audio CD players have options to use the
IDE data cable - check the documentation for which ever CD player you
were using (look for analog [uses CD audio cable] or digital [uses IDE
data ribbon]).

Also, to really give a helpful answer we'd need some more info.
1. What program(s) were you using to try to play the audio CD?
2. Are you using ALSA or OSS drivers for your soundcard?
3. When you say "with volume 40%", were was the volume showing 40%?  In
the CD player program, or some other mixer?  Was it the CD level volume,
or the Master volume?  Was the mixer using ALSA or OSS?

If you're not sure about whether you are using ALSA or OSS, it most
likely depends on which kernel version you use. 2.4.x used OSS (unless
it was patched to use ALSA), 2.6.x can use ALSA or OSS, most likely uses
ALSA.

Good luck,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFBMqBwGL3AU+cCPDERAul5AJ0QTsfKrJjkYCZQRfFxOPu5wtR7QwCgqdK0
xOHhcU5rzGgGNqnU+tD04E4=
=5NlU
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
