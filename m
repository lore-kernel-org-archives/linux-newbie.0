From: Peter <heisspf@skyinet.net>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 16:27:07 +0800
Message-ID: <20050426162707.2c0e960b@skyinet.net>
References: <200504260729.j3Q7T28e001337@skyinet.net>
	<426DF16A.4030505@nwonknu.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <426DF16A.4030505@nwonknu.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Greg Olszewski <noop@nwonknu.org>
Cc: linux-newbie@vger.kernel.org

On Tue, 26 Apr 2005 00:44:42 -0700
Greg Olszewski <noop@nwonknu.org> wrote:


> /usr is mounted *without* nosuid, no?
/usr is 755 and not mounted separately.
> 
> "cat /proc/mounts | grep '/usr'"

 cat /proc/mounts | grep '/usr' 
/dev/hda9 /usr/local reiserfs rw 0 0

> and
> "cat /proc/mounts | grep ' / '"

cat /proc/mounts | grep ' / '
rootfs / rootfs rw 0 0 /dev/root / reiserfs rw 0 0

> what does 'ls -ld /var/lib/slocate' say?

drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate

> does 'chmod 750 /var/lib/slocate/' or 'chown root:slocate 
> /var/lib/slocate' help (if it isn't rwxr-x--- root slocate already)?

ls -l /var/lib/slocate/
total 4180
-rw-r-----  1 root slocate 4278159 2005-04-26 11:42 slocate.db

ls -ld /var/lib/slocate
drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate

No
Yes it is

> 
> If not, what does 'slocate -V' say?

Secure Locate 2.7 - Released January 24, 2003
 
> How about
> 'ls -ld /var'

drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate

In /etc/group
slocate:x:21:users
I added users

> 'ls -ld /var/lib'

drwx------  24 root users 608 2005-03-21 09:43 /var/lib

---snip---

> -greg
> 

Permission is still denied.

Thanks
-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
