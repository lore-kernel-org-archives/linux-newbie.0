From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Disk Image
Date: Thu, 10 Oct 2002 16:03:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002801c27098$1d5ded70$64fea8c0@pkrausxp>
References: <1034279798.2040.12.camel@workwatcher>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1034279798.2040.12.camel@workwatcher>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Don Petrowski' <dpetrowski@ci.collierville.tn.us>, linux-newbie@vger.kernel.org

I think you are seeing this backwards. I want to create the image of a
hard drive that is on the network to my linux box.

Sample

Micro$oft Machine  -   Redhat Machine

Create an image of the Microsoft machines "c" drive and store that image
on the redhat machine.

-----Original Message-----
From: Don Petrowski [mailto:dpetrowski@ci.collierville.tn.us] 
Sent: Thursday, October 10, 2002 3:57 PM
To: Paul Kraus
Subject: RE: Disk Image


dd if=/dev/hda of=/mnt/directory/disk1.img

should create the image on your network.  The image will contain all
drive information including partition tables.  You could also use 

dd if=/dev/hda3 of=/mnt/directory/disk1.img

if you wanted to make an image of just a certain patition like partition
number 3 (/dev/hda3).  You can look in /etc/fstab to see which
partitions you have setup.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
