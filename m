From: lawson_whitney@juno.com
Subject: Re: 'nobody' is using my system !!!
Date: Fri, 27 Sep 2002 20:09:04 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020927.203747.134671024.2.lawson_whitney@juno.com>
References: <200209272147.g8RLlLv21054@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209272147.g8RLlLv21054@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 27 Sep 2002, Heimo Claasen wrote:

> BTW, _once_ I stumbled (per pure chance and hazard) into the place where
> this mount counter is set, gladly changed it from 20 (yes, that _was_
> the default) to 99 (ouf, I dare say, still a "safe and secure" setting);
> but one bad day I did a new install on that box: and _never_ever_ found
> back the hint where this "secret" sacred place was, despite of dozens of
> HOwTOs, hundreds of mans, thousand of scribbled notes and well-printed
> articles to read. Anyone who knows and _dares_ to tell about ?!

tune2fs -c 99 <device>

man tune2fs

e2fsprogs package.
>
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-27
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net
>
Lawson
---oops---



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
