From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Terminal problems
Date: Tue, 20 May 2003 15:04:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ECAA677.2070908@bcgreen.com>
References: <Pine.LNX.4.21.0305201209440.7247-100000@deepesh.india.tejasnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0305201209440.7247-100000@deepesh.india.tejasnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: deepesh@india.tejasnetworks.com
Cc: Riley Williams <Riley@Williams.Name>, linux-newbie <linux-newbie@vger.kernel.org>

It sounds to me like the problem is relatively straight forward.

Any RS232 errors (start bits, stop bits or parity) introduced by the
faulty card are likely to be filtered out by the receiving UART,
so those can be discounted. All that you're going to see on the
terminal end are characters that get transmitted in such a way that
they at least 'look' legal.

  BTW: If the clock is faulty, then I thnk that you should at least
   consider the possibility that there are other problems in the
   faulty card's internal electronics.

If you know what the card is *supposed* to send under given
circumstances, I'd suggest the following:


Turn on logging in minicom.
connect to the good card, and run a session.

connect to the bad card and run a session (hopefully
generating the error).

Compare the output of the two sessions (probably via diff).

this should give you an indicator of where the outputs are different.

 From there, you could probably use 'od -c' to get a more complete
dump of the output  -- character by character to see which bits
are being changed where and when...

so:
  diff session1.log session2.log | od -c | less

or: diff session1.log session2.log > /tmp/diff.txt
vi  /tmp/diff.txt            (take out extraneous differences.)
od -c /tmp/diff.txt  | less
It won't be pretty, but it will at least be posible to see
were things are going wrong.


deepesh@india.tejasnetworks.com wrote:
> 
> 
> hi,
> 
> 
>  i have two cards. one a good one and the other one, faulty. 
> 
>  the good card works well with both the terminal settings, ANSI and VT102.
> but the faulty one works only in ANSI. i assume that the switching to the
> extended character set doesn't happen in ANSI, since there is no provision
> of changing, may be that is how it works. But in case of VT102, there is a
> change from initial charater set to the extended one once the card sends
> some control charaters.
> 
>  what needs to be found out is, under what situation does a card send
> these "weird charaters", some problem with the clock or something in the
> faulty card. and how does a terminal distinguish between a control
> charater and a normal character. the UART of the host computer 
> will only see characters rather bits. that way if some how a normal
> charater is changed to a control charater (one bit pattern changed to
> another bit pattern, due to some problem with the clock), might be causing
> the whole problem.  
> 
>  is there anything like the number of stop bits, parity bits etc are
> getting altered. i am really confused about the whole stuff.
> 
> 
>  i have done stuff like:
> 
>  stty -F /dev/ttyS0 -a 
>  and found the serial port settings. there is no change between the
> initial settings and the one after i connect the faulty card. this means
> that only the terminal settings are altered. 
> 
>  please help. what i need is, what are the cases in which one bit pattern
> can change to another bit pattern, one reason i know is that the clock is
> not proper. in that case there should be problem with both the terminals.
> 
> 
> deepesh
> 
> 
> 
> 
> 
> 
> 
> 
> 
> On Tue, 20 May 2003, Riley Williams wrote:
> 
> 
>>Hi Deepesh.
>>
>> >>> Please let me know the basic differences between the
>> >>> VT102 and the ANSI terminals.
>>
>> >> ANSI was based on the VT100 (predecessor to the VT102).
>> >> The VT102 has a couple of extensions not in ANSI.
>> >> Nothing really show-stopper for most people. ANSI is,
>> >> however, something of a least-common denominator. Just
>> >> about anything that supports vt102 (or vt200) protocols
>> >> should also work if you say that it's ANSI.
>>
>> > There is a strange problem that I am facing, when I am
>> > connecting the diag port of my card to the minicom ttyS0
>> > of my host machine, and the terminal settings are ANSI,
>> > I do not have any problem. But when the terminal settings
>> > are VT102, I get strange characters on the screen. That
>> > is the reason I wanted to know the difference between the
>> > two.
>> >
>> > I think that the card is somehow sending some control
>> > characters which affects the terminal settings in VT102,
>> > but the ANSI doesn't support those extra features because
>> > of which there is no problem.
>> >
>> > Please give me some information how the control character
>> > related stuff works on terminals. This might help me
>> > solve my problem.
>>
>>Part of the ANSI protocol, and thus also of the VT100 and
>>VT102 protocols, is the ability to switch between the
>>standard and alternative character sets. However, by
>>default, that alternative character set is undefined.
>>
>>My understanding is that the definition of ANSI used in Linux
>>disables this ability, but it is still implemented in most
>>definitions of VT100 and VT102.
>>
>>To make use of this facility, you need to actually define
>>the alternative character set to use, otherwise you get a
>>set of weird characters defined by the current contents of
>>a random area of system memory - your "weird and wonderful"
>>characters sound just like that.
>>
>>Best wishes from Riley.
>>---
>> * Nothing as pretty as a smile, nothing as ugly as a frown.
>>
>>---
>>Outgoing mail is certified Virus Free.
>>Checked by AVG anti-virus system (http://www.grisoft.com).
>>Version: 6.0.481 / Virus Database: 277 - Release Date: 13-May-2003
>>
> 
> 


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
