From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Unmounting a Zip 250 Drive??
Date: Sat, 15 Jun 2002 16:24:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020615162431.A264@lnx2.w8mch.ampr.org>
References: <20020614104245.A481@lnx2.w8mch.ampr.org> <02061518023601.00763@Tenn>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02061518023601.00763@Tenn>; from James.Hatridge@epost.de on Sat, Jun 15, 2002 at 06:02:36PM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jim Hatridge <James.Hatridge@epost.de>
Cc: linux-newbie@vger.kernel.org, pa3gcu@zeelandnet.nl

Greetings and thanks to you and Richard I wobbled through the
solution.. It was, isn't it always, RTFM.. I thought the -a flag of
'exportfs' was for exporting only.. Turns out it's for un-exporting
also - I guess depending on the state of the machine.

Invoking that - voila - joy....

Appreciate!
Hal

On Sat, Jun 15, 2002 at 06:02:36PM +0200, Jim Hatridge wrote:
> 
> HI Hal et al...
> 
> 
> On Friday 14 June 2002 16:42, Hal MacArgle wrote:
> > Greetings:  Having a problem trying to umount /dev/sda4 on the NFS
> > server machine getting "device busy" report.. Was able to invoke
> 
> I've found when using NFS if someone mounts a CD (or zip) then goes off line 
> with out umounting you can not umount. The only thing to do (I've found) is 
> either re-boot or found the person (kick him some) and have him re-connect, 
> umount, get off, and then you should be able to get the disk out. 
> 
> Hope this helps...
> 
> JIM
> 
> Jim Hatridge
> Linux User #88484
> ------------------------------------------------------
>                  BayerWulf
> 	   Linux System # 129656
>          The Recycled Beowulf Project
>   Looking for throw-away or obsolete computers and parts
>    to recycle into a Linux super computer
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
