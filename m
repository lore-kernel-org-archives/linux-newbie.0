From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: Syncing files between two computers
Date: Fri, 25 Feb 2005 05:36:09 -0500
Message-ID: <421EFF99.3010106@cwazy.co.uk>
References: <200502242343.16282.joshuarogers@hopper.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-reply-to: <200502242343.16282.joshuarogers@hopper.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Joshua Rogers <joshuarogers@hopper.net>
Cc: linux-newbie@vger.kernel.org

Joshua Rogers wrote:
>  I'm trying to figure out a way to sync files between my laptop and my 
> desktop.  I've begun using my desktop as only a media center.  It holds all 
> of my movies, music and photos.  Sometimes I make changes to files, add files 
> or remove files on my laptop and have to remember what to manually change 
> later on my desktop.  Sometimes I'll rip another CD or new DVD to my desktop 
> and want to automatically copy the changes to my laptop.
> 
>  I believe that I can get this done, but I before I go inventing the wheel, I 
> would like opinions of what software is best.  rsync?  rsh?  something else 
> completely?
> 
>  I use Linux 2.6.10 on Debian (Woody, I believe).  Both the laptop and the 
> desktop have P4s and over 512Mb RAM.  I have them contented to my internal 
> network at my house, with the desktop and laptop both using DHCP.
> 
>  Is there a way that I can have my computers sync certain folders, and the 
> actions on the files in those folders?  (ex: updates, deletion, addition)
> 
>  Many thanks.  My digikam albums and I thank you all very much!
> 
>  Have a wonderful day (or night...)
> 
> Joshua Rogers
> 

rsync works great for me backing up my fileserver NFS and Samba shares to an 
external FireWire HD on my desktop machine.

rsync -av /source-dir /dest-dir
is what I use - you can also set up remote rsync servers (haven't played with 
that, tho).

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
