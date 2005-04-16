From: Ray Olszewski <ray@comarre.com>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 14:56:15 -0700
Message-ID: <5.1.0.14.1.20050416144139.01fdd820@celine>
References: <5.1.0.14.1.20050416121116.01f63160@celine>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <5.1.0.14.1.20050416121116.01f63160@celine> <Pine.LNX.4.61.0504161457130.5717@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504161457130.5717@localhost.localdomain>
References: <5.1.0.14.1.20050416121116.01f63160@celine>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <5.1.0.14.1.20050416121116.01f63160@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:07 PM 4/16/2005 -0500, James Miller wrote:
>Hello Ray:
>
>On Sat, 16 Apr 2005, Ray Olszewski wrote:
>
>>options for streamripper? I just read its man page, and that says the app 
>>has these options available:
>>
>>       -a [file]
>>              Rip to single file.
><snip>
>>
>>Won't using these option avoid the problem you have in the first place?
>
>I'm not sure. I did see that. Since I'm recording for many hours at a 
>time, wouldn't I come up with a 300MB file or something? I chose the 
>default method because I would like for pieces to play individually, and 
>I'd also like to know what I'm listening to (I'm not much of a classical 
>officianado, but through this station I've already discovered a Baroque 
>composer I like that I didn't even know about--Boccherini). Both of the 
>"single file" options seem to me to mean that the file is the length of 
>the recording session, and that the program does not present information 
>or make any sort of divisions in that file (say, by composer). But 
>documentation is not always as descriptive as it could/should be, so 
>likely only by experimentation could I determine for sure exactly what the 
>-a and -A options do. Have you tried them, or is it perhaps more clear to 
>you from the documentation than it is to me what they do?

I've never actually used streamripper at all ... finding suitable streams 
to capture, or even listen too, has always seemed to me like more trouble 
than the benefit is worth (though this is clearly a place where personal 
preferences will vary).  So I have no hands-on experience using these, or 
any other, options.

But I think your interpretations of the -a and -A options are correct. 
Those options would, probably, work better in a setting something like a 
timed recording of "The Classical Hour" at 8 PM every weeknight ... that 
sort of thing.

BTW, what station are you recording? Perhaps I should give it a try, though 
my tastes in classical music run more to a mix of early stuff like Bach and 
some of the Romantics.

>Pondering over your other suggestions . . .
>
>James
>
>PS Btw, what does "track" translate to in classical music terms?

It depends. In the case of streams, it is some sort of mix of the breaks 
... as deduced by silence gaps ... and changes in the accompanying 
metadata. Track separation is an art, not a science, and the heuristics 
that programs use are imperfect. (At least that's true of gramofile, which 
I do have experience with.)

On CDs, tracks are whatever the record company says they are ... in 
practice, each movement of a Symphony is usually a separate track, and each 
shorter piece (a Fugue, say, or a Polonaise ... anything up to a Concerto) 
is a single track.

>And does the -r option, for relay, make the program play rather than record?

Your reading is as good as mine here. My *guess* is that this option makes 
streamripper act just as a proxy, so (for example) a bunch of hosts -- the 
number depends on the -R setting -- on a LAN can share listening in real 
time to a single Internet stream.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
