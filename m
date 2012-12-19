From: John Beard <john.j.beard@gmail.com>
Subject: Block device driver: how to terminate the block device if media disappears?
Date: Wed, 19 Dec 2012 11:21:59 +0000
Message-ID: <50D1A357.1030004@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=PylHXY+Z9fD8FqgQXGsZqx7+V5n/4xdNQ63sLRx62fM=;
        b=NO71THOMNfEh8e9jev+tL5EzQjvsBz5gUDH3McsS43e3xuMbRPvwas+42UmZ6uLYK8
         KmMHvKt/f04vUS9GTTSNUwl63JhgJgJW4XNUPLJ3oMloyhqb39xfAJcG0lfMHfcpF/UV
         x8nzvFP/x6wLQhPL7v+7NyN81QGHYChuolg2W1YjT1iEHJfxToh3hlDnq/cwk8t+mRQI
         JaFX7yyH3DbO62317cpwlGCLpw7fsM7ewEPcj6Bc6KDN/qU+8mkD2ZiEikSvhPuYdhML
         wI9TY8R8vnDuQVW0yj+ze1cGHKIG++QOU6O4NwSM93u5Ju5HFriYFKMXU4XOJ7gchVlH
         T/ZQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I have block driver for a hot-pluggable device PCIe storage device.
The driver itself is relatively simple and implements the following
block operations:

	static struct block_device_operations mydev_ops = {
        	.owner = THIS_MODULE,
        	.open = mydev_open,
        	.release = mydev_release,
        	.getgeo = mydev_getgeo,
        	.ioctl = mydev_ioctl
	};

and the following PCI driver structure:

	static struct pci_driver mydev_driver = {
		.name = DRIVER_NAME,
        	.probe = mydev_pci_init_one,
        	.remove = mydev_pci_remove_one,
        	.id_table = mydev_pci_tbl,
	};

As well as a request_fn with the following signature:

	static void mydev_submit_req(struct request_queue *q);

Whenever I get IO requests, there is the expected pattern of "open, IO,
release", and everything works OK: I can mount the device and access the
filesystem.

However, if the device is physically removed during IO, I never seem to
get a "release", just "open, IO, hang". I believe (but I don't know),
that this is preventing del_gendisk() from completing, thus hanging the
cleanup of the driver, which is triggered by mydev_pci_remove_one() upon
the removal of the device.

I am ending all requests on the queue with __blk_end_request_all() once
an eject happens, but it still doesn't seem to cause a release.

What is the right way to terminate requests and delete the gendisk in
the case of physically vanished PCI devices (or even devices in
general)? I know I'd end up with a ruined transfer and corrupt data, but
that's better than a hung kernel, and if the user is going to rip out a
busy disk, those are the breaks.

Thanks in advance for any pointers to a solution, I have looked through
drivers/block, read LDD3 and asked at KernelNewbies but have been unable
to nail down my error. I'd be happy to provide more code, but I don't
want to spam with reams of code if it's not going to be helpful.

John Beard
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
