From: Ben Kevan <ben.kevan@gmail.com>
Subject: Re: what does this block of code mean?
Date: Sun, 15 Jul 2007 20:10:34 -0700
Message-ID: <200707152010.35132.ben.kevan@gmail.com>
References: <90d49b680707151840i234269edrf79bbe9332c23946@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:from:to:subject:date:user-agent:cc:references:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:message-id;
        b=s0+EB7HmbtVn/YyAdDMayJXnn3lr1MBVdNfMHfj3P5OMqIUMUJVvgxMPyVNyAeXYTr2TRj+dpBUMRthrI380FTA/wsMnm7iLwt/hLNjQvLkKr2e2UDx01tVPRLUdqVd/rO7d/FEdBzdjA/ToAVi9o7hYZKwTa4FwWCt4hiopJVk=
In-Reply-To: <90d49b680707151840i234269edrf79bbe9332c23946@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jack Bauer <bauer.free@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sunday 15 July 2007 06:40:27 pm Jack Bauer wrote:
> Hi
>
> This is in tclcl.h file.
>
> #include <sys/types.h>
> #include <string.h>
> #include <tcl.h>
> extern "C" {
> #include <otcl.h>
> }
>
> #include "tclcl-config.h"
> #include "tracedvar.h"
>
> What does extern "C" ... mean?
>
> Thanks in advance.

tells the C++ compiler that the functions declared in the header file are C 
functions

-- 
How much can you know about yourself, you've never been in a fight? I don't 
wanna die without any scars. So come on; hit me

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
