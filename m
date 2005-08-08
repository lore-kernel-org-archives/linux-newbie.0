From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: Mount the SD card formatted using the DIGITAL CAMREA on Linux box but HOW?
Date: Mon, 8 Aug 2005 20:38:41 +0530
Message-ID: <C349E772C72290419567CFD84C26E0170426F0@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-fsdevel-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-fsdevel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-fsdevel@vger.kernel.org
Cc: linux-newbie@vger.kernel.org


Dear all,

I have an SD card problem that mounts when formatted on windows but
fails when formatted on camera as you all know.

Now, I an able mount the SD card formatted using the DIGITAL CAMREA on
Linux box using the windows formatted SD cards first 512 bytes.

This will NOT serve as a permanent solution BUT I am able to reduce the
scope of the issue. I used a raw method for this. Here it is.

I formatted the card in windows; copied it to disk-image.

	(Dump the first 512 bytes to the file)
	dd if=/dev/tfa0 of=disk-image count=1

Then I copied the disk-image to the camera formatted device which is not
mounting.

	dd if= disk-image of=/dev/tfa0 count=1

Then, I tried to mount the device. It mounts with some error messages
that are caused to not able to find the 57 sector that contains the FAT
details.

	Attempt to access beyond the end of device
	FAT: Directory bread(block 24) failed
	FAT: Directory bread(block ..) failed
	..
	..
	FAT: Directory bread(block 55) failed

It works fine when I increase the count to 60. I able to copy files,
remount and see the files.
Some one please help me in coming to a conclusion where is the problem.

Regards,
Mukund Jampala

