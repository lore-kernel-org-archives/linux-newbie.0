From: Ray Olszewski <ray@comarre.com>
Subject: RE: Thought I was mounting drive correctly, but backup failed
Date: Fri, 11 Mar 2005 14:54:59 -0800
Message-ID: <5.1.0.14.1.20050311144254.02050060@celine>
References: <5.1.0.14.1.20050311131458.02051e80@celine> <00b501c5268a$a0771bf0$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <00b501c5268a$a0771bf0$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050311131458.02051e80@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've made several suggestions inline. But skip to the last one first, since 
it's my best guess about what your actual problem is.

At 05:35 PM 3/11/2005 -0500, Eve Atley wrote:

>Hi Ray, thanks for your usual excellent tips. Here's what I've done...
>
>1. mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
>//backup/e /mnt/backup
>Result: no errors
>
>2. df shows:
>/dev/hda2             37334192   5252668  30185052  15% /
>/dev/hda1               101089     29129     66741  31% /boot
>/dev/hdb1             57669728  42343604  12396676  78% /home
>none                    256800         0    256800   0% /dev/shm
>//backup/e           120623104     69632 120553472   1% /mnt/backup
>
>So, it appears to be mounting...with correct partition size.

I agree. This part looks good.

>3. cp mount_test.txt /mnt/backup
>Result: mount_test.txt resides on /mnt/backup
>
> >If yes, can you do so as whatever userid the script runs from? If
> >no, can you do so as root?
>
>Well, I logged in via ssh as root, mounted the drive, and copied the file.

I don't know if you answered the question or not, since I don't know what 
userid the script runs under (I'm guessing that it is a daily cron job, but 
I can't guess the uid). But if the script runs under a userid other than 
root, it could still be a problem at the Linux end. So please check --

         (a) permissions on this mounted directory as Linux sees them. That 
is, what does "ls -l /mnt/backup" report?

         (b) if you can cp a file to this directory as the userid that runs 
the script.
> >If cp'ing by hand works, then you need to examine your script with a bit
> >more skepticism. (BTW, does the script detect and log cp'ing failures? Or
> >are its STDOUT and STDERR routed to /dev/null or someplace equally
>useless?)
>
>Well, I say it's not the script's fault because it all worked previously. :)
>Linuxadmin is set up as an administrator, so should have full read/write
>capabilities.

Since the term "administrator" is not used on Linux and Unix systems, I 
assume you refer here to privileges on the Windows end. I'll have to take 
your word for that part. But whether permissions are OK on the Linux end is 
not sorted out by this.

>  At this point, the backup script shows:

>mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
>//backup/e /mnt/backup &>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
>if [ -f /mnt/backup/connected ]; then
>         rm -rf /mnt/backup/`date +"%A/"`
>         mkdir /mnt/backup/`date +"%A/"`
>         cp -r /home/shared/* /mnt/backup/`date +"%A/"`
>1>/mnt/backup/logs/`date
>+"DAILY-%y-%m-%d.log"` 2>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.err"`
>         umount /mnt/backup  &>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
>fi

Hmmm ... have you created (touch'ed) the file /mnt/backup/connected on the 
backup drive? If not, the script is failing to perform the backup because 
the conditional in its if statement  (if [ -f /mnt/backup/connected ];) 
fails. And the script has no instructions for what to do if the if test 
fails (no "else", that is), so nothing would get logged in this case.

>----------------
>
>The generated log appears completely empty, whereas the day before it
>indicated:
>SMB connection failed
>15538: session setup failed: ERRDOS - ERRnoaccess (Access denied.)
>...since I had nothing set up at that time.
>
>
>- Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
