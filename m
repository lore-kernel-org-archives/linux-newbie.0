From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Network Configuration Problem affecting Games.
Date: Fri, 3 Sep 2004 23:33:40 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409032333.45634.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Distro: Fedora Core 2.

I'm having trouble with some games in a networked environment. In all cases I 
am unable to browse servers, and in one case not even able to join the game. 
The problem in all cases appears to relate to broadcast packets not being 
properly received by the application. All games played so far are unable to 
browse for servers. They are

 Unreal Tournament 2004 (Native)
 Call of Duty (Cedega)
 Battlefield 1942 (Cedega)
 Command and Conquer - Generals (Cedega - network games are unplayable).

 As native games appear to also be affected, this appears to be a system 
config issue (not a Cedega issue). What might cause this behavior (I'm 
running FC2 with the latest 2.6.7 kernel rpms, currently not running a custom 
kernel build). Turning IPTables off has had no effect (which would suggest 
it's not a firewalling issue).

I'd like to get to the bottom of this issue, I suspect it at least partially 
has something to do with handling of broadcast messages.

- --
"It won't be covered in the book. The source code has to be useful for 
something, after all... :-)" - Larry Wall
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD4DBQFBOHm/94zI/zB2CYURAiIFAJ4twsiZvUgn5HKq2TGpory3Q4TmTgCVGkiu
WrfOVbB6rEpy5zXhr5EKew==
=L86z
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
