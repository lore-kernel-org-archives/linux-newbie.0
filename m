From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: Re: Journaling File Systems...
Date: Fri, 25 Oct 2002 11:19:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DB98B3D.8010301@jpl.nasa.gov>
References: <1035456374.31016.84.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie@vger.kernel.org

Bryan Simmons wrote:
> When I first installed Linux in 1998, I don't remember there being any
> other file system to use other than Ext2.  After 2000, I went a few
> years without Linux.  This time around, when installing Linux, I noticed
> I could use anything from Ext3 to ReiserFS to JFS etc... I steered clear
> of these and chose Ext2 because it was all that I knew.  Now, after
> reading an article on journaling file-systems in Linux Magazine, I am
> convinced I need to use this technology on my next system (which should
> arrive Friday).
> 
> Here's my question:  what would you guys suggest as a good file system
> for a client?  I use my system for programming, multimedia (home movies,
> mp3s, pics, etc...).  So far, it seems good to go with Reiser.  JFS and
> XFS seem like overkill for a client and Ext3 is not efficient enough.
> 
> What are your opinions?

I'd recommend XFS. All the Workstations I manage run it without a hitch. 
Very fast, stable, and xfsdump works. ;) I've also used the features 
such as growfs to get more room (it works while the FS is mounted).

If your using NFS stay away from Reiser. I hear reports all the time 
that "nfs+reiser is now fixed" but everytime I give it another go it 
screws up bad....

-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
