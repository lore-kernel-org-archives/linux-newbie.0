From: Ray Olszewski <ray@comarre.com>
Subject: Re: SSH and Monitor failure
Date: Sun, 27 Feb 2005 15:38:56 -0800
Message-ID: <5.1.0.14.1.20050227145925.0c5fed00@celine>
References: <200502251328.04753.derek@disposable.dnsalias.org>
 <200502241917.45547.sotl155360@earthlink.net>
 <200502250737.38663.sotl155360@earthlink.net>
 <200502251328.04753.derek@disposable.dnsalias.org> <200502271747.11731.sotl155360@earthlink.net>
Mime-Version: 1.0
In-Reply-To: <200502271747.11731.sotl155360@earthlink.net>
References: <200502251328.04753.derek@disposable.dnsalias.org>
 <200502241917.45547.sotl155360@earthlink.net>
 <200502250737.38663.sotl155360@earthlink.net>
 <200502251328.04753.derek@disposable.dnsalias.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This is a bit confusing, Frank. Let's see if I'm following you. Comments, 
including some questions,  interspersed. I suspect you'll have to correct 
some misunderstandings on my part ... but if I knew which ones, then I 
wouldn't be misunderstanding you.

At 05:47 PM 2/27/2005 -0500, SOTL wrote:
>Hi All
>
>Help !!!!!!!!!!!!!
>
>Sorry for screaming but I do feel a bit better now.
>
>I have a small network with 3 computers which mostly does not work:

All the problems you describe below ... other than name resolution ... are 
specific to one host. In what sense is it that the *network* "mostly does 
not work"?

>MSI with name of Reality_Check @ 192.168.2.7 with Mandrake 10.1
>HP with name Meatloaf_Night @ 192.168.2.9 with Mandrake 9.2
>IBM with name Big_Nate @ 192.168.2.2 with Mandrake 10.1
>
>I do not have the ability to install 10.1 on the HP with out replacing the CD
>reader with a DVD reader.
>
> >From any one box I can ping either [or both at the same time] of the 
> other two
>boxes. For example from the IBM box I can ping MSI by using 192.168.2.7
>and/or HP by using 192.168.2.9.
>
>I can not ping either of the other boxes by using names. For example I can 
>not
>ping MSI or HP by using the names Reality_Check or Meatloaf_Night nor can I
>ping the IBM box from either MSI or HP using Big_Nate.
>
>So, numbers work; names do not work. I believe this issue will be solved when
>I configure /etc/hosts or my firewall router so for this posting that issue
>is not relevant.

Close. You need to configure either /etc/hosts on all 3 machines, or 
provide some sort of DNS server the covers LAN hosts. That second solution 
might be implementable on your firewall/router ... but it also could be 
done on any host that has a DNS daemon available (meaning any Linux host, 
and maybe other OSs).

>I was able to access the MSI box from both the HP box and the IBM box by 
>using
>the following:
>fish://username@ip_address/path/to/directory
>or fish://trunk@192.168.2.7
>
>After performing the above plus actions I departed and returned.

I infer from context that fish is an ssh client somehow associated with 
KDE, but it is one I am unfamiliar with. Do you have some reason for 
preferring it to the more widely used ssh client?

>Firing up all 3 computers the 2 which I was not able to access by fish 
>came up
>normal and functioned normal.

What does "firing up" mean? Do you mean you rebooted the systems? Had you 
previously shut them down? If so, did you do so properly (using either 
"shutdown" or "halt" to do so)?

>The MSi box which I was able to access by fish came up with video up to 3/4
>way through KDE boot at which time it lost video and maybe key and mouse too
>as they did not appear to be functioning either.

"did not appear to be" connotes uncertainty on your part. How did you test 
this? In particular, did you try to switch from the X display to a VT (most 
likely by pressing CTRL-ALT-F1)?

And "3/4 way through KDE boot" doesn't convey much to me. What is the last 
thing the system does before you lose video? If this is happening as part 
of boot/init, surely the display is providing some login prompt ... xdm or 
gdm or something ... not a KDE desktop. No?

Or are you talking about what happens *after* an X-based login? (If so, 
referring to the process as "KDE boot" is a bit confusing.

>I shut the box down by turning power off [bad practice] since I appear to 
>have
>no control of box.

Now I'm confused. Were you able to make a connection by fish or not?

If you were able to, then you didn't "have no control of box". You had the 
ability to su to root via the ssh session and do a command-line reboot or 
shutdown. That would have been better then a power-cycle.

Even more usefully, you can use this ssh session to look at, and save 
somewhere safe, information on the status of the machine. Examine (and 
save) the dmesg buffer, the output of "ps ax", the output of "top" ... and 
maybe some other things I am not thinking of right now, but that's enough 
to get you started.

If you were not able to ... never mind, I just read the next 2 paragraphs 
of your message.

>I repeated the above several times with identical results.
>
>I attempted to access box by fish and was able to do so.

OK. So you have access for diagnostic purposes. See my suggestions above.

>I placed Mandrake 10.1 disk in DVD drive and did an upgrade.
>
>Booting box after upgrade I still got blank screen and most possible no mouse
>and no keyboard.
>
>My personal belief at this point is that the box is confused by my not 
>logging
>out of SSH - I saw no way to do such so I just closed Konqueror on the box I
>was SSHing from.

This is far fetched. TCP stacks normally take care of this problem quite 
nicely.

If you have a command-line ssh session, then you log out by typing ... wait 
for it ... "logout". If you are tunneling somthing else over an ssh 
connection, it would help if you told us what it is and how you are 
creating the tunnel.

>Question:
>
>How does one go about establishing why, how issue develops and how does one
>repair?

OK. Let's start with the "why, how" part.

First thing is to supply to us (or think about yourself) the background of 
this failure. How long had the system been running properly before it 
happened for the first time? Did it ever run properly with Mandrake 10.1? 
(I'd guess yes from what you wrote, but I'm not certain.) Did the failures 
start coincident with a kernel change?

Second thing is to round up the usual suspects via an ssh connection. Look 
at dmesg. Look at syslog logs (probably in /var/log, unless Mandrake does 
something unusual). Use "ps ax" to see what processes are running at the 
point when the local display (and maybe keyboard and mouse) is hung.

Third thing is to see if this is a problem specific to X. I'm not sure how 
Mandrake starts the X display during init, but the usual two ways are (a) 
through an entry in /etc/inittab and (b) through an init script (e.g., 
/etc/rc2.d/S99xdm is a symlink to /etc/init.d/xdm). Whichever it is, 
disable it and see if the system boots/inits successfully to a command-line 
prompt.

Fourth thing is to consder the possibility of a hardware failure of some 
sort. You haven't described either the hardware or just where in the init 
sequence the system fails, so I can't make specific suggestions ... but the 
two obvious sources of hardware problems are the drives and memory (or 
swap, which is sort of a combination of the two). Review hardware for 
possible problems, and ... if you want more specific help on this part ... 
describe the hardware in more details (amount of RAM, sizes and 
partitionings of drives, output of "free", output of "df", what video card 
you use) and the sapects of software most relevant to hardware (what kernel 
version; stock or custom kernel; what version of X; what X display driver).

As to "how does one repair", that of course depends on what the problem is. 
First things first; let's stay with diagnosis for now.

Hope this helps.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
