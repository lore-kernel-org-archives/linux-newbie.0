From: "Peter H." <heisspf@skyinet.net>
Subject: (unknown)
Date: Tue, 12 Apr 2005 08:41:55 +0800
Message-ID: <200504120041.j3C0ftos000390@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:58 PM 4/10/2005 +0800, Peter H. wrote:
>Hi,
>
>slackware 10.1 kernel 2.4.29
>
>After I upgraded to dropline 2.10.0 from 2.8.3, xmms  1.2.10 will not open.
>The error I get is:
>
>~:$ xmms
>unable to open port `/dev/ttyS1' (Permission denied)
>unable to open port `/dev/ttyS1' (Permission denied)
>*** glibc detected *** free(): invalid pointer: 0x4078bc79 ***
>Aborted
>

Upon the suggestion of Ray Olszewski I got the following from dropline forum:

Quote
Post Posted: Sun Apr 10, 2005 10:59 pm    Post subject: Reply with quote 
----------------------------------------------------------------------

Well, I can help with the xmms stuff... I was getting the exact same error 
about a "invalid pointer" in some free() function in glibc.. although I didn't 
have the permissions problem with /dev/ttyS1, whatever that means.

Anyway, I think Dropline 2.10 changes something in the glibc, and the 
pre-packaged xmms dislikes it. So, no big deal: just download the source from 
xmms.org and build it yourself, and it will work like a charm.

Hope it helps 
Pikachu*MP* X


PostPosted: Mon Apr 11, 2005 9:50 am    Post subject: Reply with 
quote----------------------------------------------------------------------

The ttyS0 errors are probably related to some sort of XXMS plugin you are 
using.

The Glibc error is probably due to the fact that the XXMS FLAC plugin no 
longer will work without a rebuild. Slackware's FLAC is old, and not 
compatible with what we include. XMMS is the only affected program. You can 
optionally remove the FLAC plugin from /usr/lib/xmms/plugins (I believe that's 
the right place).

Unquote

Guess that's of interest for others on this list.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
