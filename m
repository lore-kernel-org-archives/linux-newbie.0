From: Greg Olszewski <noop@nwonknu.org>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 00:44:42 -0700
Message-ID: <426DF16A.4030505@nwonknu.org>
References: <200504260729.j3Q7T28e001337@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504260729.j3Q7T28e001337@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org



Peter wrote:
> Thanks Greg but nothing doing.
> 
> ll /usr/bin/slocate
> -rwxr-sr-x  1 root slocate 26652 2004-05-30 11:52 /usr/bin/slocate
> 

/usr is mounted *without* nosuid, no?

"cat /proc/mounts | grep '/usr'"
and
"cat /proc/mounts | grep ' / '"


> @~:$ locate fips
> warning: locate: could not open database: /var/lib/slocate/slocate.db: 
> Permission denied
> 

grr. Frustrating.
what does 'ls -ld /var/lib/slocate' say?

does 'chmod 750 /var/lib/slocate/' or 'chown root:slocate 
/var/lib/slocate' help (if it isn't rwxr-x--- root slocate already)?

If not, what does 'slocate -V' say?

How about
'ls -ld /var'
'ls -ld /var/lib'
also?

Thanks a bunch. Apologies if you've posted this output before and I 
missed it.


> noop@nwonknu.org said:
> 
>>'chroot /mnt/rh9root locate fips' ought to work fine. 
> 
> 
> Yes as su and that is exactly what I want to avoid to go su for locate since I 
> use this command relatively frequently.
> 

totally understood. I was just trying to point out that it is unlikely 
for the redhat slocate binary to work with the slackware data files.

hope this helps,

-greg
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
