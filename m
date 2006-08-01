From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Regarding the gfp mask "GFP_NOFS"
Date: Tue, 1 Aug 2006 11:36:19 +0530
Message-ID: <292693080607312306r58d0aa70q969a348842f26586@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
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
To: kernelnewbies@nl.linux.org, linux-newbie@vget.kernel.org

Hi,

As mentioned in Robert Love's book on Linux kernel development:

"The mask GFP_NOFS to kmalloc specifies that the allocation can block
and can initiate disk I/O, if it must, but will not initiate a
filesystem operation. This is the flag to use in filesystem code when
you cannot start another filesystem operation."

When it came to GFP_NOIO mask that says that no Disk IO should be
initiated to free memory; I could digest that very well since Disk IO
could be initiated to swap a process to disk to free memory.

But I could not understand why and how could a filesystem request be
initiated in order to free memory (the case avoided by GFP_NOFS)?

What am I missing here?

Thanks,

Dan

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

