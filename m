From: Jim Reimer <jdr@wa5rrh.us>
Subject: Re: Sequence of events at init (was boot)
Date: Thu, 12 Oct 2006 17:15:53 -0500
Message-ID: <116946366609.20061012171553@wa5rrh.us>
Reply-To: Jim Reimer <jdr@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

> OK. Jim, I don't use Fedora, but there are a few basic thoughts that
> might help anyway.

> 1. That the line you quote ends with "Done" makes me suspect that it is
> not the problem. As Joy notes below, it probably is the next script that
> is hanging, not this one. (I can't tell from what you write below, but
> does the cursor advance to the next line after "Done"?)

Cursor is on the next line.

> 2. I believe FC4 keeps its init scripts in /etc/init.d . Have you grep'd
> "jstarrc" in that directory? More basically, have you grep'd "jstar"?
> For this kind of problem grep'ing is better than "looking".

"grep -iR jstar *" while in /etc shows no occurances of jstarrc.

> 3. I'm not sure where RC4 puts its runlevel symlinks (the links to init
> scripts that Debian and its derivatives put in places like /etc/rc4.d),
>   but I'd suggest you find that location (actually there will be two of
> them, one for the single-user scripts, another for the actual runlevel
> scripts -- on a stock Debian system, they are /etc/rcS.d and /etc/rc4.d)
> and use the numbering it provides to deduce which script is involved.

FC4 uses the typical /etc/rc* heirarchy.  grepping as above shows nothing.

> 4. Not to quibble, but your problem is not a boot failure; it is an init
> failure. What happens after the (apparent) hang? Do you always give up
> and reboot? How long do you wait (try at least 5 minutes, if you haven't
> already ... it may be some wacky DNS thing, and they normally time out
> after 3 minutes)? Does hitting ^C have any effect? Since you say "I've
> looked at every config, init, and rc file and directory I can think of",
> you must have *some* way of getting past this stoppage. What is it?

When I came home from work yesterday, the box had been sitting there for
about seven hours saying jstarrc was done (power had gone off).

^C has no effect, CTRL-ALT-DEL does.  I'm using a rescue disk to get in
and look around.

Booting runlevel 1 gets no further than 3 does:

Calling the system activity data collector (sacdc):
Starting cpuspeed:                                        [  OK  ]
Telling INIT to go to single user mode.
INIT: Going single user
INIT: Sending processes the TERM signal
Processing '/etc/joe/jstarrc'...done
Processing '/etc/joe/jstarrc'...done
<cursor>

Just for the heck of it, there's a picture of the screen when I try to
start runlevel 3 at http://wa5rrh.us/init-hang.gif

> joy merwin monteiro wrote:
>> it must be finding jstarrc _somewhere_, otherwise it
>> would have complained. did you try setting the default
>> runlevel to someother value( like 1) and booting ?
>> it may not be about processing jstarrc, but something
>> after that. you never know.
>> 
>> all bootup scripts should be in /etc/init.d/
>> try grepping for jstarrc there. you can probably
>> see what is getting executed after 'processing jstarrc'.
>> 
>> On 10/12/06, Jim Reimer <jdr@wa5rrh.us> wrote:
>> 
>>> As of today, my FC4 machine is not booting.  The last thing on the
>>> screen during boot is
>>>
>>> Processing `etc/joe/jstarrc`...Done
>>>
>>> jstar is the default editor on the system, and the "Processing" line
>>> on the screen follows
>>> lm_sensors, automount, nifd, and mDNSResponder.  Also, curiously, it
>>> says twice that it's
>>> processing the jstarrc file.
>>>
>>> Can't find where jstarrc is run during boot, so I have no idea what
>>> should be happening
>>> next.  I've looked at every config, init, and rc file and directory I
>>> can think of, and
>>> I'm drawing a blank.
>>>
>>> Where do I look?
>>>
>>> -- 
>>> -jdr-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
