From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sequence of events at boot
Date: Thu, 12 Oct 2006 08:54:33 -0700
Message-ID: <452E6539.4090902@comarre.com>
References: <53876815734.20061011215642@wa5rrh.us> <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

OK. Jim, I don't use Fedora, but there are a few basic thoughts that 
might help anyway.

1. That the line you quote ends with "Done" makes me suspect that it is 
not the problem. As Joy notes below, it probably is the next script that 
is hanging, not this one. (I can't tell from what you write below, but 
does the cursor advance to the next line after "Done"?)

2. I believe FC4 keeps its init scripts in /etc/init.d . Have you grep'd 
"jstarrc" in that directory? More basically, have you grep'd "jstar"? 
For this kind of problem grep'ing is better than "looking".

3. I'm not sure where RC4 puts its runlevel symlinks (the links to init 
scripts that Debian and its derivatives put in places like /etc/rc4.d), 
  but I'd suggest you find that location (actually there will be two of 
them, one for the single-user scripts, another for the actual runlevel 
scripts -- on a stock Debian system, they are /etc/rcS.d and /etc/rc4.d) 
and use the numbering it provides to deduce which script is involved.

4. Not to quibble, but your problem is not a boot failure; it is an init 
failure. What happens after the (apparent) hang? Do you always give up 
and reboot? How long do you wait (try at least 5 minutes, if you haven't 
already ... it may be some wacky DNS thing, and they normally time out 
after 3 minutes)? Does hitting ^C have any effect? Since you say "I've 
looked at every config, init, and rc file and directory I can think of", 
you must have *some* way of getting past this stoppage. What is it?

joy merwin monteiro wrote:
> it must be finding jstarrc _somewhere_, otherwise it
> would have complained. did you try setting the default
> runlevel to someother value( like 1) and booting ?
> it may not be about processing jstarrc, but something
> after that. you never know.
> 
> all bootup scripts should be in /etc/init.d/
> try grepping for jstarrc there. you can probably
> see what is getting executed after 'processing jstarrc'.
> 
> On 10/12/06, Jim Reimer <jdr@wa5rrh.us> wrote:
> 
>> As of today, my FC4 machine is not booting.  The last thing on the 
>> screen during boot is
>>
>> Processing `etc/joe/jstarrc`...Done
>>
>> jstar is the default editor on the system, and the "Processing" line 
>> on the screen follows
>> lm_sensors, automount, nifd, and mDNSResponder.  Also, curiously, it 
>> says twice that it's
>> processing the jstarrc file.
>>
>> Can't find where jstarrc is run during boot, so I have no idea what 
>> should be happening
>> next.  I've looked at every config, init, and rc file and directory I 
>> can think of, and
>> I'm drawing a blank.
>>
>> Where do I look?
>>
>> -- 
>> -jdr-
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
