From: "Eve Atley" <eatley@wowcorp.com>
Subject: Thought I was mounting drive correctly, but backup failed
Date: Fri, 11 Mar 2005 14:20:23 -0500
Message-ID: <009301c5266f$60028390$4f0aa8c0@lanadmin>
References: <200503011926.04903.eric@cisu.net>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <200503011926.04903.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


My setup: 
1 Linux RedHat 9 kernel
1 Windows 2000 backup machine with 2 firewire hot-swap drives attached
(named 'backup')
	- firewire drives have been partitioned and ready to roll
	- drives are lettered/named, respectively, e/Granite1, and
f/Granite2
	- linuxadmin/password set up on system to allow for the following...

My procedure:
mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
//backup/e /mnt/backup

/mnt/backup directory's definitely created. When I use the above command, I
return no errors, and the drive is empty so I thought it was mounting.
However, when I checked the backup logs, the logs were empty...and remount
shows no files were copied over from the script I've set up.

It doesn't appear to be the backup script that is the issue. Is there
something amiss in my setup? Let me know if you need more info (I'm sure you
will!).

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
