From: dave <dave@dpomeroy.com>
Subject: msec
Date: Thu, 19 Feb 2004 11:09:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <403509DB.4020306@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

I think I figured it out on my Mandrake 9.1 system.  It seems msec runs 
everyone once in a while and resets the permissions for files and 
subdirectorys back to the level as listed in perm.2 file.  When I 
changed the perm.2 file, msec changed the permissions on 
/home/everyone.  So then I added a perm.local file and made the 
permissions on /home/everyone 1775.  Took it out of perm.2 and it seems 
to work correctly.  So any local change you want in the permmissions 
need to be made in perm.local.  When I grep msec messages msec is 
reading perm.2 and then perm.local.  When I change secruity to level 3.  
msec reads perm.3 and then perm.local.  verygood.  The question for 
today is:  Is Mandrake the only distribution that uses msec?  If so what 
does the other distributions use?  Thanks again to all of you for your 
help and expecially to Ray.
Thanks for your time

-- 
Dave Pomeroy K7DNP South Eastern Washington


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
