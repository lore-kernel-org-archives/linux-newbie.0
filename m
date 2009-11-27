From: Prasad Joshi <prasadjoshi124@gmail.com>
Subject: lost wakeup problem.
Date: Fri, 27 Nov 2009 15:23:17 +0530
Message-ID: <fe291c8c0911270153p19a9cb27q127de2d40001aa5b@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=wfKLW0y3k9dn973lzVoyBTCTY8ygjNIpPySLcS2v/WE=;
        b=Dnjl0gNrNR7Emb0x1uzUiPWLNMaU+Fwfm5IbVKBufrxufDpwYNMrd4hgceuJI7JZky
         ivfSQya6H3nrURMCfmSZQ0eHQsU1Ftu3F6nw9nmpEjbYT5I7ylMvbDNN7g2KkZ7V7jfY
         hPxqNsnN9Jn+UY4GDgq5V/DesHO2nz1rGWTFY=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi All,

I am implementing a block device. I put every new request in the
bio_list and then I have a thread which keeps on retrieving and
servicing the request.

Here is my make_request function.

int iftl_make_request(struct request_queue *q, struct bio *bio)
{
    struct iftl_device *dev = q->queuedata;
    int rw = bio_rw(bio);

    if (rw == READA)
        rw = READ;

    BUG_ON(!dev || (rw != READ && rw != WRITE));

    spin_lock_irq(&dev->lock);
    bio_list_add(&dev->ftl_bio_list, bio);
    wake_up(&dev->event);
    spin_unlock_irq(&dev->lock);
    return 0;
}

This is my thread servicing the bio requests

int iftl_thread(void *data)
{
    struct iftl_device *dev = (struct iftl_device *) data;
    struct bio *bio;

    set_user_nice(current, -20);
    while (!kthread_should_stop() || !bio_list_empty(&dev->ftl_bio_list)) {
        wait_event_interruptible(dev->event,
                !bio_list_empty(&dev->ftl_bio_list) || kthread_should_stop());

        spin_lock_irq(&dev->lock);
        if (bio_list_empty(&dev->ftl_bio_list)) {
            spin_unlock_irq(&dev->lock);
            continue;
        }
        bio = bio_list_pop(&dev->ftl_bio_list);
        spin_unlock_irq(&dev->lock);
        BUG_ON(!bio);
        iftl_handle_bio(dev, bio);
    }
    return 0;
}

Every time I run IOs on my device I get following oops

mkfs.ext3     D 0000000000000000     0  7962   7960 0x00000000
ffffffff81492020 0000000000000086 ffffc9001447b028 0000000000000008
0000000000000092 0000000000011e40 000000000000c788 ffff88021ea25780
ffff88021ea25a08 00000000000000ff ffff8800588d1f00 ffff88021ea25a08
Call Trace:
[<ffffffff81108070>] ? sync_buffer+0x0/0x50
[<ffffffff8130d884>] ? io_schedule+0x34/0x50
[<ffffffff811080ad>] ? sync_buffer+0x3d/0x50
[<ffffffff8130dfb0>] ? __wait_on_bit+0x50/0x80
[<ffffffff81108070>] ? sync_buffer+0x0/0x50
[<ffffffff8130e059>] ? out_of_line_wait_on_bit+0x79/0xa0
[<ffffffff81057e70>] ? wake_bit_function+0x0/0x30
[<ffffffff81108faf>] ? __block_prepare_write+0x37f/0x560
[<ffffffff8110c8d0>] ? blkdev_get_block+0x0/0x70
[<ffffffff81109315>] ? block_write_begin+0x55/0xe0
[<ffffffff8110d8d2>] ? blkdev_write_begin+0x22/0x30
[<ffffffff8110c8d0>] ? blkdev_get_block+0x0/0x70
[<ffffffff810ade38>] ? generic_file_buffered_write+0x128/0x320
[<ffffffff8102f633>] ? __wake_up+0x43/0x70
[<ffffffff810ae4d8>] ? __generic_file_aio_write_nolock+0x278/0x480
[<ffffffff8102f633>] ? __wake_up+0x43/0x70
[<ffffffff810aee8f>] ? generic_file_aio_write_nolock+0x2f/0xa0
[<ffffffff810e1093>] ? do_sync_write+0xe3/0x130
[<ffffffff81057e40>] ? autoremove_wake_function+0x0/0x30
[<ffffffff810e1d2b>] ? vfs_write+0xcb/0x1a0
[<ffffffff810e1f03>] ? sys_write+0x53/0xa0
[<ffffffff8100be42>] ? system_call_fastpath+0x16/0x1b

I also found that there is mismatch between, the number of
make_request calls and number of times thread serves request. Is this
problem because of lost wake_ups.

Appreciate your help.

Thanks and Regards,
Prasad
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
