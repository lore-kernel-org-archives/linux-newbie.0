From: Ray Olszewski <ray@comarre.com>
Subject: Re: root password
Date: Wed, 30 Mar 2005 06:36:32 -0800
Message-ID: <5.1.0.14.1.20050330063201.02035bd0@celine>
References: <20050330071611.44428.qmail@web52905.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050330071611.44428.qmail@web52905.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:16 PM 3/29/2005 -0800, Ankit Jain wrote:
>hi
>
>i have forgotten my root pasword. i had installed
>redhat linux 9.0 kernel version 2.4 with grub loader.
>if somebody can tell me how to change the password
>without logging.


The normal solution to this sort of problem is to boot the system using a 
rescue disk (floppy or CD, depending on your hardware); mount the 
filesystem with the password problem at some convenient mount point; and 
delete the root password entry from /etc/shadow . Then reboot normally, log 
in as root (with no password) and set a new root password. Do all of this 
with the system disconnected from the Internet, of course, until you have a 
new root password in place.

Any other suggestion of how to become root without knowing the root 
password is a technique for breaking into systems, and I (and I hope 
everyone else) will not give advice on that publicly, in this forum or 
anywhere else.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
