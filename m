From: wuzhouhui <wuzhouhui14@mails.ucas.ac.cn>
Subject: Pointer compare in md driver
Date: Fri, 27 Oct 2017 16:08:25 +0800
Message-ID: <aa2d080d-8410-ba9a-0e0b-084a08079dd8@mails.ucas.ac.cn>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I have a question when reading md driver. Following is the code from
linux/drivers/md/md.c, function md_do_sync():

>                 for_each_mddev(mddev2, tmp) {
>                         if (mddev2 == mddev)
>                                 continue;
>                         if (!mddev->parallel_resync
>                         &&  mddev2->curr_resync
>                         &&  match_mddev_units(mddev, mddev2)) {
>                                 DEFINE_WAIT(wq);
>                                 if (mddev < mddev2 && mddev->curr_resync == 2) {
>                                         /* arbitrarily yield */
>                                         mddev->curr_resync = 1;
>                                         wake_up(&resync_wait);
>                                 }
>                                 if (mddev > mddev2 && mddev->curr_resync == 1)
>                                         /* no need to wait here, we can wait the next
>                                          * time 'round when curr_resync == 2
>                                          */
>                                         continue;
>                                 /* We need to wait 'interruptible' so as not to

The type of mddev2 and mddev both are struct mddev *, so what's the
meaning of comparing these two variables?

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
