From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: RE: Samba Mount File Corruption
Date: 09 Oct 2002 16:51:39 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034196699.12899.30.camel@goldfinger.orbdesigns.com>
References: <001301c26fd1$c9d67bc0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001301c26fd1$c9d67bc0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 2002-10-09 at 16:23, Paul Kraus wrote:
> I noticed this in /var/log/messages. This is a brand new 180gb ide
> drive.
> 
> Log
> ----
> Oct  9 10:32:08 redhat-fax kernel: hde: status error: status=0x58 {
> DriveReady SeekComplete DataRequest }

Paul, I don't know what brand of 180 Gig drive you have in hand, but
Maxtor has removed their offering from circulation (we had four on
order, that were cancelled by our vendor when Maxtor blew the whistle,
apparently) because of reliability problems. I don't know if that's
related to your log files, but worth consideration, certainly.

(resolution note:) Instead, we got four of the 120G devices, and ended
up spending $600 for for 480 G instead of $500 for 320 G.  I think,
doing the math, that was a net gain.

.brian

-- 
Brian Bilbrey && bilbrey@orbdesigns.com && http://www.orbdesigns.com/
	The guy has a reality distortion field generator 
	the size of the state of Rhode Island. 
                                 - Daniel Gray

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
