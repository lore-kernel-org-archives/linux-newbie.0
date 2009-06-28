From: Drew <drew.kay@gmail.com>
Subject: Re: How to get control over Power LED
Date: Sun, 28 Jun 2009 13:46:01 -0700
Message-ID: <c268e4660906281346k3f9a6343v18db1ca79b60620e@mail.gmail.com>
References: <E9E3926FA9CDBF489EA1684042C8A02601531D7C@zmy16exm72.ds.mot.com> 
	<20090623090357.GE25947@mcom.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=pKXBpbl2jjYegZ+UaMgv4+7jDDWTikwQ/SM08U1oXlY=;
        b=wepwLKVT66Ak9bjB84kUHe51tRmdLhcaHU/OkXs38Y0+e00dKxg3uDaNzGPGRJUN2C
         ri3jFmjU4c47WiPWocM2FNqqkv2cducmKRYf0Od03nDmPTm1we61XhehtGJA7+QmrKcX
         9t/PBpB1U+k6SGpGr4CDghRB/4Wm0CHSSShOA=
In-Reply-To: <20090623090357.GE25947@mcom.fr>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tekale Sharad-FHJN78 <FHJN78@motorola.com>
Cc: Christophe Lucas <clucas@altern.org>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

> How can I get control over Power LED?
>
> My requirement is I can be able to control Power LED by using /proc file
> system.

Hi,

What hardware are you wanting to control the lights on? As far as I
know only embedded systems support LED control. General Purpose
computers like the x86 don't have any sort support for this.

A good source of code I've seen for LED control is on Linksys'  NSLU2
"Slug". The Debian distro for it has userland tools for controlling
the various output modes of the LEDs built in.


-- 
Drew

"Nothing in life is to be feared. It is only to be understood."
--Marie Curie
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
