From: Greg Olszewski <noop@nwonknu.org>
Subject: Re: No Locate for User
Date: Mon, 25 Apr 2005 22:42:41 -0700
Message-ID: <426DD4D1.3000505@nwonknu.org>
References: <200504260418.j3Q4I8d2000571@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504260418.j3Q4I8d2000571@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

I suspect you'll simply need to do:

chmod 2755 $(which slocate)
chown root:slocate $(which slocate)
(which is probably the same as)

chmod 2755 /usr/bin/slocate
chown root:slocate /usr/bin/slocate

slocate considers the db file to be sensitive (as well it should). the 
slocate binary needs to run as the slocate group to use it.

>  @~:$ /mnt/rh9root/usr/bin/locate fips
> warning: locate: could not open database: /var/lib/slocate/slocate.db: 
> Permission denied
> warning: You need to run the 'updatedb' command (as root) to create the 
> database.
> 

Um. This could be due to many things. Perhaps the partition is mounted 
nosuid, and slocate isn't running with the right permissions. Perhaps 
you've got a different version of slocate on fedora than slackware. 
Running a binary from one version against data from another shouldn't be 
expected to work. 'chroot /mnt/rh9root locate fips' ought to work fine.


have fun,

greg
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
