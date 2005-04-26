From: Peter <heisspf@skyinet.net>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 12:18:08 +0800
Message-ID: <200504260418.j3Q4I8d2000571@skyinet.net>
References: <426D1D71.6060706@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 25 Apr 2005 09:40:17 MST."
             <426D1D71.6060706@comarre.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Sorry for not expressing myself clearly!

ray@comarre.com said:
>  From what you just wrote  this time ("I tried various permission for
> slocate"), I *still* cannot  tell if you tried what I actually suggested --
> using chmod to set the  database file (slocate.db) to mode 644.

Yes I did chmod 644 /var/lib/slocate/slocate.db and it changed nothing.

ray@comarre.com said:
> Since you say you tried things with  "slocate" rather than "slocate.db", I am
> uncertain as to which of the  two you were modifying.

I did all the changes on slocate.db. I even made myself the owner. Even then I 
get Permission denied.

Updatedb changes permissions of slocate.db back to -rw-r-----  1 root slocate.

ray@comarre.com said:
> If it does, then round up the usual suspects:
> 	ls -l /var/lib/slocate/slocate.db
> 	ls -l /usr/bin/locate  (or wherever Slackware puts it)
> 	ldd /usr/bin/locate

ls -l /var/lib/slocate/slocate.db
-rw-r--r--  1 root slocate 6640136 2005-04-25 18:08 /var/lib/slocate/slocate.db

ls -l /usr/bin/locate
lrwxrwxrwx  1 root root 7 2005-03-08 17:45 /usr/bin/locate -> slocate

ldd /usr/bin/slocate
libc.so.6 => /lib/libc.so.6 (0x4001e000)
/lib/ld-linux.so.2 (0x80000000)

Fedora:
ls -l /var/lib/slocate/slocate.db
-rw-r-----  1 root slocate 2874826 2005-04-20 15:07 
/mnt/rh9root/var/lib/slocate/slocate.db

ls -l /usr/bin/locate
-rwxr-sr-x  1 root slocate 26460 2004-10-20 /usr/bin/locate -> slocate

ldd /usr/bin/slocate
        libc.so.6 => /lib/tls/libc.so.6 (0x004c7000)
        /lib/ld-linux.so.2 (0x004ae000)

In Fedora libc-2.3.3.so in slackware  libc-2.3.4.so    
        
In Fedora /bin/locate is root:slocate in slackware root:root. I changed it to 
root:slocate and still get Permission denied.

ray@comarre.com said:
> See if the Dropline install affected any of the libs identified by the
> second command.

libc-2.3.4.so is the one from the install CD.

 @~:$ /mnt/rh9root/usr/bin/locate fips
warning: locate: could not open database: /var/lib/slocate/slocate.db: 
Permission denied
warning: You need to run the 'updatedb' command (as root) to create the 
database.

With this additional warning using the Fedora locate could it mean slocate.db 
is not found by the user? this warning one gets if a new distro had been 
installed or the data base had not been updated for some time.

To double check I booted into Fedora and "locate" run by user works as it has 
always done as it did in slackware before I updated dropline.

Regards

-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
