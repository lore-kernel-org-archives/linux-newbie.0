From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 09:10:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021024090118.02169050@celine>
References: <0210240635240C.00497@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210241604.g9OG4u5X000579@darkstar.example.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:04 PM 10/24/02 +0100, jbradford@dial.pipex.com wrote:
[...]
>By the way, I'm not sure what enabling/disabling DMA has to do with
>reading a faulty CD-ROM.  It's not like you're enabling/disabling
>UDMA, which has error correction to detect errors on the _bus_.

Enabling DMA has nothing (that I know of) to do with reading a faulty 
CD-ROM. I originally suggested it as a solution because in his first 
message, Bryan (the original poster) described his problems in a very vague 
way ("has trouble reading large files"). That sounded to me like it might 
refer to a problem I have seen ... namely, a lot of dropped frames ... when 
doing video playback from a CD drive that does not have DMA enabled. 
Enabling DMA does fix that, since it is a timing issue.

When Bryan's subsequent messages made it clear that (a) this was a problem 
limited to a specific, home-burned CD and (b) the problem occurred in 
non-timing-sensitive settings like copying to a hard disk, I suggested that 
the problem was with the CD's filesystem, not DMA.

The lesson here is that vague descriptions of problems elicit irrelevant 
solutions. I hope everyone who reads this list takes that lesson to heart.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
