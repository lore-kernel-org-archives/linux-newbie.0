From: Randy Dunlap <rdunlap@xenotime.net>
Subject: Re: smap output - unnamed entries and heap
Date: Tue, 15 Mar 2011 09:14:12 -0700
Message-ID: <20110315091412.de6eb63c.rdunlap@xenotime.net>
References: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Aneesh Bhasin <contact.aneesh@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

On Tue, 15 Mar 2011 14:31:50 +0530 Aneesh Bhasin wrote:

> Hi All,
> 
> My apologies if this is not the right place for these type of
> questions - I do not know of a better place to ask this.
> 
> I am trying to take out some memory figures from the /proc/<pid>/smaps
> interface (linux v2.6.35). However, I could not find what do the
> entries that have no name associated to them (no library path or
> binary path with these entries) mean. So, I wrote a test C program
> that allocates 100MB of memory (using malloc) and then writes to it in
> chunks of 10MB. I could see that the 'Size' and 'RSS' of one of the
> unnamed entries was increasing in accordance with the code, but there
> were several other such unnamed sections too - is there a way to know
> what and where do they come from.
> 
> Also, I could see that for some process the smap interface was showing
> a '[heap]' entry but not for all - e.g. for my above test case, there
> was no '[heap]' entry, although I assumed the malloc should have
> reflected in the [heap]. Can someone please tell me (or point me in
> the right direction) why is heap entry there only for some processes ?
> 
> Thanks in advance for any help..

Did you look at Documentation/filesystems/proc.txt ?
It has some info on smaps and maps.

---
~Randy
*** Remember to use Documentation/SubmitChecklist when testing your code ***
