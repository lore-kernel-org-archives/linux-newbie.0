From: Ray Olszewski <ray@comarre.com>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Mon, 14 Jun 2004 09:35:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040614084449.01ff4bf0@celine>
References: <5.1.0.14.1.20040612204315.02004830@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine> <Pine.LNX.4.58.0406140841070.1071@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406140841070.1071@debian-emach>
References: <5.1.0.14.1.20040612204315.02004830@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Replies interspersed.

If there are any other Debian users on this list, especially ones who use 
pre-compiled kernels (kernel-image-* packages), their help at this point 
would be ... well, helpful.

At 10:01 AM 6/14/2004 -0500, James Miller wrote:
>On Sat, 12 Jun 2004, Ray Olszewski wrote:
>
> > At 05:36 PM 6/12/2004 -0500, James Miller wrote:
> > >Well, I took your advice and dist-upgraded Ray.  Now I know why I was not
> > >very anxious to do it :).  A problem occured with kernel modules during
> > >the dist-upgrade.  <snip>
> >
> > OK. This general description is pretty hard to follow. I imagine you were
> > pretty upset when you wrote it. If you want help with the general problem
> > you experienced, you'll need to repost a more exact description.
>
>I dunno about upset, but tech burnout maybe?  Well, let me try to add a
>few things, even though I don't make any claims to exactness with it.

My reading your prior report as written while you were upset stemmed from 
two things.

First, it was a single long, hard-to-parse paragraph. Not your usual style 
(or I thought not so). Since the following paragraph is also long and hard 
(for me, at least)  to read, I may just have misremembered your writing style.

Second, it included a lot of "something like" references to things. You've 
posted here often enough to know that descriptions that imprecise are 
unlikely to elicit good advice.

So I inferred that you were largely expressing frustration ... 
understandable given the difficulties you are encountering, but nonetheless 
needing a followup with better reporting.

>This dist-upgrade involved installing a new kernel, as you may recall.
>With the new kernel come new modules, right?  Beyond this, I'd have to
>just guess how things work, but my guess is that the system needs to be
>told or figure out somehow which of the new modules the system is using so
>that these can be loaded when the machine boots with the new kernel too.
>Doesn't this make some sense (bearing in mind that not everything that
>makes sense is always true, of course)?

Yes.

>That's sort of a deduction from
>the error message I got during the dist-upgrade (you get various dialogues
>asking you questions and sometimes informational or error messages from
>apt, as you surely know, right?) involving kernel modules and the little
>bit I know about the way the Linux system operates.

You saw this message. I did not, and you didn't describe it in enough 
detail to let be guess what it said.

>Somehow a
>configuration involving kernel modules couldn't complete during
>dist-upgrade, and I was warned I'd need to reboot for it to complete.  I
>didn't write anything down, so I'm recalling this from memory.

But you're not recalling enough. Perhaps if you did a "dpkg-reconfigure" 
for the relevant package, it would either fix the problem or at least 
display the error again, so you could write it down.

>But maybe
>there's some sort of hardware autodetection that's supposed to take care
>of this module configuration?

Dream on. Among the big-name Linux distros, Debian is absolutely the worst 
about autodetect. It has no real autodetect capability. all I can be in 
that regard is the bearer of bad news.

>How 'bout some help here, Ray?  I honestly
>don't know how this all works: too many possibilities for my rather
>unlearned mind to work it out.  I'm hoping that, based on the sketchy
>information I can give, someone with a much better understanding of these
>matters is going to be able to spot some problem, or potential problem,
>and be able to make some suggestions.

I hope so too. But that someone isn't me ... I can help you interpret the 
error messages youget, but only if I get to see them, not "something like" 
them. Possibly someone who has more experience with pre-compile Debian 
kernels can spot your problem at a glance, and I hope such a person jumps 
into this thread.

In the meantime, I'm trying to give the more limited help I can offer. 
Remember that the only situations in which I actually use stock kernels is 
right after an install. At that point, if I'm using a NIC that requires one 
or more modules (I usually avoid this), I see that the installer *has* put 
the names of any needed modules in /etc/modules .

So ...

Is it possible that your kernel upgrade overwrote an /etc/modules file? 
(Are there other entries in the file, ones that you added by hand?)

