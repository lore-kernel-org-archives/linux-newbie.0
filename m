From: cr <cr@orcon.net.nz>
Subject: Re: CD formats
Date: Fri, 25 Jul 2003 22:25:47 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307251020.h6PAK4CV024666@dbmail-mx1.orcon.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 24 July 2003 20:04, cr wrote:
> I hope this isn't too OT -
>
> I'm going to use X-cd-roast on this Debian box to make a CD to send to an
> acquaintance who has a Mac  (mostly scanned JPG's of photos).
>
> If I understand correctly, I could use long filenames (Joliet) if intended
> for a Windoze machine, but for a Mac I can only use 8.3 filenames.    Is
> that correct, or is there any way around that?
>
> Regards
>
> Chris

So far, I've had three practical solutions suggested to me - 

1.  Use Joliet file names, some Mac OS's at least understand them 

2.   Zip the long-file-name files into Zipfiles with short 8.3 names, which 
any Mac OS can read off the CD, and can then unzip into long names that make 
sense to it

3.   Make an HFS  CD  (HFS is the Mac filesystem).   man mkisofs describes 
HFS, and I see gcombust has a HFS option.

What I might do, since blank CD's are so cheap (and postage will cost me 
several times as much!) is make one CD by each method and send all three.   
The time-consuming part is assembling all the files in the right place, once 
that's done burning a CD or three is comparatively quick.    So that's what 
I'll try, and thanks to all who offered advice.

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
