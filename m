From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Sat, 5 Aug 2006 20:56:16 +0530
Message-ID: <b115cb5f0608050826y6bac535eja57554410e34e2fb@mail.gmail.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
	 <1154740833.11701.1.camel@uranium.hq.netapp.com>
	 <292693080608050553x756e4276k33c5afa80f686f44@mail.gmail.com>
	 <b115cb5f0608050611qe937318qf04d87a472dc849a@mail.gmail.com>
	 <44D4B134.1070002@surriel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <44D4B134.1070002@surriel.com>
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rik van Riel <riel@surriel.com>
Cc: idlisambar@gmail.com, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On 8/5/06, Rik van Riel <riel@surriel.com> wrote:
> Rajat Jain wrote:
>
> > Actually I was thinking that if it is possible to perform all the Disk
> > IO operations using the BIOS routines, then why can't we write a
> > SINGLE disk driver that will work with all the kinds of disks.
>
> Because that would be incredibly slow.  You could only have one I/O
> request in flight at a time, and the system could not run other
> processes while I/O was being done.

Oh ... I got you. That sure sounds like a lot of baggage, but despite
all the disadvantages you just mentioned, it will STILL be of lot of
use to me.

>
> > So all this seems like a bad idea ... or should I say TOTALLY IMPOSSIBLE?
>
> It might be possible, but it is still a very bad idea :)


Okay ... NOW we are talking. Any idea / links / references on where
should I start looking for? How tough / practical is it to switch from
protected mode to real mode and back? Is it possible at all (in
linux)?

Thanks,

Rajat

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

