From: "Eve Atley" <eatley@wowcorp.com>
Subject: Mounting Linux drive on Linux: error 21874
Date: Fri, 18 Feb 2005 17:11:01 -0500
Message-ID: <004401c51606$bb8f9050$1f0aa8c0@lanadmin>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hi folks,

I'm attempting to mount a Linux drive via Samba from a Linux box like so:

mount -t smbfs -o
username=someusername,password=somepassword,workgroup=workgroup
//localhost/dev/hda3 /mnt/devbox

This error results:
21874: session setup failed: ERRSRV - ERRbadpw (Bad password - name/password
pair in a Tree Connect or Session Setup are invalid.)

Directory's been created (devbox) under /mnt/ directory. DF on the box I'm
attempting to mount shows:

Filesystem           1K-blocks      Used Available Use% Mounted on
/dev/hda3             30233928  12852120  15845996  45% /
/dev/hda1               101089      9193     86677  10% /boot
/dev/hda2             42330704   3414040  36766364   9% /opt
none                    514528         0    514528   0% /dev/shm

I know the username and password is correct, but the name of the box may not
be (shows 'localhost' at prompt when logged in). 

What am I doing incorrectly?

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
