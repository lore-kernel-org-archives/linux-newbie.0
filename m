From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Thu, 7 Nov 2002 12:41:19 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021107124119.A1136@neutrino.particles.org>
References: <200211070659.gA76wvp02557@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211070659.gA76wvp02557@philonline.com>; from pfheiss@philonline.com on Thu, Nov 07, 2002 at 02:58:57PM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Thu, Nov 07, 2002 at 02:58:57PM +0800, Peter wrote:
> > % ulimit -c 1000000 
> > Rerun TkDesk and let it crash. You should have a core file now. 
> 
> $ tkdesk
> Segmentation fault (core dumped)
> 
> except it's nowhere to be found. Wait, here it is now with ending numbers: 
> core.1298
> One of the new tricks of RH7.3?

% gdb tkdesk ./core.1298
...
% (gdb) where

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
