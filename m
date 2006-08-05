From: "Nilesh Agrawal" <nilesh.agrawal@gmail.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Sat, 5 Aug 2006 22:03:48 +0530
Message-ID: <9a9e5ab90608050933x6451ee98v8d3cc2abae170bdb@mail.gmail.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
	 <1154740833.11701.1.camel@uranium.hq.netapp.com>
	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>
	 <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
	 <44D4B134.1070002@surriel.com>
	 <b115cb5f0608050826y6bac535eja57554410e34e2fb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0608050826y6bac535eja57554410e34e2fb@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Rik van Riel <riel@surriel.com>, idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

> Okay ... NOW we are talking. Any idea / links / references on where
> should I start looking for? How tough / practical is it to switch from
> protected mode to real mode and back? Is it possible at all (in
> linux)?

Paging only works in protected mode. And once paging is turned off,
all the kernel code is unusable because it is linked at PAGE_OFFSET +
something. ( 3GB + )

Disabling paging itself is not easy, let alone going to real mode
(where only 64KB memory is available ) and coming back.


Nilesh


-- 
And ye shall know the truth (source) and the truth shall set you free.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
