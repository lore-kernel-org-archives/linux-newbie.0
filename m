From: chakkerz <chakkerz_dev@optusnet.com.au>
Subject: Audio problem with nforce board.
Date: Thu, 8 Jan 2004 22:21:23 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401082221.23659.chakkerz_dev@optusnet.com.au>
Reply-To: chakkerz_dev@optusnet.com.au
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

there is a nforce driver available from www.nvidia.com

Also, check that the board is running nvidia sound (which in the kernel is 
i810). I know that my gigabyte board doesn't use the nvidia sound it (by all 
logic) should, rather it uses a realtek chip for that.

Asus boards (some) use via, despite having nforce onboard as well (which was a 
real pain).

Check the mobo manual, for what is used, then check the option in the kernel 
config.
-- 
with kind regards,
  chakkerz

"You don't need eyes to see, you need vision" (Faithless - Reverence)

  Internet:          http://naiv.sourceforge.net
  NAIV Status:
     Stable       Testing       Development
      0.2.3r2      none          0.3.0 - Installation

"May there be mercy on man and machine for their sins" (Animatrix)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
