From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: fast interrupts?
Date: Sat, 8 Jun 2002 12:58:00 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020608125800.D12928@neutrino.particles.org>
References: <046701c20ecc$69f3d560$9e03a5d8@oemcomputer>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <046701c20ecc$69f3d560$9e03a5d8@oemcomputer>; from asr245@nyu.edu on Sat, Jun 08, 2002 at 05:11:01AM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Anshuman Rawat <asr245@nyu.edu>
Cc: linux-newbie@vger.kernel.org

On Sat, Jun 08, 2002 at 05:11:01AM -0400, Anshuman Rawat wrote:

> while handling a fast interrupt, only those registers are saved that are
> modified by a normal C function (?). This means that , if assmbler code is
> to be used in the handling routine, the remaining registers (?) must be
> saved beforehand and restored afterwards.
> 
> what does the author mean by registers modified by a normal C function, and
> the remaining registers?

A CPU has some registers in order to store data and process them using
the internal command set of the architecture. Registers are the internal
"memory" of the CPU.

In the program flow, when the control is taken by a function 
(this is not only for C), some values are stored to specific registers. 
This helps the CPU to know what to do (i.e. in which mem address will
start reading) when the function returns. 

Elias    

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
