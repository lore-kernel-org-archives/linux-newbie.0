From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Setting quota on user's home folders?
Date: Thu, 17 Mar 2005 01:02:21 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0503170051220.1193-100000@hestia>
References: <000001c52a82$0685e340$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <000001c52a82$0685e340$4f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 16 Mar 2005, Eve Atley wrote:

> Is there a way to set a quota limit on user's home folders? EG. say I have
> /home/joe, /home/jane, and want to set it so they can have no more than 5GB
> in their folders?
> 
> Thanks,
> Eve

What you have todo is:

1.  Create seperate partitions for the /home/joe /home/jane directory
    entrys.
2.  install the quota program for your native GNU/Linux distribution you
    are using. Which is ??? [Next time tell your system specs when asking 
    a question]
3.  Update /etc/fstab and remount the system.

Note, the kernel has to support the use of quota's in most cases.

Here are some links:
http://www.yolinux.com/TUTORIALS/LinuxTutorialQuotas.html
http://www.redhat.com/docs/manuals/linux/RHL-9-Manual/custom-guide/ch-disk-quotas.html
http://www.eyrie.org/~eagle/notes/debian/quotas.html

B.t.w.
The `Folders' terminology is used in a M$ Wintendo enviroment but in the *X world they 
are refered to as directorys or special files.

cheers

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
