From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Disk Image
Date: Thu, 10 Oct 2002 16:47:15 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003701c2709e$37afffa0$64fea8c0@pkrausxp>
References: <5.1.0.14.1.20021010131844.020bb8e0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021010131844.020bb8e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Answers below
--------
1. "Drive" is ambiguous. In the Linux world, a "drive" is a physical
device 
(e.g., IDE primary, accessed as /dev/hda). A drive contains partitions
that 
in turn contain filesystems. Windows people seem to use "drive" to refer

both to a physical device and to a filesystem in a partition on a drive.
In 
Linux/Unix terminology, your example -- "Microsoft machines "c" drive"
-- 
probably refers to creating an image of a *filesystem*, not a *drive*.
Is 
that what you really mean?
-=-=-=-=--=-=
I can see the confusion. It would be a Partition (with a windows file
system) on 
A physical drive attached to a windows machine.

2. I assume you want to run something on the Linux server that does this

job. So ... how is the filesystem visible to Linux on the server? It is
an 
NFS mount? An SMB mount? Something else?
-=-=-=-=-=-=-=-=
I can mount the file system using SMB. Cp and tar are not viable options

As they can not do anything with locked files. Which is why I was hoping

For something similar to Norton Ghost which does a byte by Byte image.

3. With boot drives, there are special considerations, involving the
boot 
sector and possibly some files that need to be in known locations (this
is 
true for LILO, at least; I'm not expert enough in Windows to know what 
might matter there). Does this backup-to-image solution need to address
any 
restrictions that are, in this sense, outside the structure of the
filesystem?
-=-=-=-=-=-=-=-=
No it does not. There are a couple machines (The CEO and VP) that I
would like to 
Be able to do a full system restore without having to load any apps or
windows itself.
To minimize downtime and to return there systems to the exact state of
when the backup 
Occurred.

4. How much flexibility does the corresponding restore function need?
Does 
it need only to restore to the same physical drive (or another that is 
physically identical), or do you want to be able to put a copy of the 
filesystem on a another drive with different geometry (and perhaps even
a 
different partition structure)?
-=-=-=-=-=
In the event that the hard drive was physically broken I may need to
install
A new hard drive that would have a different geometry. The same
partition
Size would be acceptable but I would prefer to be able to restore the
image to
A larger partition.

A general suggestion ... coming from a Windows background, you may
assume 
that Windows is s good starting reference point for capabilities. This 
isn't true for all of us here; though I use Windows on my desktop, there

are many things I know how to do with Linux that I can't begin to guess
how 
to do with Windows. So, in this case, your reference to "ghost" does not

help me understand your needs. I'm sure I'm not the only one here with
this 
particular combination of knowledge and ignorance ... you might get
better 
responses if you didn't rely on Windows examples to  clarify your needs.
-=-=-=-==
Linux is by far a better OS every day I keep looking at my windows
desktop and 
Wanting to install LINUX. I use windows examples assuming (falsely) that
everyone
Has some knowledge of it and its apps so I try to use an app I think is
familiar 
To try portray my needs. I will refrain from this in the future.

Since I don't know how ghost works, let me ask this ... would a solution
be 
to run ghost on the Windows host, them simply transfer (in any of the
usual 
ways) the image it creates to the Linux server?
-=-=-=-=-=-=-=-=-=
This would be a solution but then I require a 3rd machine in order to do
the restore.
1. the workstation that is to be imaged, 2. the Linux server that is
holding that image, 3. the windows machine that can run ghost.
I am trying to replace all the things I do with windows with Linux. I am
using this as a way to become familiar with Linux as well as a way to
become independent of Microsoft.


--
-------------------------------------------"Never tell me the
odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------
-------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
