From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: repairing unstable mouse behavior
Date: 14 May 2003 23:07:36 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1052968056.8900.5.camel@goldfinger.orbdesigns.com>
References: <200305131334.h4DDYvjs017212@hartford-hwp.com>
	 <1052833600.6654.2.camel@goldfinger.orbdesigns.com>
	 <200305150241.h4F2fNoq020922@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305150241.h4F2fNoq020922@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: brownh@hartford-hwp.com
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On Wed, 2003-05-14 at 22:41, Haines Brown wrote:
> When I log out, the erratic behavior subsides. It comes and goes in
> severity. I have backups and would use them simply to overwrite files
> if I knew what to overwrite. 

Sorry I managed to omit the list in my reply to you earlier. Sigh.

That's odd behaviour... and disabling GPM doesn't change the
circumstance, mmmm. The other possibility that springs to mind is that
the mouse driver spec is wrong. The file that controls how X operates is
/etc/X11/XF86Config-4 (or in RH, omit the -4). If you have a known-good
backup of that file, then checkpoint the system version, and copy yours
in - see what happens.

Best of luck,

.brian


-- 
Brian P. Bilbrey <bilbrey@orbdesigns.com>
Orb Designs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
