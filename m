From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: How to let INITRAMFS continue as root filesystem?
Date: Fri, 16 Mar 2007 12:02:47 +0530
Message-ID: <b115cb5f0703152332u524d08c6sbb28d1445fe9fee4@mail.gmail.com>
References: <b115cb5f0703152320r7726ac6fmd782886a91e8f49a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BD4QE3KeBidtI5N37+KcRg6zHqvhrsO6nrPXzYLpbIQDyGegpldgIW9qJhg1kEB5+JZdiXB46zQ98JRUOPqU5FP4jChSclg9zLYUE115PMFSmhJ8j+3BuaJZMI5QmMDFNqmcl+az0SerHlINg7s3/B3WKjobRIszrPC3tdRz5I4=
In-Reply-To: <b115cb5f0703152320r7726ac6fmd782886a91e8f49a@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kernel Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, bos@serpentine.com

On 3/16/07, Rajat Jain <rajat.noida.india@gmail.com> wrote:
> Hi,
>
> I am using Linux kernel 2.6.15 on a MIPS embedded box. I am booting up
> successfully using an initramfs compressed cpio archieve as my root,
> but only after MANUALLY COMMENTING the call to prepare_namespace() in
> init/main.c:init().
>
> I referred to the following text in Documentation/early-userspace/README:
>
> ==========================================
> c) using initramfs.  The call to prepare_namespace() must be skipped.
>    This means that a binary must do all the work.  Said binary can be stored
>    into initramfs <...snip...>.  It must be called "/init".  This binary
>    is responsible to do all the things prepare_namespace() would do.
>
>   <...snip...>, the /init binary will only run if it
>    comes via an initramfs cpio archive.  If this is not the case,
>    init/main.c:init() will run prepare_namespace() to mount the final root
>    and exec one of the predefined init binaries.
> ==========================================
>
> I understand that /init in initramfs is suuposed to mount the real
> root, but in my case, I don't want to mount any other real root - I
> just want the initramfs to remain the root.
>
> 1) Is there any command line option (like root=/dev/ram0 as in case of
> initrd) to let the initramfs continue as the root file system?
>
> 2) The above README text suggests that the call to prepare_namespace()
> will automatically be skipped if /init (in initramfs) mounts a real
> root. Can somebody please point out in code how / where this is done?

OOPS ... found it! It was right there before my eyes ....its done int
init(). got the answer to my query no 2, however, my query 1 is still
open.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
