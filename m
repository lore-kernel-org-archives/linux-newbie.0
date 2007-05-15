From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Wed, 16 May 2007 06:49:16 +0800
Message-ID: <a2ebde260705151549r2762ac1fk9a68db7b903e6525@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
	 <4649E680.9020102@cfl.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=VZwmH+k9MkVmtO3zMuy1ur+8o/ECV4eZk6mAeDHvub95bXYLxXyyo34QqsJyg+yLq9IxhytEDCaXbQ8duLXySxOdQ+fz6yvXya+5RwXBJn2C/razqrdITSje+0vdqyD/kJrDygb9qvf9I0e7bKPt0F4HtEVEjAM6EKIzisp5hMA=
In-Reply-To: <4649E680.9020102@cfl.rr.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Phillip Susi <psusi@cfl.rr.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

2007/5/16, Phillip Susi <psusi@cfl.rr.com>:
> Dong Feng wrote:
> >> Doesn't it run in current process's context ?
> >>
> >
> > No. I think the concept of process context is a higher-level logical
> > concept. Though the interrupt share stack with the interrupted
> > process, in my opinion it logically does not share the context with
> > the process.
>
> No, the term context here has a specific meaning.  It refers to those
> things which flow from the current pointer, including the virtual memory
> space, file descriptor table, current uid, and so forth.  Because the
> current pointer is not changed on entry to an ISR, the ISR is executing
> in the context of the interrupted process, and thus uses that process'
> virtual memory, etc.
>

If what you say were true, then an ISR would be running in the same
context as the interrupted process. But please check any article or
book, it will say ISR running in different context from any process.
So ISR is considered in its own context, although it shares a lot of
things with the interrupted process. I would only say *context* is a
higher-level logical concept.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
