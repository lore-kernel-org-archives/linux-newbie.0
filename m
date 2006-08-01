From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Why "high memory" in x86?
Date: Tue, 1 Aug 2006 17:39:50 +0530
Message-ID: <b115cb5f0608010509v5d38ddfdtae9bc674d8664750@mail.gmail.com>
References: <b115cb5f0607312248p6e05f2f2je8c6a352f7856a9a@mail.gmail.com>
	 <20060801090248.4aad8a39@thomas.toulouse>
	 <b115cb5f0608010253ja11135ag7a3301f1f0ff8d03@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0608010253ja11135ag7a3301f1f0ff8d03@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Thomas Petazzoni <thomas.petazzoni@enix.org>, chauhan_ait@yahoo.co.in, clucas@rotomalug.org
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

>
> What am I missing?
>
> Thanks,
>
> Rajat
>

Sorry & thanks every one ... I missed out that the kernel is actually
executing on the behalf of a user process only, and is hence sharing
its virtual address space with a user process all the time. My doubts
are clarified.

However, what is meant when we that the 1 GB of physical memory is
"identity mapped" to 1 GB kernel virtual address space? I think it
means that all the user processes have have the 3GB->4GB virtual
addresses mapped to the kernel code & data. Is this right?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
