From: mike <mike@kevino.org>
Subject: devfs
Date: Mon, 02 Feb 2004 20:48:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <401F1A29.80107@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello all,
I was reading the thread subject=(error message interpretation 
help?) and the reference to "devfs". I have a stock installation of 
MDK9.2 and my understanding is that "devfs" is in the kernel or 
(module maybe?) by default.
I should say right off the bat that I am a major newbie so bare with 
me. I've heard complaints about "devfs" before, for one thing the 
naming convention I noticed on my "df" output alittle long and hard 
to read for instance.

Filesystem            Size  Used Avail Use% Mounted on
/dev/ide/host0/bus0/target0/lun0/part5
                       380M  115M  246M  32% /

Someone told me that was because I had "devfs" I did some reading 
and I think I can change that part on my system with 
/etc/devfsd.conf but my question is do I really need "devfs" and if 
not how can I remove it or disable it, and do I need to replace it 
with something else?

-- 
Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
