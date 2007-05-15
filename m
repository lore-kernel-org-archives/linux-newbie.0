From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 14:45:43 +0800
Message-ID: <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760087AbXEOGpy@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=tMQmxRaogIuoCr+BuinfvWZydXI0sipK11BKADCM91l6jr1GybdNZJ0Vl7fUX5dOCXOWRT7IWgd6Ena5G4MzJ48dJISywtfnzaVa8NyRF5liIG20Hyot2vUeFv9GreAWPjK0DBOyIORunJYTuUcPiUAIYv7XZaggvCj0I+lxsiE=
In-Reply-To: <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pradeep singh <2500.pradeep@gmail.com>
Cc: Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

>
> good enough, but i have a query regarding this then.
> On a 8K kernel stack system, doesn't interrupts share the stack associated
> with the current process which was interrupted?

Yes, I think so.

> Doesn't interrupt steals the CPU slice time allocated to the running process
> to run?

I don't think so but I am not sure.

> Doesn't it run in current process's context ?
>

No. I think the concept of process context is a higher-level logical
concept. Though the interrupt share stack with the interrupted
process, in my opinion it logically does not share the context with
the process.

> What am i missing here?
>
> Thanks
> ~psr
>


But I do not see the exact relationship between your specific queries
and the original question. Could you elaborate?
