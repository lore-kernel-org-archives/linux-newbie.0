From: lawson_whitney@juno.com
Subject: Re: A way to transfer drives?
Date: Thu, 31 Oct 2002 19:30:45 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021031.193901.134684264.0.lawson_whitney@juno.com>
References: <200210310853.08719.1stflight@ameritech.net>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; 
	BOUNDARY="-1463810562-1718879131-1036107978=:26251"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210310853.08719.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
To: 1stflight@ameritech.net
Cc: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---1463810562-1718879131-1036107978=:26251
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII
Content-ID: <Pine.LNX.4.21.0210311923411.26251@giftie.alien.org>

On Thu, 31 Oct 2002, 1stFlight wrote:

>  I'm looking for a way to upgrade my HD and maintain file/directory structure.
> I've got a 20GB  with partitions for / /home /usr how can I copy/clone this
> drive over to it's 60B replacement? Thanks!
>
>          	Darryl
I wouldn't copy/clone it, I'd make new partitions in proportion, mount
them on new temporary mount points (make  some with mkdir if you
don't have some handy) and use tartar to copy the
filesystems:
tartar / /newslash
tartar /home /newhome
.....

tartar is what I call it, I chose the tar options for just such a use

#!/bin/bash
##copy a directory or partition
tar -C "$1" -cOl . | tar -C "$2" -xpf -


You could use cpio or cp or what you like instead, that is just the way
I would do it.
Some time ago somebody wondered why this did not copy everything in / -
it's not meant to,

Don't forget to reinstall lilo or whatever bootloader you use after
you get the new hd mounted where it is going to go.  have a boot floppy
handy.  You can install lilo in one place to make it work in another,
but I'm not up to explaining how.
--
---oops---


---1463810562-1718879131-1036107978=:26251
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII; NAME=tartar
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.21.0210311846180.26251@giftie.alien.org>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME=tartar

IyEvYmluL2Jhc2gNCiMjY29weSBhIGRpcmVjdG9yeSBvciBwYXJ0aXRpb24N
CnRhciAtQyAiJDEiIC1jT2wgLiB8IHRhciAtQyAiJDIiIC14cGYgLQ0K
---1463810562-1718879131-1036107978=:26251--


________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
