From: Burton Samograd <kruhft@hotmail.com>
Subject: Re: Basic questions on the kernel
Date: 30 May 2003 08:21:32 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <87ptm0zchv.fsf@kruhft.vc.shawcable.net>
References: <36993D449C7FA647BF43568E0793AB3E061CD9@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

"Girish Kale" <girish.kale@nevisnetworks.com> writes:
> I have a few basic questions on the kernel performance:
> 
> 1) For embedded systems, even though standard linux may not have hard
> real-time performance unless real-time patch, low latency patch are
> applied, I would like to know if linux can give "deterministic"
> performance. Meaning can we be guaranteed that a particular process will
> be scheduled after a particular time. What are the these times or where
> do I find this data.

There is no performance "guarantee" for any version of linux kernel
other than the branches which are geared toward real time use (such as
RTLinux).  

> 2) When we are using linux on an embedded system, will there a memory
> management unit for this, since there will not be any swapping in/out of
> pages? Can we avoid a process from keeping on allocating memory thereby
> starving other applications?

You still need a memory managment unit for handling protection between
running processes. You might not need swap on your system, but you'll
need that.

As an aside, I've never been a fan of using something like linux (or
any unix for that matter) for embedded systems.  There are plenty of
other real-time operating systems which do the job better in a smaller
space, and a lot of times even lowly DOS is good enough for the job
(and it's even decent soft real-time as well).

> Any pointers to the above topics will be appreciated.

Try searching for 'embedded linux' on google and you'll find some more
good information I'm sure.

-- 
burton samograd
kruhft@kruhft.dyndns.org
http://kruhftwerk.dyndns.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
