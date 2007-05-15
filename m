From: "Learning Linux" <learninglinux4@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Tue, 15 May 2007 14:10:52 +0530
Message-ID: <9f1dc2cf0705150140k1fef87acvd774c7e171e4a660@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <366312910705142217geba69dbm98a6c0bf2aabb937@mail.gmail.com>
	 <a2ebde260705142345m440c70fbu33934334fbb69f8e@mail.gmail.com>
	 <366312910705150010p623f9732mc498f457245d23a1@mail.gmail.com>
	 <a2ebde260705150028j16cc12a2ya6d5906c97ce193b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=A7CurlvLh/A13NElOoge6WMGoTBGuNFPJjwfUwyEPzYLkw4X1xQFU4Z3tLU1cYLJkmh/1nIkVCdYA54GZG7AWHQjhxArwuk5ozuko8GGGjzUQB7E1Ha0dXwQnyCi7m2z56uSUcasJwrZGa65no74e6P+rrNNB/FwI/83wc0CCJc=
In-Reply-To: <a2ebde260705150028j16cc12a2ya6d5906c97ce193b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dong Feng <middle.fengdong@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

> The interrupt handler's execution time will definitely defer the
> execution of the process, but I think it does not steal the process's
> time slice (the time_slice field not subtracted).

It will definitely be substracted from the process's time slice.
Because the timeslice is substracted in timer interrupt, and does not
differenciate if the process is executing ISR or not.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
