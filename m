From: James Miller <jamtat@mailsnare.net>
Subject: Re: continuing (pdf) font frustrations
Date: Fri, 8 Oct 2004 17:45:52 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410081738370.1527@debian-emach>
References: <5.1.0.14.1.20041008103518.01f22280@celine>
 <5.1.0.14.1.20041008103518.01f22280@celine> <5.1.0.14.1.20041008125104.01f22500@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041008125104.01f22500@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 8 Oct 2004, Ray Olszewski wrote:

> 3. Are the fonts all mode 644? (The actual fonts
> in  /usr/share/fonts/type1/gsfonts/, not the symlinks). Probably; you said
> you checked that already. And if other apps workm, that too indicates the
> problem is specific to the PDF font corrspondences.

Ray, you're a genius.  Or I'm an idiot.  Or maybe a little of both.
Rechecking modes on those fonts in gsfonts (which were all 644, btw) got
me thinking about checking permissions on the gsfonts directory in which
they're located.  I think I mentioned previously about having mistakenly
changed permissions on those font directories and having to go back and
repair that.  Well, looks like I missed this one :(.  Chalk up another one
for blatant newbie error.  After changing the mode of that directory back
to what it should be (from 644 to 755), my pdf's are once again displaying
as normal in Xpdf.  Thanks so much for sticking through this, Ray.
Without your help it would've taken alot longer to figure this out (if I
hadn't just finally broken down and done a reinstall).  As Hal would say

Appreciate! James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
