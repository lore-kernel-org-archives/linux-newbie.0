From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: No Sound with Kernel 2.6.7
Date: Mon, 8 Nov 2004 21:41:09 +0930
Message-ID: <200411082141.22976.Adam@Luchjenbroers.com>
References: <20041104165934.28971dba@Knoppix>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041104165934.28971dba@Knoppix>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: Peter <heisspf@skyinet.net>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Fri, 5 Nov 2004 07:29, you wrote:
> Hi,
>
> Slackware10
>
> When I installed the kernel 2.6.7 my sound was lost, the error message
> claiming it can not find module via82cxxx_audio.c. Checking
> /lib/modules/2.6.7/kernel/drivers there was no /sound folder.
>
> I then copied ../2.4.26/../sound into ../2.6.7../drivers/ it did not change
> it still claimed it could not find my sound module after rebooting.
>
> I then switched back to 2.4.26 and sound was back.
>
> Could that be resolved and how?
>
> A side benefit of the whole exercise was that all of a sudden starting kde
> programs such as kppp takes now only half the time than before I tried to
> switch kernels. It used to take an annoying 22 seconds, now it takes only
> 11. ???????????
>
> Thanks & Regards


Probably worth running alsamixer just to check it's not as simple as 
everything being muted before you look deeper for the cause of your problems. 
If not, you'll want to unmute everything after completing the steps to make 
it work.

You'll want to check your kernel compile options to make sure you're compiling 
your sound drivers (preferably as modules), you'll also find that between 
kernel 2.4 and 2.6 there is a change from OSS to ALSA as the primary sound 
architecture.

www.alsa-project.org will be able to tell you what you'll need to know.

You'll want to add a line similar to this to your modprobe.conf file.

alias snd-card-0 snd-via82xx
install snd-via82xx /sbin/modprobe --ignore-install snd-via82xx 
&& /usr/sbin/alsactl restore >/dev/null 2>&1 || :
remove snd-via82xx { /usr/sbin/alsactl store >/dev/null 2>&1 
|| : ; }; /sbin/modprobe -r --ignore-remove snd-via82xx

The extra lines will load and save the mixer settings for ALSA, the above has 
been taken from my modprobe.conf file.

You also might want to run alsamixer and just check that your sound isn't just 
muted. After the above steps you will still need to unmute your sound card 
anyhow.


- -- 
"I'm reminded of the day my daughter came in, looked over my shoulder at some 
Perl 4 code, and said, 'What is that, swearing?'" - Larry Wall 
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQFBj2Ji94zI/zB2CYURAiqqAJsELFoxcwqJbUS0dwCwTDVOEBooLQCgmbeW
nUtnaJVLEMq/Ps/nmU2GKD8=
=D++O
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
