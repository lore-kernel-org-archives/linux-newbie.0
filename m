From: David Benfell <co@trek.parts-unknown.org>
Subject: Re: Confirmation for subscribe linux-kernel
Date: Tue, 19 Aug 2003 10:33:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030819173325.GC24599@parts-unknown.org>
References: <Pine.LNX.4.56.0308181732280.1554@homenet> <200308190853.42110.weston_p@yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200308190853.42110.weston_p@yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 19 Aug 2003 08:53:41 +0000, Weston M. Price wrote:
> Arghhghgh!!!!!!! Looking at it this was probably my screw up, I forgot to cut 
> the name of the kernel list out of my subscribe message....
> 
> Guys, I am truly sorry....
> 
> Let, the beatdown commence!
> 
Somebody please correct me if I'm wrong.  But I don't think that's how
it works.

You would have had to have sent a command something like:

	subscribe linux-kernel linux-newbie@vger.kernel.org

That's not an accident.  So I'm assuming you didn't do it.

Majordomo is designed to handle multiple mailing lists, so it's
entirely okay to send multiple commands in one e-mail to majordomo,
like:

	subscribe linux-kernel
	subscribe linux-newbie

You can respond to the confirmations with a single e-mail as well, by
combining the required confirm commands into a single e-mail.  And if
you're in the habit of putting a sig block at the end of your e-mails,
you can even tell majordomo to ignore it by inserting an 'end'
command after your commands to it.

I don't choose majordomo for the mailing lists I administer, but I
have to admit, it has some cool features.

-- 
David Benfell, LCP
benfell@parts-unknown.org
---
Resume available at http://www.parts-unknown.org/resume.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
