From: Joseph Jackson <skoidat@lvcm.com>
Subject: Re: recursively removing directories
Date: Sat, 29 Jun 2002 18:50:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D1E63F7.1050200@lvcm.com>
References: <20020629.214414.-257403.0.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

Matthew Stapleton wrote:

> How do I recursively remove all the subdirectories and contents of a
> particular directory in Linux? I know of 'rmdir', but this only works for
> empty directories.  I need something like DOS's 'deltree'.
> 
> Thanks,
> Matthew Stapleton
>  
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 

Like this rm -rf /whatever  the -r is ofcourse recursive and the -f is force is 
it won't ask you.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
