From: G Anna <drguruolai@eth.net>
Subject: Re: tar question
Date: 20 May 2002 10:32:14 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m31yc7mmy1.fsf_-_@wobble.eth.net>
References: <20020519185527.14089.qmail@linux.ik5bcu.ampr.org>
	<200205192309.g4JN9Et17254@langhans.hartford-hwp.com>
Reply-To: anna7sept@linuxmail.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205192309.g4JN9Et17254@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org


> Date: Sun, 19 May 2002 19:09:14 -0400
> From: Haines Brown <brownh@hartford-hwp.com>
> Subj: tar question (was Re: nomore newbies??)

(snip)

> 
> I'm trying to copy a directory tree from one mounted hard disk to
> another. I want to copy the contents of a directory named "backups" on
> a secondary SCSI HD to one of the same name on an external USB mass
> storage device.
> 
> The source is /mnt/sdb1/storage/backups
> The target is /mnt/mirror/storage/

(snip)

> Root changes to the source "backups" directory and runs the
> following:
> 
>     tar cf - . | (cd ../../../mirror/storage/backups tar xvf -) 
                                                     ^^^^
                                semicolon missing ----^

If I see it correctly, what you are trying to do is to tar the files
in the source directory, copy it to the destination directory, and
then untar it.  The question is why are you simply tar'ing without any
compression?

You should probably consider using the -z option (or --gzip) or -j
(--bzip) option.

Probably,

# s=/mnt/sdb1/storage/backups
# d=/mnt/mirror/storage
# cd $s
# tar cvjf - . | (cd $d; tar xjf -)

(or)

# tar cvzf - . | (cd $d; tar xzf -)

HTHs

anna

-- 

(12) One  of  my  advisors  will be an average five-year-old child. Any
     flaws  in my plan that he is able to spot will be corrected before
     implementation. - Peter Anspach in "The Top 100 Things I'd Do If I 
     Ever Became An Evil Overlord"

                                            http://www.eviloverlord.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
