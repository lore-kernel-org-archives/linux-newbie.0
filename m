From: Carl <carl@anexia.co.uk>
Subject: Re: scripting the "rec" function for a fixed time.
Date: Wed, 26 Feb 2003 10:19:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030226100528.01edc598@pop3.demon.co.uk>
References: <03022506145301.00602@unix.pa3gcu>
 <5.1.0.14.1.20030224184821.01eb7e30@celine>
 <03022506145301.00602@unix.pa3gcu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046220248.15520.27.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Peter Howell <p.howell74@rcn.com>
Cc: linux-newbie@vger.kernel.org

At 19:44 25/02/2003 -0500, Peter Howell wrote:

>On Tue, 2003-02-25 at 01:14, pa3gcu wrote:
>> > "rec" is not a stock linux command, and I cannot readily identify a package
>> > that includes that application (just trying to match on "rec" turns up
>> > several hundred hits in the Debian package database). So I'd suggest you
>> > tell us a bit more about your setup, including enough information that we
>> > can identify and take a look at the package that includes this command.
>> 
>> rec is an unix command altho' not well supported, slackware 8 has it included.
>> 
>> rec --help shows a lot but thses are relavant to the question;
>>   -c, --channels=CHANNELS      specifies the number of sound channels in FILE
>>   -d, --device=DEVICE          use DEVICE for input/output
>>   -f, --format=FORMAT          specifies bit format of sample
>>                                FORMAT is either s, u, U, A, a, or g
>>   -r, --rate=RATE              sample rate in hertz of FILE
>>   -s, --size=SIZE              interpret size of sample
>> 
>> I think this one could be an help -s xxxxxxxb
>>                                SIZE is either b, w, l, f, d, or D
>
>        Alas no :-(
>        size isn't the file size.  It's really the width of each sample.  eg b
>for 8 bits, w for 16 bits....
>
>It appears that rec does not buffer the sound, but instead writes it
>directly to the file.  
>It's inelegant, but I suppose I could kill the application after a
>specified delay.  There are two problems with implementing that for me. 
>Firstly, I don't think I could do that in perl, which I'm most familiar
>with because there doesn't appear to be an easy way to spawn a process
>and continue running the scipt.  Secondly, I don't know how to run a
>process and get it's process id, which I'd need to kill it. 
>
>        Ok, just did a little rtfm.  I guess I could use ps and extract the id.
>Now I guess I'd better learn some bash scripting
>


There is a tcl based interpreter called expect which lets you spawn processes and gives you it's pid
easily. If you have any programming or scripting experience then it will be easy.

Or there is a program called timelimit which is part of the netpipes package that spawns a process
and kills it if it doesn't return after a specified time.

I don't know how accurate these are and i have no experience of timelimit.

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
