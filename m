From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: trivial question about script
Date: Sun, 9 Feb 2003 19:39:42 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020919394200.00594@unix.pa3gcu>
References: <200302091133.07720.r4mz3z@yahoo.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302091133.07720.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ramzez <r4mz3z@yahoo.es>, linux-newbie@vger.kernel.org

On Sunday 09 February 2003 11:32, ramzez wrote:
> Hi friends...
>   How do I can output each fiel below other in his column? I mean; when use
> somethin like: "cat /etc/fstab |  awk '{print $1"\t\t\t"$2"\t\t\t"$3}'" y
> recieve this output:
> - ----real output -------------
> LABEL=/                 /                       ext3
> LABEL=/boot                     /boot                   ext3
> none                    /dev/pts                        devpts
> none                    /proc                   proc
> none                    /dev/shm                        tmpfs
> /dev/hda5                       swap                    swap
> /dev/cdrom                      /mnt/cdrom                      iso9660
> /dev/cdrom1                     /mnt/cdrom1                     iso9660
> /dev/fd0                        /mnt/floppy                     auto
> - -----end ------------------------------------
>   But I hope to receive like this:
> - ---desired output ------------------
> LABEL=/                /                       ext3
> LABEL=/boot          /boot                 ext3
> none                     /dev/pts             devpts
> none                     /proc                 proc
> none                     /dev/shm            tmpfs
> /dev/hda5              swap                 swap
> /dev/cdrom            /mnt/cdrom          iso9660
> /dev/cdrom1          /mnt/cdrom1         iso9660
> /dev/fd0                /mnt/floppy          auto

Does the following work, does here.
 
cat /etc/fstab |  awk '{print $1"\t"$2"\t"$3}'
If not it must be due to tabs in the file itself.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
