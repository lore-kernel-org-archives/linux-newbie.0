From: "Milind Arun Choudhary" <milindchoudhary@gmail.com>
Subject: Re: fcntl v/s ioctl
Date: Fri, 30 Mar 2007 11:46:13 +0530
Message-ID: <3b44d3fb0703292316o4e30167cxcb1e93f718d10dc7@mail.gmail.com>
References: <7783925d0703290916p5298cc10nc8279f3078af66dd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BI0rxjzsbgyTNfkh6ObC4yqu5diRPy2UMDvz5ay2YTKohbg8XtUnIbxuG/WWgAw756KIsSL78ErI5XmzeSVSUk1MLfAglA8lTHZAaHxUGMSKBZc/z7Cszv2pCNMDfOZsLre1Ylsmuk8FwvX8USiI/Z3v2RVjBaVLLSE16bEGdiE=
In-Reply-To: <7783925d0703290916p5298cc10nc8279f3078af66dd@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 3/29/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi,
>
> Could some one please explain me the differences and similarities
> between fcntl and ioctl?
>Is one built upon the other?
No

> AFAIK, both are used for handling of very
>device specific commands by the driver.

not both,
this goes well with ioctl

as ioctl is customizable, there is an ioctl method in the
struct file_operations.
so a driver writer can define some device specific tasks
& hook her own method to execute them via an ioctl

http://lxr.linux.no/source/fs/ioctl.c#L159

fcntl is not customizable by a driver
there are some fixed task which it performs

like
setting the close on exec flag
duplicate fd
set/get owner
etc
have a look at

sys_fcntl
http://lxr.linux.no/source/fs/fcntl.c#L385

& its worker
do_fcntl
http://lxr.linux.no/source/fs/fcntl.c#L315


we can say that fcntl dosen't bother if its a regular file
or a device specific file

where as ioctl changes its color in these case

-- 
Milind Arun Choudhary
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
