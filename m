From: tom arnall <kloro2006@gmail.com>
Subject: Re: system hangs momentarily every 4 mins 2 secs
Date: Sun, 27 Aug 2006 11:45:37 -0700
Message-ID: <200608271145.37956.kloro2006@gmail.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <20060827012228.5549032E99@kevin.kevino.org> <f68850780608262311s4e071ebpa431ca617bec9b8f@mail.gmail.com>
Reply-To: kloro2006@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <f68850780608262311s4e071ebpa431ca617bec9b8f@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Saturday 26 August 2006 23:11, Raseel Bhagat wrote:
> Hi,
>
> On 8/27/06, mike@kevino.org <mike@kevino.org> wrote:
> > On Sat, 26 Aug 2006 12:55:33 -0700
> >
> > tom arnall <kloro2006@gmail.com> wrote:
> > > My system hangs momentarily every 4 mins 2 secs. The event coincides
> > > with a 'top' entry in which 'events/0' grabs 50-95% of cpu capacity.
> > > How can I determine what is causing the event?
>
> This is a long-shot but the last time I had the same problem it turned
> out that there had developed a loose connection with the heat-sink and
> processor on the motherboard.
> As a result, the processor used to over-heat in about every 3 minutes
> or so, the watchdogs would come into picture and cause the machine to
> hang or reboot.... usually reboot.
>
> Just give a quick check on your hardware before probing into the software
> side.

how did you identify the problem with the heat sink?

is it likely that a hardware problem would cause the hanging phenomenon at 
such a precise interval? i ran 'top' in batch mode to a file for ~.5 hour and 
also wrote down the time whenever the hang occurred, then i compared the 
output of top with the 'hang moments'. there was an exact coincidence 
with 'top' entries in which 'events/0' was gobbling the cpu. and these events 
occurred exactly 4 mins 2 secs from each other.

i also logged the content of /proc/interrupts at intervals of ~.2 sec's. in 
this case, there was no change at the 'hang moments' except that i got only 1 
sample for the second in which the hang occurred. in all other cases, of 
course, i got 5 samples per second.

thanks in advance,

tom arnall
north spit, ca


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
