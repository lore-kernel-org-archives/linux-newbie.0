From: Carl Lawton <carl@anexia.co.uk>
Subject: Re: tar confined to partitions
Date: Mon, 02 Sep 2002 17:24:27 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20020902165237.00ba6ea0@interzone.anexia.co.uk>
References: <200209021517.g82FHf908778@hartford-hwp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209021517.g82FHf908778@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:17 02/09/2002 -0400, you wrote:
>I have a tar script to back up all directories on my HD (/*) to a
>mirror disk. 
>
>But a puzzler. The script sees all directories mounted on / and backs
>up their content, but fails to back up the contents of directories
>that are presumably mounted under /, but are not in the same partition
>as /.
>
>For example, if I specify /* as source, the /bin directory contents
>are backed up because /bin is in the same partition as /. However,
>/home has its own partition, and so while tar script creates a /home
>directory,  it is empty. I have to back up /home explicitly.
>
>If I run # mount, I see:
>
>...
>/dev/sda6 on / type ext3 (rw)
>...
>/dev/sda12 on /home type ext3 (rw)
>
>Only the contents of sda6 are getting backed up.


What is the exact tar command/script commands ?
Has the script ever worked ?
Is the script yours or is it taken from somewhere else and umounts partitions before backing up ?
Do you use the verbose switch to tar so you can capture the files tar is finding to backup ?
Are the missing files in the list ?

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
