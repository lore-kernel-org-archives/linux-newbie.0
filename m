From: Ray Olszewski <ray@comarre.com>
Subject: Re: Umount a ZIP ATAPI internal???
Date: Fri, 05 Jul 2002 08:41:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020705083856.02499aa0@celine>
References: <20020705110224.A229@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020705110224.A229@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: haltec@iceweb.net, linux-newbie@vger.kernel.org

You are having this problem because after the the NFS access, the drive 
remains exported, thus in use by (I think) nfsd, thus "busy". You need to 
unexport it before umount'ing it. See the man page for "exportfs" for the 
details.

At 11:02 AM 7/5/02 -0400, Hal MacArgle wrote:
>Greetings: Have an internal ZIP250 ATAPI drive working well as
>/dev/sda4, mounted on an empty directory - /zip, disks formatted as
>ext2 fs.
>
>Everything normal and good except for one small problem: Once mounted
>and files transferred to it via NFS - I cannot umount it - "drive
>busy." /etc/mtab looks good and I can change the drives rw to ro but
>still no umounting.. Only way, so far, is to reboot the machine, to
>be able to remove the disk.. (This does not happen with normal file
>managing in the same machine - only after a NFS transfer.)
>
>Reading man umount I gather that _something_ is open but what? ps x
>or ps -A doesn't give an obvious clue.. Using iOmegas 'iw' programs'
>-u flag returns same "busy" report..
>
>Invoking rmmod - ide-scsi, smc-ultra, 8390, nfsd - all modules
>involved return "busy."
>
>Any suggestions?? TIA.

--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
