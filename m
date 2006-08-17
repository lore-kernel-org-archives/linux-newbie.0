From: Arjan van de Ven <arjan@infradead.org>
Subject: RE: Relation between free() and remove_vm_struct()
Date: Thu, 17 Aug 2006 12:48:36 +0200
Message-ID: <1155811716.4494.51.camel@laptopd505.fenrus.org>
References: <BKEKJNIHLJDCFGDBOHGMKEEMDGAA.abum@aftek.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932437AbWHQKtE@vger.kernel.org>
In-Reply-To: <BKEKJNIHLJDCFGDBOHGMKEEMDGAA.abum@aftek.com>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

On Thu, 2006-08-17 at 13:26 +0530, Abu M. Muttalib wrote:
> Hi Arjan,
> 
> Thnax for your reply.
> 
> > second of all, glibc delays freeing of some memory (in the brk() area)
> > to optimize for cases of frequent malloc/free operations, so that it
> > doesn't have to go to the kernel all the time (and a free would imply a
> > cross cpu TLB invalidate which is *expensive*, so batching those up is a
> > really good thing for performance)
> 
> As per my observation, in two scenarios that I have tried, in one scenario I
> am able to see the prints from remove_vm_struct(), but in the other
> scenario, I don't see any prints from remove_vm_strcut().
> 
> My question is, if there is delayed freeing of virtual address space, it
> should be the same in both the scenarios, but its not the case, and this
> behavior is consistent for my two scenarios, i.e.. in one I am able to see
> the kernel prints and in other I am not, respectively.

I'm sorry but you're not providing enough information for me to
understand your follow-on question.

Greetings,
   Arjan van de Ven

> 
-- 
if you want to mail me at work (you don't), use arjan (at) linux.intel.com
