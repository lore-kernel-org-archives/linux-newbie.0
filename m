From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Thought I was mounting drive correctly, but backup failed
Date: Fri, 11 Mar 2005 17:35:28 -0500
Message-ID: <00b501c5268a$a0771bf0$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050311131458.02051e80@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050311131458.02051e80@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org


Hi Ray, thanks for your usual excellent tips. Here's what I've done...

1. mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
//backup/e /mnt/backup
Result: no errors

2. df shows:
/dev/hda2             37334192   5252668  30185052  15% /
/dev/hda1               101089     29129     66741  31% /boot
/dev/hdb1             57669728  42343604  12396676  78% /home
none                    256800         0    256800   0% /dev/shm
//backup/e           120623104     69632 120553472   1% /mnt/backup

So, it appears to be mounting...with correct partition size.

3. cp mount_test.txt /mnt/backup
Result: mount_test.txt resides on /mnt/backup

>If yes, can you do so as whatever userid the script runs from? If 
>no, can you do so as root?

Well, I logged in via ssh as root, mounted the drive, and copied the file.

>If cp'ing by hand works, then you need to examine your script with a bit 
>more skepticism. (BTW, does the script detect and log cp'ing failures? Or 
>are its STDOUT and STDERR routed to /dev/null or someplace equally
useless?)

Well, I say it's not the script's fault because it all worked previously. :)
Linuxadmin is set up as an administrator, so should have full read/write
capabilities. At this point, the backup script shows:

mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
//backup/e /mnt/backup &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
if [ -f /mnt/backup/connected ]; then
        rm -rf /mnt/backup/`date +"%A/"`
        mkdir /mnt/backup/`date +"%A/"`
        cp -r /home/shared/* /mnt/backup/`date +"%A/"`
1>/mnt/backup/logs/`date
+"DAILY-%y-%m-%d.log"` 2>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.err"`
        umount /mnt/backup  &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
fi


----------------

The generated log appears completely empty, whereas the day before it
indicated:
SMB connection failed
15538: session setup failed: ERRDOS - ERRnoaccess (Access denied.)
...since I had nothing set up at that time.


- Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
