From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: block-major-33
Date: Mon, 7 Oct 2002 17:02:43 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021007170243.A1174@neutrino.particles.org>
References: <200210071243.g97Ch2802232@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200210071243.g97Ch2802232@ev6.be.wanadoo.com>; from hammer@revobild.net on Mon, Oct 07, 2002 at 01:54:11PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

On Mon, Oct 07, 2002 at 01:54:11PM +0000, Heimo Claasen wrote:
> So why starting up Linux _does_ demand to have them insterted ?
> I found numbers of such indications in articles, Howtos etc.

From the man page of mount:

The mount command serves to attach the file system found on some  device  to
the  big file tree. Conversely, the umount(8) command will detach it again.
		   
So, as you can see you have to have a *file system* to mount. Keep in mind,
that mount has nothing to do with hardware identification of the device 
(this is done by the kernel using probe routines).

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
