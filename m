From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Compiling sg.o only (2.4.20)
Date: Fri, 19 Sep 2003 09:46:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030919134619.GC534@lnx2.w8mch.ampr.org>
References: <20030915173911.GA1802@lnx2.w8mch.ampr.org> <200309152113.48288.pa3gcu@zeelandnet.nl> <20030917190122.GA463@lnx2.w8mch.ampr.org> <200309180947.02439.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200309180947.02439.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

On 09-18, pa3gcu wrote:
> 
> I have read (somewhere) that when sg0 is compiled into the kernel starnge 
> things can happen when one is expecting the same things to happen when he/she 
> has it compiled as a module. That could explain the strange behviour.

	Slack9.0, bare.i has it compiled in the kernel so the module
is not available.. I will try a re-compile with SG as a module only
and appreciate your tutoring on EXTRAVERSION.. Now I know where the
"-n" comes from and Ray's pointing out that you can use "-anything"
if you wish.. Nice touch that I wasn't familiar with previously..

	I may have a problem with ide-scsi though.. The Zip drive
needs both the ide-scsi module PLUS append "hdc=ide-scsi" in LILO or
at the LILO boot: prompt, or from LOADLIN.. I can't figure out how to
disable that, if it is possible, once it's in the booted kernel..
First things first though - the rebuild with EXTRAVERSION..



> No idea i dont have a scanner, IMHO scanners are out of date if one has a 
> digital camers, i use my camera as a scanner, simply take a photo and print 
> it out.

	Good idea but what do I do with the two SCSI scanners that
were given to me - one a real expensive and  beautiful piece of
machinery?? <grin>



> KMOD is the kernel's automodprobe proceedure, meaning the kernel does modprobe 
> for you when you do something like (for example) attach a device via 
> hotpluging.
> 
> Read /usr/src/linux/Documentation/Configure.help 
> Use the "/" node, type in KMOD and hit enter.

	OK - got that under my belt now.. More "automation" has crept
into Linux.. My learning curve never flattens..



> It would be interesting to know what happens if you compiled another kernel 
> defineing sg as a module, you could use the /boot/config file to do this.

	That's next and it'll give me the opportunity to remove many
"features" I don't need, eh? Never a dull moment..

Appreciate!!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
