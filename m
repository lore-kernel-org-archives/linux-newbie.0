From: Ray Olszewski <ray@comarre.com>
Subject: RE: Disk Image
Date: Thu, 10 Oct 2002 13:32:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021010131844.020bb8e0@celine>
References: <1034279798.2040.12.camel@workwatcher>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002801c27098$1d5ded70$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 04:03 PM 10/10/02 -0400, Paul Kraus wrote:
>I think you are seeing this backwards. I want to create the image of a
>hard drive that is on the network to my linux box.
>
>Sample
>
>Micro$oft Machine  -   Redhat Machine
>
>Create an image of the Microsoft machines "c" drive and store that image
>on the redhat machine.


Paul -- You need to clarify this still a bit more.

1. "Drive" is ambiguous. In the Linux world, a "drive" is a physical device 
(e.g., IDE primary, accessed as /dev/hda). A drive contains partitions that 
in turn contain filesystems. Windows people seem to use "drive" to refer 
both to a physical device and to a filesystem in a partition on a drive. In 
Linux/Unix terminology, your example -- "Microsoft machines "c" drive" -- 
probably refers to creating an image of a *filesystem*, not a *drive*. Is 
that what you really mean?

2. I assume you want to run something on the Linux server that does this 
job. So ... how is the filesystem visible to Linux on the server? It is an 
NFS mount? An SMB mount? Something else?

3. With boot drives, there are special considerations, involving the boot 
sector and possibly some files that need to be in known locations (this is 
true for LILO, at least; I'm not expert enough in Windows to know what 
might matter there). Does this backup-to-image solution need to address any 
restrictions that are, in this sense, outside the structure of the filesystem?

4. How much flexibility does the corresponding restore function need? Does 
it need only to restore to the same physical drive (or another that is 
physically identical), or do you want to be able to put a copy of the 
filesystem on a another drive with different geometry (and perhaps even a 
different partition structure)?

A general suggestion ... coming from a Windows background, you may assume 
that Windows is s good starting reference point for capabilities. This 
isn't true for all of us here; though I use Windows on my desktop, there 
are many things I know how to do with Linux that I can't begin to guess how 
to do with Windows. So, in this case, your reference to "ghost" does not 
help me understand your needs. I'm sure I'm not the only one here with this 
particular combination of knowledge and ignorance ... you might get better 
responses if you didn't rely on Windows examples to  clarify your needs.

Since I don't know how ghost works, let me ask this ... would a solution be 
to run ghost on the Windows host, them simply transfer (in any of the usual 
ways) the image it creates to the Linux server?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
