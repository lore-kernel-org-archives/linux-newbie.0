From: Haines Brown <brownh@hartford-hwp.com>
Subject: tar question (was Re: nomore newbies??)
Date: Sun, 19 May 2002 19:09:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205192309.g4JN9Et17254@langhans.hartford-hwp.com>
References: <20020519185527.14089.qmail@linux.ik5bcu.ampr.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020519185527.14089.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ik5bcu@tin.it
Cc: linux-newbie@vger.kernel.org

I'm trying to copy a directory tree from one mounted hard disk to
another. I want to copy the contents of a directory named "backups" on
a secondary SCSI HD to one of the same name on an external USB mass
storage device.

The source is /mnt/sdb1/storage/backups
The target is /mnt/mirror/storage/

Root changes to the source "backups" directory and runs the
following: 

    tar cf - . | (cd ../../../mirror/storage/backups tar xvf -) 
    ./  

Nothing happens. No error message about not being able to navigate the
path to find the directory, no sound of disk activity, no resulting
files.  

So I tried: 

   tar -l -cpf - /mnt/sdb1/storage/backups | tar -C
   /mnt/mirror/storage/backups -pxf -

This did create a backup, but reproduced the path (/mnt/mirror/
storage/backups/mnt/sdb1/storage/backups) and gave me a lot of errors
about not being able to copy symlinks and early on some errors about
not being able to reproduce ownership. When I try to reduce the source
to ".", tar complains about the empty source.

Haines Brown 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
