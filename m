From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Tue, 5 Nov 2002 12:03:16 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021105120316.F2076@neutrino.particles.org>
References: <200211050126.gA51QMD01651@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211050126.gA51QMD01651@philonline.com>; from pfheiss@philonline.com on Tue, Nov 05, 2002 at 09:26:22AM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux <linux-newbie@vger.kernel.org>

On Tue, Nov 05, 2002 at 09:26:22AM +0800, Peter wrote:
> Only the message 'Segmentation fault' shows up immediately after giving the 
> command tkdesk.
> 
> Why would that be and how could it be corrected?

Inspect the core file using gdb:

% gdb tkdesk ./core

Or use strace:

$ strace tkdesk

And see if you can figure where it crashed. If yes, then you should pro-
bably know why, too.

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
