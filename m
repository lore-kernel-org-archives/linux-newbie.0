From: Benny Halevy <bhalevy@panasas.com>
Subject: Re: Question about do_sync_read()
Date: Tue, 12 Feb 2008 10:44:30 +0200
Message-ID: <47B15C6E.4030003@panasas.com>
References: <ea11fea30802090052o22a77f0bkb8867cc8f570572e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-fsdevel-owner@vger.kernel.org>
In-Reply-To: <ea11fea30802090052o22a77f0bkb8867cc8f570572e@mail.gmail.com>
Sender: linux-fsdevel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manish Katiyar <mkatiyar@gmail.com>
Cc: linux-newbie@vger.kernel.org, linux-fsdevel@vger.kernel.org

On Feb. 09, 2008, 10:52 +0200, "Manish Katiyar" <mkatiyar@gmail.com> wrote:
> Hi,
> 
> In the implementation of file systems for 2.6 kernels,
> generic_file_read is often replaced with do_sync_read(). In this
> function we call "filp->f_op->aio_read" unconditionally.
> where most of the times aio_read is intialized as
> generic_file_aio_read(). Wouldn't it be a good idea to change the
> following code
> 
> 241  for (;;) {
> 242   ret = filp->f_op->aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
> 243   if (ret != -EIOCBRETRY)
> 244    break;
> 245   wait_on_retry_sync_kiocb(&kiocb);
> 
> to
> 
> 241  for (;;) {
> 242     if(filp->f_op->aio_read)
> 243         ret = filp->f_op->aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
> 244     else
> 245              ret = generic_file_aio_read(&kiocb, &iov, 1, kiocb.ki_pos);
> 246   if (ret != -EIOCBRETRY)
> 247    break;
> 248   wait_on_retry_sync_kiocb(&kiocb);
> 
> Just to have a fall back mechanism as we do at many places in the VFS layer..
> 

FWIW, it's a bit more efficient to set aio_read to generic_file_aio_read and
call it unconditionally.

Benny

