From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: installation and lilo
Date: Fri, 22 Nov 2002 17:07:04 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02112217070401.00286@unix.pa3gcu>
References: <6C559FFA.31E59693.0006BEFC@netscape.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6C559FFA.31E59693.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: neil t <wa4chq@netscape.net>, linux-newbie@vger.kernel.org

On Friday 22 November 2002 11:32, neil t wrote:
> (this didn't send the first time, so I am posting it again via a FWD)

It does not really make any differance which system installed lilo, the 
secret is mounting all your disks/partitions where "lilo" can reach them all 
in one go, you can define any partition "in use or not" as long as it is 
mounted.

An example;
dos = hda1
redhat = hda5
mandrake = hdc1
slackware = hdd1

You boot with mandrake, you then create some extra dirs'

mkdir /hda5
mkdir /hdc1
mkdir /hdd1

mount -t ext2 /dev/hda5 /hda5
mount -t ext2 /dev/hdd1 /hdd1

Edit /etc/lilo and reflect the above

image = image-redhat
label = redhat
root = /hda5/boot/image-redhat
read-only

same idea for slack.

run lilo with -t to check that all is ok, when all is ok /sbin/lilo
reboot

Another way is to copy all bootable images into one /boot dir and edit 
lilo.conf accordingly.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
