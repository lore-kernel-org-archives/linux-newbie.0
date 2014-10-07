From: Grozdan <neutrino8@gmail.com>
Subject: High latency while CPU is at full load
Date: Tue, 7 Oct 2014 21:12:34 +0200
Message-ID: <CAFLt3pihQA0nT20kgWhExr44Q93pULGuL2XZz18pmq-hwA4YWQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=IM6JTrxIe1cs6cEMcmFiLsi2SxTh44qhLQr2nr+VIwU=;
        b=oDvrjiga5XFS3ypY94AMIBXxIoV7xqCYB3kvHEmVNf37spv/uui2Kg4VKU5MiNWScX
         LSV9LWvAM6Woh/XoA4XKK1vqhlAQGCSo2wUgW6jfcWOXrRw5dRO6/RRhtiHHKMr5AoQh
         my8zEWXurhThZijSTrVmRXfE6v+swHs3paAWJYx8ql702rZvKlZvOfV4XND5VbFiK+BV
         e2kxVeger7OSxFN3hBXhDGBYziAh05dfoZ3GIbMeSpE2YklNJWmvckxz5rViVpitDvA+
         2WT/T0KgfQcdOOCCUvGvqCio5GNI56KcnTAB5Ph0vRipoVy7tWhZ6St6MeFqiqYSCll1
         OobA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I went through the Majordomo list but was not able to find an
appropriate list so I'm trying here.

Basically, my problem is this:

I'm doing a lot of audio/video encoding on an AMD FX8350. The encoder
process always runs at nice 10. Even so, my whole system feels very
sluggish. Switching between different app windows and/or virtual
desktops takes up usually 3-5 seconds giving the impression that there
is not enough processing power. Browsing the web is also severely
impacted.

I had to tune CFS in order to be (much) more responsive during an
encoding session. This has worked out pretty well thus far, but it is
my opinion that the user should *not* need to fiddle with buttons to
make his system respond fluently even under high load. The below is
what I had to do in order to get a snappy system during such load

kernel.sched_nr_migrate = 64
kernel.sched_latency_ns = 65000000
kernel.sched_wakeup_granularity_ns = 100000
kernel.sched_min_granularity_ns = 100000
kernel.sched_migration_cost_ns = 7000000

PS: If this is not the right list, please forward this mail to the
appropriate one

-- 
Yours truly
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
