From: Carl Lawton <carl@anexia.co.uk>
Subject: Re: tar confined to partitions
Date: Tue, 03 Sep 2002 10:45:02 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20020903102834.00b7ff88@interzone.anexia.co.uk>
References: <5.1.0.14.1.20020902094227.021b5bd0@celine>
 <5.1.0.14.1.20020902094227.021b5bd0@celine>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209021837.g82IbEK09801@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>, linux-newbie@vger.kernel.org
Cc: linux-newbie@hartford-hwp.com


>
>tar -C "$1" -cOl . | tar -C "$2" -xpf -

Haines,

If Ray hasn't sorted you out by now you could try cpio to copy the files.

If i have it right you are just trying to copy everything to /mnt/mirror

In which case you could just do:

        find / -print | egrep -v "^/mnt/mirror|^/proc" | cpio -pdmuv /mnt/mirror


the egrep just takes out everything in /mnt/mirror ( so you don't backup your backup)
and /proc

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
