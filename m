From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: vfs unable to mount root fs on unknown--block(0,0).
Date: Wed, 10 Aug 2005 21:16:52 +0530
Message-ID: <C349E772C72290419567CFD84C26E01709FFD3@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Dear Robert,

>> Yes, I think I have seen this and many other mails speaking about
this
>> issue but I am unable to find the solution.
>> How did they fix it is written or replied no where?
>
>Most of the mails i have seen simply say what i told you in another
mail.
>
>mount -t auto /dev/xxx /mnt/xxx

I have tried it. It fails even then.

I have even tired earlier
#mount -t vfat /dev/xxx /mnt/xxx
FAT: bogus number of reserved sectors
mount: you must specify the filesystem

Please try to see on the FAT sub-system message. 
It is here where the problem is really starting.

>> I have tried their suggestion like making EXT, IDE and FAT support
>> inbuilt to the kernel rather than modules.
>> Even then the problem persists.
>
>Modules are fine, most all distribution installed kernels have fat
support.

However, I figured out a rough shout route. 
When I made some modifications to the inode.c file in fat sub-system I
found that the .config file generated after make menuconfig has changed.


So, I simply replaced the Original .config file & tried to build. it
worked.
I did NOT understand how it is related? Can you comment on this please?

However, the fat is a module rather than inbuilt & gets loaded
dynamically by registering to the fs layer when such a filesystem is
tired to mount.

>> Did you find any one mentioning the solution for this issue?
>
>Well yes there are plenty of mails explaining the problem and
mentioning
>different ways of solving it. You may however need to read between the
>lines.

I have tried all the ways on mounting it. Added it to fstab 
& many more? Then I realized the problem is NOT in mount rather it is
some where else either in FAT, driver?

>> Also, the group discussion you find when you type "FAT12" in Google
is
>> me myself.
>
>Not at all, your mails are there but there are hundreds more explaining
>what
>to do.

OK, let me recheck it today.

Thanks & regards,
Mukund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
