From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Tkdesk Segmentation Fault
Date: Fri, 8 Nov 2002 11:53:06 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021108115306.B3759@neutrino.particles.org>
References: <eathan@otenet.gr> <200211080213.gA82D7w02008@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211080213.gA82D7w02008@philonline.com>; from pfheiss@philonline.com on Fri, Nov 08, 2002 at 10:13:07AM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Fri, Nov 08, 2002 at 10:13:07AM +0800, Peter wrote:
> I had to put the dash in front of # for the mailk to get out.
> Does it say anything usefull?
> Thanks for your patiences.

No. Sorry but I just realised that you have a problem with a Tcl/Tk 
script. Actually, you have to use gdb with the Tcl/Tk interpreter (not
sure which is that, it should be named in the first line of TkDesk).

Assuming the interpreter has been build with debugging info, it is called
'tcl' and it is in your path, do:

% gdb tcl
% (gdb) run /path/to/tkdesk

Normally, you'll get the segfault inside gdb, and using 'where' you'll get
the stack backtrace.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
