From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tar confined to partitions
Date: Mon, 2 Sep 2002 14:23:39 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209021823.g82INdC09718@hartford-hwp.com>
References: <5.1.1.6.0.20020902165237.00ba6ea0@interzone.anexia.co.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20020902165237.00ba6ea0@interzone.anexia.co.uk>
	(message from Carl Lawton on Mon, 02 Sep 2002 17:24:27 +0100)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org

> At 11:17 02/09/2002 -0400, you wrote:
> >I have a tar script to back up all directories on my HD (/*) to a
> >mirror disk. 
> >
> >But a puzzler. The script sees all directories mounted on / and backs
> >up their content, but fails to back up the contents of directories
> >that are presumably mounted under /, but are not in the same partition
> >as /.
> >
> >For example, if I specify /* as source, the /bin directory contents
> >are backed up because /bin is in the same partition as /. However,
> >/home has its own partition, and so while tar script creates a /home
> >directory,  it is empty. I have to back up /home explicitly.
> >
> >If I run # mount, I see:
> >
> >...
> >/dev/sda6 on / type ext3 (rw)
> >...
> >/dev/sda12 on /home type ext3 (rw)
> >
> >Only the contents of sda6 are getting backed up.

> What is the exact tar command/script commands ?

tar -C "$1" -cOl . | tar -C "$2" -xpf -

If, as someone suggested, tar swallows only one partition at a time,
then I'll have to rewrite this script. Help would be appreciated.

> Has the script ever worked ?

Works fine. I'm backing up partition by partition as we speak. But I
always had the problem of handling only one partition at a time. Also,
now discover that under RH 7.3 the back up randomly hangs my keyboard
(not mouse) for a random period of time on the order of minutes (I've
1 Gb RAM), but that's OT (before my recent update to RH 7.3, I used
the generic driver for my Logitech MouseMan+, but with the upgrade, I
specified the drive more accurately).

> Is the script yours or is it taken from somewhere else and umounts
> partitions before backing up ?

Someone helped on the stript. Any mounting/unmounting needed for the
backup I do manually in advance (I don't want to backup whatever cd
rom happens to be mounted, but do want to back up other
HDs that are mounted to a partion on my principal hard disk).

> Do you use the verbose switch to tar so you can capture the files
> tar is finding to backup ?

No, for the need to get a backup interfered with rewriting my backup
script. Once the current backup is done, I'll see if verbose is
informative. 

> Are the missing files in the list ?

A big concern of mine, but as best as I can make out, the answer is
no. My script always creates the top folders, but when it manages to
backup the content of those folder at all, it seems to handle all
subdirectories and files.
 
> --
> Carl
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
