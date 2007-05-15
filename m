From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 16:58:02 +0800
Message-ID: <a2ebde260705150158m45286bd6u5007be863b6ff791@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
	 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
	 <366312910705150010p623f9732mc498f457245d23a1@mail.gmail.com>
	 <a2ebde260705150028j16cc12a2ya6d5906c97ce193b@mail.gmail.com>
	 <9f1dc2cf0705150140k1fef87acvd774c7e171e4a660@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=KoEEj2gm5Lsm/dXTpAQKAdNFaf8xxR5DBCQUUivD5HGhajTQGOLlhgPn3LsMjuODyo384w7pE7Xuyb9mp366iirmoy2FH+zWqShpwxNXo36KT/GxIOhHDBdHHFcN27AKY566h0RrNdYhn+7AWHi9xQ+wGKBFXPJnnG1sjId+ewc=
In-Reply-To: <9f1dc2cf0705150140k1fef87acvd774c7e171e4a660@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Learning Linux <learninglinux4@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Yes, you are right in this regard. An interrupt handler does steal the
time slice from the interrupted process.

So now I think it is considered an acceptable deviation in calculating
the process run time as well as determine process scheduling because
an ISR should take very short time to return, in part as a consequence
of the rule that ISR should not sleep.


2007/5/15, Learning Linux <learninglinux4@gmail.com>:
> > The interrupt handler's execution time will definitely defer the
> > execution of the process, but I think it does not steal the process's
> > time slice (the time_slice field not subtracted).
>
> It will definitely be substracted from the process's time slice.
> Because the timeslice is substracted in timer interrupt, and does not
> differenciate if the process is executing ISR or not.
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
