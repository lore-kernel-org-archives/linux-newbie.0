From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: fast interrupts?
Date: Sun, 9 Jun 2002 02:38:01 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020609023801.F12928@neutrino.particles.org>
References: <046701c20ecc$69f3d560$9e03a5d8@oemcomputer> <20020608125800.D12928@neutrino.particles.org> <003a01c20f22$e490e140$4204a5d8@oemcomputer>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <003a01c20f22$e490e140$4204a5d8@oemcomputer>; from asr245@nyu.edu on Sat, Jun 08, 2002 at 03:30:03PM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Anshuman Rawat <asr245@nyu.edu>
Cc: linux-newbie@vger.kernel.org

On Sat, Jun 08, 2002 at 03:30:03PM -0400, Anshuman Rawat wrote:

> so it means that only those registers are saved that were being used by the
> process which was interrupted? or only those which the process was using and
> the intr. handling routine will also use?

No. The text just warns you that if you use assembly code inside the 
interrupt handler you'll have to save the registers you plan to modify
and restore them afterwards. This isn't the case with the registers which
are stored when a C function takes control (SP register, etc.).

A process does not use specific registers (all the registers are modified
during the execution of a program), but when a function takes control 
some specific registers are saved, such as the Stack Pointer register.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
