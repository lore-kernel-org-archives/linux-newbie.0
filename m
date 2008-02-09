From: "Manish Katiyar" <mkatiyar@gmail.com>
Subject: Question about do_sync_read()
Date: Sat, 9 Feb 2008 14:22:58 +0530
Message-ID: <ea11fea30802090052o22a77f0bkb8867cc8f570572e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-fsdevel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=Y8dXFeelnG9C3ZWuQwR1sVp0tfK+kIvvLlw2d+0fIuY=;
        b=ux2WfSKXxcFrlOwNoWgomXqIHJH1EnkhO3qAuL8/vfJmEU0s3T1Z2NnKCjZv1UiGTYu2huoSqSeIn/C1xY/0h4nk55nuGohRKPqwiXGnst6Hk2mxEIThlQf6qqKG3o6M/K1ihaNf/8CwRofAXieub1KwHtBoBgBMD2Xl6BeyANU=
Content-Disposition: inline
Sender: linux-fsdevel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, linux-fsdevel@vger.kernel.org

Hi,

In the implementation of file systems for 2.6 kernels,
generic_file_read is often replaced with do_sync_read(). In this
function we call "filp->f_op->aio_read" unconditionally.
where most of the times aio_read is intialized as
generic_file_aio_read(). Wouldn't it be a good idea to change the
following code

241  for (;;) {
242   ret = filp->f_op->aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
243   if (ret != -EIOCBRETRY)
244    break;
245   wait_on_retry_sync_kiocb(&kiocb);

to

241  for (;;) {
242     if(filp->f_op->aio_read)
243         ret = filp->f_op->aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
244     else
245              ret = generic_file_aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
246   if (ret != -EIOCBRETRY)
247    break;
248   wait_on_retry_sync_kiocb(&kiocb);

Just to have a fall back mechanism as we do at many places in the VFS layer..

-- 
Thanks & Regards,
********************************************
Manish Katiyar  ( http://mkatiyar.googlepages.com )
3rd Floor, Fair Winds Block
EGL Software Park
Off Intermediate Ring Road
Bangalore 560071, India
***********************************************
