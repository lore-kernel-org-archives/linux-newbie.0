From: Gavin Laking <me@gavinlaking.co.uk>
Subject: Re: ftp issues
Date: Thu, 14 Nov 2002 19:09:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021114190955.4c30adb3.me@gavinlaking.co.uk>
References: <92091C60D5E2B74CB77C1FDB84F5FA76EA61@s99mail02.okdhs.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <92091C60D5E2B74CB77C1FDB84F5FA76EA61@s99mail02.okdhs.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Little, Chris" <Chris.Little@okdhs.org>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Thu, 14 Nov 2002 11:23:12 -0600
"Little, Chris" <Chris.Little@okdhs.org> wrote:

> trying to ftp an oracle export.  this happens
>
> 150 Opening BINARY mode data connection for expKIDSaa.20021110.dmp
> (1048576000 bytes).
>   6% |*****
> | 63560 KB  775.22 KB/s    20:38 ETA
> ftp: expKIDSaa.20021110.dmp: short write

Two things I can think of:

1) temporary disk space is full (is swap space full too?)

2) the file is being written to at the same time as you are downloading
it.

Finally, save yourself some heartache in the long run by compressing the
file before you download it- save yourself bandwidth, and by downloading
the compressed version you can ensure that no other user will attempt to
write to it.

GL 

- -- 
Gavin Laking - Web Development Daemon

http://www.gavinlaking.co.uk
- --


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)

iD8DBQE90/UDaMak7Ylvm3ARAproAJoDW2qQLmGScYMQyTagEpADs9VrWgCgvEBp
UR4roHeAdANSxR1QRnUoGqg=
=LnY3
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
