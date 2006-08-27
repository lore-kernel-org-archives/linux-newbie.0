From: Ray Olszewski <ray@comarre.com>
Subject: Re: system hangs momentarily every 4 mins 2 secs
Date: Sun, 27 Aug 2006 12:26:38 -0700
Message-ID: <44F1F1EE.1010106@comarre.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <20060827012228.5549032E99@kevin.kevino.org> <f68850780608262311s4e071ebpa431ca617bec9b8f@mail.gmail.com> <200608271145.37956.kloro2006@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200608271145.37956.kloro2006@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

tom arnall wrote:
> On Saturday 26 August 2006 23:11, Raseel Bhagat wrote:
> 
>>Hi,
>>
>>On 8/27/06, mike@kevino.org <mike@kevino.org> wrote:
>>
>>>On Sat, 26 Aug 2006 12:55:33 -0700
>>>
>>>tom arnall <kloro2006@gmail.com> wrote:
>>>
>>>>My system hangs momentarily every 4 mins 2 secs. The event coincides
>>>>with a 'top' entry in which 'events/0' grabs 50-95% of cpu capacity.
>>>>How can I determine what is causing the event?
>>
>>This is a long-shot but the last time I had the same problem it turned
>>out that there had developed a loose connection with the heat-sink and
>>processor on the motherboard.
>>As a result, the processor used to over-heat in about every 3 minutes
>>or so, the watchdogs would come into picture and cause the machine to
>>hang or reboot.... usually reboot.
>>
>>Just give a quick check on your hardware before probing into the software
>>side.
> 
> 
> how did you identify the problem with the heat sink?
> 
> is it likely that a hardware problem would cause the hanging phenomenon at 
> such a precise interval? i ran 'top' in batch mode to a file for ~.5 hour and 
> also wrote down the time whenever the hang occurred, then i compared the 
> output of top with the 'hang moments'. there was an exact coincidence 
> with 'top' entries in which 'events/0' was gobbling the cpu. and these events 
> occurred exactly 4 mins 2 secs from each other.
> 
> i also logged the content of /proc/interrupts at intervals of ~.2 sec's. in 
> this case, there was no change at the 'hang moments' except that i got only 1 
> sample for the second in which the hang occurred. in all other cases, of 
> course, i got 5 samples per second.
> 
> thanks in advance,
> 
> tom arnall
> north spit, ca

Tom -- You are right to be skeptical about the heat-sink suggestion. 
I've had problems similar to that one, and they ALWAYS cause either a 
reboot or a permanent hang (possibly with a kernel OOPS). They neve 
cause the sort of transient problem you describe.

What you are seeing isn't really a "hang"; it is just the system 
becoming busy with a task other than the one currently onscreen. The 2 
seconds part intrigues me; might it be the case that the "hang" lasts 
for 2 seconds? Or might the clock be 2 seconds off after it occurs? 
(Hard to check from one instance, but over a day, this would lead to a 
6-minute clock drift, easy to spot.)

I'm pretty sure "events" are what older kernels identify as keventd, a 
process internal to the kernel. That is, you're seeing a line in top 
something like this one ...

4 root      10  -5     0    0    0 S  0.0  0.0   0:00.00 events/0

... except that the %CPU column is a lot higher.

If I'm right, and if you're using a 2.6.x kernel, then you might see if 
the application systemTap will help you to diagnose the problem. You 
might also check if any cron job is running on this 4-minute cycle.

The other obvious suspects here are device drivers. Does lsmod show 
anything running that's out of the ordinary? Do you have WiFi running on 
this system (if som using what deirvers)?

Finally, 50-95% is a pretty big range. It makes me wonder if there is 
ALSO some process grabbing a lot of CPU (the other 50%, when this value 
is low) on a regular basis. Do you see anything in top?

If none of this helps, and/or if any of my guesses have been wrong, you 
might post again with a more complete description of the system, namely: 
what distro and version, what kernel ("uname -a" usually is enough), and 
what type and speed of CPU. The output of "free" is sometimes 
instructive as well. And what is the typical system load (1.00 - the 
"id" value as reported by top on its third line)?

Oh, and you you use this system for anything other than the usual sorts 
of desktop and server uses?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