Is it possible that 2.6.x kernels do module loading in some different way 
(you won't know this, but someone else on the list might)?

Is it possible that stock kernels use initrd in some way that hides NIC 
module loading in the initrd image? (What does /etc/lilo.conf say about 
initrd?)

>This much does seem clear to me:
>there was an error message involving kernel modules during dist-upgrade,
>and upon rebooting (the initial boot with the new kernel failed owing to a
>minor error I put in lilo.conf), sure enough, some important modules are
>not getting loaded (e.g., my NIC module[s]).  Does that additional
>information help?  Please feel free to ask further questions: I really am
>not certain exactly what information is needed since I poorly understand
>the problem.  I'm taking a sort of "scatter gun approach" and recounting
>everything, in broad terms, that seems relevant to me.
>
> > But the immediate problem is getting the NIC module(s) to load during
> > boot/init . To accomplish that, add the name(s) of the module(s) to
> > /etc/modules . One of the init scripts (I forget which one) will modprobe
> > every module in /etc/modules, in the order in which they appear there.
>
>I do know about /etc/modules and have added things there before.  However
>there is currently no module for my NIC indicated there, and there never
>has been.  Yet somehow previously that NIC module(s) was getting loaded.
>This suggests to me that there is some other problem: something got
>changed that used to load the NIC modules by, apparently, some other means
>than /etc/modules.  Shouldn't I be trying to restore whatever got changed?

Of course you should. But wouldn't you prefer to have a working system in 
the meantime? This suggestion is a quick fix, intended to keep things 
working until you solve the underlying problem.

The problem I have here, trying to give you advice, is that I have no 
experience doing what you do ... that is, using stock kernels. After the 
initial install of the kernel from the install disks, I *always* compile my 
own kernel. So I've spent no time figuring out how Debian stock kernels 
handle modules.

The solution, for **example**, may be buried in how stock kernels use the 
initrd mechanism (something my custom kernels don't do at all). On this 
score, your passing reference to making, then fixing a lilo error gets my 
attention ... might you have bypassed the initrd mechanism when you "fixed" 
lilo.conf? Just a wild guess, though.

On top of that, you've never even mentioned what NIC and what (until you 
provided the output below) what modules are involved. So I didn't know if 
multiple dependencies might be an issue (they don't appear to be ... though 
the relevant -- NIC-related -- output of "ifconfig -a" and "lspci" would 
make me more confident of that call).

Until someone come along who has relevant experience, the solution I've 
suggested will serve as a temporary workaround.

BTW, I don't recognize "sit0" either, but from the output you posted, it 
does not appear relevant to your immediate problem. If you are curious 
about it, see what "ifconfig -a" tells you about it.


> > The problem you are encountering **may** be an outdated or incomplete
> > listing of module dependencies. If you modprobe'd each invidivually and in
> > the right order, you simply bypassed this problem in your hand install. The
> > way to get this cleaned up is to run "depmod -a", which will rebuild the
> > appropriate modules.dep file. The init script I referred to above -- I
> > checked and it is /etc/init.d/modutils -- is supposed to do this for you
> > during init.
>
>The only modprobing I did was for NIC modules - this because I had no 'net
>connection when the machine booted up (that holds for all 3 kernels I
>tried booting with: 2.4.22; 2.6.5 and 2.6.6).

Oh. I thought you'd said before that 2.4.22 still worked properly. I 
misunderstood, I guess. If you are completely certain that /etc/modules 
never included the names of the NIC modules, then I'd definitely suggest 
reviewing /etc/lilo.conf to see if you introduced an initrd problem.

>Once I modprobed the
>modules I had identified (with the help of Knoppix) as being associated
>with my NIC and issued ifup -a, I got an IP offer from my DHCP server and
>was online.  There were some entries in the resulting text that I had
>never seen before (reference to "sit0") so I'll append that below.
>Anyway, I've just tried tried depmod -a and then rebooted the machine but
>the NIC modules still seem not to get auto-loaded on boot: I have no 'net
>connection when the system finishes booting.  Previously (previous to the
>dist-upgrade I did a couple of days ago) when I would boot the machine the
>NIC was brought up during boot, despite the fact that no entries in
>/etc/modules were specifying NIC modules at that time.  So, I understand
>that I can probably get those modules to load by adding them to
>/etc/modules, but it seems to me better to try and determine why they were
>"autoloading" before, but are not now.  Think I should add those modules
>to /etc/modules anyway?

Yes. See above.


>I apologize if this is not as coherent as you'd like.  I do not fully
>understand how the system works and thus what the problem could be - which
>is why I'm asking for help here.  Any incoherency has probably much to do
>with my poor understanding of the matters with which I'm dealing.  I'm
>sorry, but I just can't change that overnight.

Bottom line: I think you need help from someone who routinely uses 
pre-compiled Debian kernels. I hope there is someone like that on this 
list, someone who will jump in now and fill the gaps I've left in my advice.


>James
>
>----------BEGIN IFUP -A OUTPUT----------------------------------------
>[09:20:59]root@computer$ modprobe 8139too
>[09:21:10]root@computer$ modprobe mii
>[09:21:17]root@computer$ modprobe crc32
>[09:21:27]root@computer$ ifup -a
>ifup: interface lo already configured
>Internet Software Consortium DHCP Client 2.0pl5
>Copyright 1995, 1996, 1997, 1998, 1999 The Internet Software Consortium.
>All rights reserved.
>
>Please contribute if you find this software useful.
>For info, please visit http://www.isc.org/dhcp-contrib.html
>
>sit0: unknown hardware address type 776
>sit0: unknown hardware address type 776
>Listening on LPF/eth0/00:e0:4c:82:a1:53
>Sending on   LPF/eth0/00:e0:4c:82:a1:53
>Sending on   Socket/fallback/fallback-net
>DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 3
>DHCPOFFER from 192.168.1.1
>DHCPREQUEST on eth0 to 255.255.255.255 port 67
>DHCPACK from 192.168.1.1
>bound to 192.168.1.13 -- renewal in 302400 seconds.
>----------------END IFUP -A OUTPUT--------------------------------





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
