From: Heimo Claasen <hammer@revobild.net>
Subject: Re: block-major-33
Date: 07 Oct 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210071243.g97Ch2802232@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> The kernel hasn't load the appropriate module when fstab is parsed
> during the boot process, so you get the error.

I don't think this is the reason; the module _is_ loaded with the
kernel but if the adapter with a CF card is not present/inserted it's
with executing 'fstab' that the "[FAILED]" message appears.

On a similar issue, but on the Zip-Drives's "exchangeable medium":
In the manuals, Iomega advises to _not_ have a Zipdisk inserted when
booting up. However, depending on the setting in fstab (with or
without auto-mounter) you would get a "[FAILED]" for this too.

Which would be only logical. Though as with floppies too, the
traditional wisdom is to _not_ have them inserted when starting up a
machine, as the start-up and self-tests could cause an initial current
in the divices which _could_ be harmful for data on the inserted media.

So why starting up Linux _does_ demand to have them insterted ?
I found numbers of such indications in articles, Howtos etc.

// Heimo Claasen //<revobild at revobild dot net>// Brussels 2002-10-07
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
