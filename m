From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: finding directories within a particular directory
Date: Tue, 10 Feb 2009 16:51:00 -0500 (EST)
Message-ID: <Pine.LNX.4.64.0902101643170.16854@localhost>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie List <linux-newbie@vger.kernel.org>

Hi all,

I have been trying to come up with a way of getting find to give me a list 
of all directories within a specific directory, without including the 
parent in the list. I do not seem to be able to achieve it.

For instance, my directory tree has the following structure:
.
`-- Patient1
     |-- 02-03-2009
     `-- 02-10-2009

I want find to only match 02-03-2009 and 02-10-2009. However, the 
following command gives:

$ find Patient1 -type d
Patient1/
Patient1/02-03-2009
Patient1/02-10-2009

How do I stop matching the parent directory - "Patient1", in this case?

Of course, I could pipe this output through sed/grep to get what I 
need, but I am curious if I can do it using find alone. All help is 
appreciated.


Thanks,

-K

-- 
The production of too many useful things results in too many
useless people - Karl Marx

Computers are useful things - KV

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
