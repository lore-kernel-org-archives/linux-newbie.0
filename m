From: Ray Olszewski <ray@comarre.com>
Subject: Re: Wireless Mouse/ USB selection
Date: Fri, 18 Jun 2004 18:47:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040618182441.01f02898@celine>
References: <200406180719.43075.pa3gcu@zeelandnet.nl> <20040619005813.67483.qmail@web14812.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040619005813.67483.qmail@web14812.mail.yahoo.com>
References: <200406180719.43075.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: LinuxNewbie <linux-newbie@vger.kernel.org>

I'm afraid I missed the initial message in this thread, but from your 
response here (quoted below), it appears that you have a mouse on your Vaio 
but no not know what OS device it connects to. The hardware is some sort of 
wireless connection, I presume from what you wrote one that is built into 
the Vaio (not a separate receiver that plugs into some port on the Vaio).

My first guess is that you have what looks like a PS/2 mouse to the Vaio 
hardware. (Your "red light" comment makes me think it is actually an IR 
device... but we care little about what the physical arrangement is, more 
what the BIOS sees it as.) In that case, you probably want to use 
/dev/psaux to connect to. I say "probably" because Linux distros do vary a 
bit in how they handle devices, especially in that some use "devfs" to 
customize devices while others use the older, plain-Jane /dev filesystem.

If not ... I suppose there is a remote chance that this mouse actually uses 
an irda interface. I've never run into one of those, but perhaps someone 
else here has. Or there is a remote chance that the BIOS sees a built in 
irda port as on the USB bus, so you might try that, since you say you 
"think" you did that before.

Finally ... your continued use of "/dev/tty0" instead of the correct 
"/dev/ttyS0" makes me wonder if you have checked that part of the setup. I 
think that irda ports on laptops do sometimes look (to the BIOS) like 
serial ports, suggesting that either /dev/ttyS0 (=COM1) or /dev/ttyS1 
(=COM2) is the correct device to use. And, of course, Richard was quite 
corret in saying that ttyS0, not tty0, is the correct device designator.

One other thing to check is if you have a device called /dev/mouse. If you 
do, it is almost surely a symlink to whatever actual device you originally 
configured the system to use.

Last thought: At least in the fragments here, you do not tell us what "not 
works" means. Does the mouse fail in X or on a console (using gpm, for 
example)? Does it not work at all, work erratically, or what?

And is "mouse.conf" a file peculiar to Makdrake (or to the family of 
rpm-based distros), or is it a configuration file for some particular 
application? (I don't seem to have any corresponding file on my Debian 
systems.)

At 05:58 PM 6/18/2004 -0700, Steven Ackerman wrote:
>Please see inline comments:
>
>--- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> > > I have just installed Mandrake 9.1. I chose tty0
> > > (com1?
>
> > I am sure you mean /dev/ttyS0 not /dev/tty0
>
>I guess so. Whatever it was doesn't really matter. It
>wasn't right. I believe it was the linux equivelant of
>Com port 1. You would probably know better than I.
> >
> > > I have installed M9.1 previously and I believe
> > that I chose
> > > USB mouse during the installation.
>
>Whatever it was that I chose the first time, when I
>used the same installation media, worked. Sorry, I
>can't remember what it was.
> >
> > It depends on where your mouse is actualy connected
> > too and quite possably
> > what type of mouse it is.
>
>My mouse is not connected to anything. I believe it
>uses radio waves. I do not know what recieves whatever
>it is that it uses. The mouse came with the machine
>which is a Sony Vaio PCV-V100G. Before everyone pukes,
>as I did, please let me state. I have had this machine
>with it's stupid vaio mouse working before. The mouse
>says "Vaio" on it. It's wireless. Red light emanates
>from the bottom of what would typically be the scroll
>ball on the bottom of a "regular" mouse. I hope that
>helps.
>
> >
> > >
> > > I need to change this and don't know how. I looked
> > at
> > > tldp.org and didn't find anything. It was somewhat
> > > cumbersome using entirely the keyboard anyway.
> > > Hopefully someone can help.
> >
> > USB mice do not  normally connect to a seriel port,
> > they connect to a USB
> > port, some USB mice can even be connected to a PS2
> > port when a USB to PS2
> > plug is used.
> >
> > Not knowing what type of mouse you have and or where
> > it needs to be connected
> > one cannot really comment, on top of all that one
> > needs to know which
> > protocol it uses as well because it all depends on
> > where its connected.
>
>Sorry. I didn't need to know all that when I installed
>the first time. And I don't recall choosing an option
>that fit my mouse. My mouse is not USB, but I thought
>I chose it and had it working with that option. My
>mouse is wireless. What protocol it uses, I have no
>clue. I didn't even know a mouse would use a protocol.
>Anyway. I hope this might clarify some things and let
>you know where I'm at and what I do and don't know
>about the problem. I did find the mouse.conf file and
>notice the entry in there for tty0 ( I believe it was
>/dev/tty0). But that doesn't help someone who doesn't
>know what entry to put in it for their mouse. Hence
>the message to the list.
>
>Thanks. Let me know if there's something more I can
>explain or do. If not, I'll keep looking for other
>resources.
>
>Thanks again.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
