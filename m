From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Audio problem with nforce board.
Date: Thu, 8 Jan 2004 04:27:26 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401080427.38264.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Content-Description: clearsigned data
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I've been helping a friend get Linux installed and we've run into problems 
with the onboard sound in his computer.

OS is Redhat 9.0, kernel is 2.4.23 (updated for nforce AGP support). Mainboard 
is a GA-7NNXP

With the i810_audio module loaded, sound is distorted and comes in small 
bursts in some applications. XMMS running via ESD cannot play more than the 
first 3 seconds of any audio file (although using OSS for output operates 
fine).

Loading the nvaudio module causes the computer to lock hard.

The applications that have the issue appear to be the ones that use SDL (xmms 
and mplayer are unaffected, but chromium, quake3 and freeciv are).

Updating the SDL libraries did not fix the problem. Installing ALSA did not 
fix the problem either. aplay/sox would skip over the first 1-2 seconds of a 
wav file (some kind of buffering problem?). XMMS was unable to play audio.

He has some issues with sound under Windows XP, he managed to reduce them by 
using a BIOS upgrade awhile back but he's still having issues (RAID 
controller apparently takes over the PCI bus or somesuch, a specific issue 
with the GA-7NNXP mainboard).

Loading drivers for the raid controller causes the computer to lock hard (it 
freezes, unfreezes temporarily, then freezes again).

Attempted running esd using the -r 48000, issue persisted.

Further advice would be appreciated

- -- 
"They're just using religion as an excuse to be really crappy to each other." 
- - Dave Lister, Red Dwarf

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE//Fah94zI/zB2CYURAvKqAJsECo6y8UvGrkHaT0sqGHtv6BEd6ACfQ6cC
aBupyY9C8+Y7ZBGbMyT8F6w=
=GiOG
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
