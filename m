From: Ray Olszewski <ray@comarre.com>
Subject: Re: Thought I was mounting drive correctly, but backup failed
Date: Fri, 11 Mar 2005 13:37:24 -0800
Message-ID: <5.1.0.14.1.20050311131458.02051e80@celine>
References: <200503011926.04903.eric@cisu.net> <009301c5266f$60028390$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <009301c5266f$60028390$4f0aa8c0@lanadmin>
References: <200503011926.04903.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:20 PM 3/11/2005 -0500, Eve Atley wrote:

>My setup:
>1 Linux RedHat 9 kernel

I don't know if this part of the info matters, but identifying a kernel 
this way is almost useless. More useful is to report the output of "uname 
-a" and mention if you are using a stock or locally-compiled version of the 
kernel.

>1 Windows 2000 backup machine with 2 firewire hot-swap drives attached
>(named 'backup')
>         - firewire drives have been partitioned and ready to roll
>         - drives are lettered/named, respectively, e/Granite1, and
>f/Granite2
>         - linuxadmin/password set up on system to allow for the following...
>
>My procedure:
>mount -t smbfs -o username=linuxadmin,password=password,workgroup=wowcorp
>//backup/e /mnt/backup
>
>/mnt/backup directory's definitely created.

This looks right, at least from the Linux end of it (I don't know if 
Windows properly maps //backup/e to e/Granite1 or not, but I'd expect to 
see an error message from the Linux end if not.)

>When I use the above command, I
>return no errors, and the drive is empty so I thought it was mounting.

What does "df" think? (It knows more than you do about these things.) Does 
the drive show up there and is it the right size to be the intended target 
filesystem?

>However, when I checked the backup logs, the logs were empty...and remount
>shows no files were copied over from the script I've set up.

I wonder if there is a permissions problem of some sort. After you smbmount 
the filesystem this way, are you able to cp one or more files to it 
manually? If yes, can you do so as whatever userid the script runs from? If 
no, can you do so as root?

>It doesn't appear to be the backup script that is the issue.

We've discussed this style point before, I think, but whenever I read a 
phrasing like "doesn't appear to be" in a trouble report, I see 
uncertainty, not assurance, and my suspiciousness gene kicks in. How did 
you form this belief?

>Is there
>something amiss in my setup?

If cp'ing by hand works, then you need to examine your script with a bit 
more skepticism. (BTW, does the script detect and log cp'ing failures? Or 
are its STDOUT and STDERR routed to /dev/null or someplace equally useless?)

If it doesn't work, then you need to check both the permissions on the 
local mount point ("ls -l /mnt/backup" and on the remote system (not sure 
how to do this, since that's a Windows host) to see that you have 
("linuxadmin" has, that is) write permission.

>Let me know if you need more info (I'm sure you
>will!).

My comments above should serve to tell you what we need to see, with the 
exact choices depending on how you answer the questions I asked. As always, 
never summarize results, report them word for word.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
