From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mounting Linux drive on Linux: error 21874
Date: Fri, 18 Feb 2005 15:15:54 -0800
Message-ID: <5.1.0.14.1.20050218150639.01ff9e28@celine>
References: <004401c51606$bb8f9050$1f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <004401c51606$bb8f9050$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

At 05:11 PM 2/18/2005 -0500, Eve Atley wrote:

>Hi folks,
>
>I'm attempting to mount a Linux drive via Samba from a Linux box like so:
>
>mount -t smbfs -o
>username=someusername,password=somepassword,workgroup=workgroup
>//localhost/dev/hda3 /mnt/devbox
>
>This error results:
>21874: session setup failed: ERRSRV - ERRbadpw (Bad password - name/password
>pair in a Tree Connect or Session Setup are invalid.)
>
>Directory's been created (devbox) under /mnt/ directory. DF on the box I'm
>attempting to mount shows:
>
>Filesystem           1K-blocks      Used Available Use% Mounted on
>/dev/hda3             30233928  12852120  15845996  45% /
>/dev/hda1               101089      9193     86677  10% /boot
>/dev/hda2             42330704   3414040  36766364   9% /opt
>none                    514528         0    514528   0% /dev/shm
>
>I know the username and password is correct, but the name of the box may not
>be (shows 'localhost' at prompt when logged in).
>
>What am I doing incorrectly?


It is hard to say for sure ... but I too am suspicious of "localhost". It 
is probably just a bad config of the SMB server host (a bad entry in 
/etc/hostname). But the client you are trying to mount from sees 
"localhost" as itself (a standard convention, which you'll almost surely 
see as an entry in /etc/hosts that resolves localhost to 127.0.0.1, the 
machine's own "lo" interface).

Try replacing "localhost" in the mount argument with the actual IP address 
of the SMB server host or with something that the *client* host can resolve 
to that IP address (exactly what depends on how you've set up your on-LAN 
DNS or the contents of the client's /etc/hosts file ... whatever its 
resolver uses for LAN hosts).

If that is not it ... how do you "know" the password is correct? Samba 
passwords are not necessarily the same as shell login passwords ... whether 
they are the same or different is site-specific, so ask the server's 
sysadmin how this server is set up (unless that's you, of course, in which 
case you already know about this part).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
