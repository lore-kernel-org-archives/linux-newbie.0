From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: RE: Disk Image
Date: 10 Oct 2002 16:41:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034282493.9893.26.camel@goldfinger.orbdesigns.com>
References: <002801c27098$1d5ded70$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002801c27098$1d5ded70$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 2002-10-10 at 16:03, Paul Kraus wrote:
> I think you are seeing this backwards. I want to create the image of a
> hard drive that is on the network to my linux box.

So, can you envision a way to "reverse" the idea he gave you to solve
your problem? 

	* * *

It's non-trivial in the sense that you can't just use the administrative
share, samba-mount the windows partition and copy it - there are files
in use that Windows won't let you copy while you're running Windows. If
you need an image that you can restore, I can think of methods using
Linux, it would certainly be fairly easy if the box that runs windows
dual boots with Linux, because then you can boot into linux and dd the
drive, directing the output to a file on a remote-mounted partition
(either NFS or ?). But then, we don't actually know what you want to
accomplish. If you want to do the same thing for tens of machines, why
not get ghost and image each box? It works, afterall. 

Otherwise, fashion some way of booting into Linux (via a CD rescue disk
perhaps), nfs- or samba-mount a remote partition, and dd the drive image
to a file remotely. THen if you need to restore it, just reverse that
process.

Have fun,

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
