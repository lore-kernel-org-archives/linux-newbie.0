From: beolach@juno.com
Subject: Re:basicnetworkingqueries
Date: Fri, 1 Aug 2003 06:48:40 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030731.234851.506.623582@webmail03.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jamtat@mailsnare.net
Cc: linux-newbie@vger.kernel.org


First off I want to agree with Jeff; it might be easiest to setup
a DHCP server on your home network, and always leave your laptop as
a DHCP client.  One thing I want to add on this, is that you can
have your DHCP server reserve a specific IP address for your laptop,
using the laptop's MAC address to recognize when to assign this IP.
So effectivly, your laptop would have a static IP whenever it is on
your home network.

From what you've described, I think the way you setup the cardctl
schemes should work, but the only real way to make sure would be to
test is on a DHCP network.  A (educated?) guess about why the laptop
still worked on your home net after switching to the DHCP mode, is
that the DHCP client daemon sent out the request for an address, but
since you had no DHCP server on the network, the DHCP client didn't
change any settings, leaving you with the same working settings you
normally use on your home network.

If the cardctl schemes don't work out, another option for manually
swithing between a static IP & DHCP would be to start the DHCP
client directly.  Should be a simple command like

# /sbin/dhcpcd -t 10 -d eth0

I think the only disadvantage to this method rather than the cardctl
method is that the cardctl method works with PCMCIA, but as long as
you don't remove/insert the ethernet PC Card in the middle of stuff,
starting dhcpcd directly should work.

Good luck,
Conway S. Smith

--- James Miller <jamtat@mailsnare.net> wrote:
> 
> Ok.  More on DHCP, networking fundamentals, PCMCIA cards and so 
> forth.
> The system ref'd is a Slackware 7.1 minimal install on a 486 laptop.  
> I
> will use it most of the time at home, where I have static network
> addressing.  The card works, and the machine is successfully on my 
> network
> now.  When I need to take it away from home, though, different 
> network
> settings will need to be used - almost surely DHCP will be in use 
> where
> I'll use it away from home.  I believe what I have on this machine is
> udhcpc - some sort of trimmed-down dhcp client.  I have no idea if 
> this is
> something I need to start manually, or whether it sort of runs as 
> some
> kind of background process (ps axu |more shows no trace of it but, as 
> I
> mentioned, I use static addressing on my home network, so I wouldn't
> necessarily expect it to be visible).  Now, where to start?  As I
> understand it (from the PCMCIA how to), I set my networking options 
> in
> /etc/pcmcia/network.opts.  When I run /etc/rc.d/rc.pcmcia start , 
> values
> are read from that file to get the network connection up.  I did edit > that
> file for my home network, and it does get me connected.  But, the 
> question
> remains: how to handle those times when I am away from home and may 
> need
> to make the card connect to a DHCP network?  What I found relevant to
> this in the PCMCIA how to is something called "schemes" that enable 
> one to
> have alternate network settings for the PCMCIA card.  Here's an 
> excerpt:
> 
> ---------------BEGIN EXCERPT----------------------------------
> This is fairly easy using ``scheme'' support. Use two configuration
> schemes, called ``home'' and ``work''. Here is an example of a
> network.opts script with scheme-specific settings:
> 
> case "$ADDRESS" in
> work,*,*,*)
>     # definitions for network card in work scheme
>     ...
>     ;;
> home,*,*,*|default,*,*,*)
>     # definitions for network card in home scheme
>     ...
>     ;;
> esac
> 
> The first part of a device address is always the configuration 
> scheme. In
> this example, the second ``case'' clause will select for both the 
> ``home''
> and ``default'' schemes. So, if the scheme is unset for any reason, 
> it
> will default to the ``home'' setup.
> 
> Now, to select between the two sets of settings, run either:
> 
> cardctl scheme home
> 
> or
> 
> cardctl scheme work
> -----------------------END EXCERPT---------------------------------
> 
> Well, I got confused right off.  My network.opts file doesn't look 
> very
> similar to this: it consists of about 15 more lines with all kind of
> fields where values can be entered in - one of the fields saying 
> something
> like 'DHCP=""' - a "y" or "n" needing to follow.  I don't see how I 
> could
> use the lines given in the PCMCIA how to: they don't even have a DHCP
> option.  I decided that, what I should probably do is simply copy the
> whole scheme that appeared in the default network.opts file so that 
> the
> file would contain 2 instances of it, then rename the 2 with 
> appropriate
> "scheme" entries and edit them accordingly.  This I did.  Was I 
> right?
> The "home" scheme contains various static networking entries: the 
> address
> of the PCMCIA interface, the gateway's address, etc., and an "n" next 
> to
> the DHCP option.  In the "away" scheme (as I called the second 
> scheme),
> all fields I left blank except the one next to DHCP, which of course 
> has a
> "y".  Does this sound right?  I'm not entirely sure how to go about
> testing this, except to take the laptop to a place where I'll use it 
> that
> has DHCP and run the cardctl scheme away command from the command 
> line.
> One thing that's got me confused is that I tried running the cardctl
> scheme away command on my network at home, expecting that I wouldn't 
> get a
> working network connection: however, it did connect to the LAN and I 
> was
> able to use the 'net connection.  I use Freesco router to route the 
> 'net
> connection and LAN traffic and, so far as I know, I've disabled DHCP > on
> it.  So, why was I able to get on the LAN with the DHCP scheme?  
> ifconfig
> shows that, on the home network, regardless of whether the "home" or
> "away" schemes are chosen, eth0 is getting assigned the same address.
> 
> Input on this anyone?  I hope it's more comprehensible to someone 
> reading
> it than it was to me while writing it: I think I'm still a bit lost.
> 
> James
> 


________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
