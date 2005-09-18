From: Ray Olszewski <ray@comarre.com>
Subject: Re: understanding netstat -ap
Date: Sun, 18 Sep 2005 07:59:09 -0700
Message-ID: <432D80BD.80403@comarre.com>
References: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> As reported previously (Friday 12 August 2005, thread:  
> programs/daemons/PIDs using the network), I happened to notice a lot of
> activity on the ethernet applet on my desktop. Here are lines that I
> thought looked most strange from the output of netstat -ap. What do they
> mean? For instance, does the line (from output below) 
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:51222 
> ESTABLISHED 
> 
> mean that someone (?) had an ssh session into this machine? 

Yes. Probably some one from IP address 61.218.77.13 ... but to be sure 
of that, use netatat with the -n switch.

> last -adi does not show any untoward activity, however /var/log/auth.log 
> has a whole horde of entries like: 
> 
> Sep 16 21:16:56 mithrandir sshd[16946]: Illegal user a from 64.91.253.157
> Sep 16 21:16:57 mithrandir sshd[16946]: error: Could not get shadow 
> information for NOUSER
> Sep 16 21:16:57 mithrandir sshd[16946]: Failed password for illegal user a 
> from 64.91.253.157 
>  port 60348 ssh2
> Sep 16 21:16:57 mithrandir sshd[16948]: Illegal user b from 64.91.253.157
> Sep 16 21:16:57 mithrandir sshd[16948]: error: Could not get shadow 
> information for NOUSER
> Sep 16 21:16:57 mithrandir sshd[16948]: Failed password for illegal user b 
> from 64.91.253.157
>  port 60369 ssh2

This records a failed login attempt. Actually, two different ones (or 
maybe the same one trying to authenticate twice; depends on how you have 
sshd set up) from the same IP address.

> 
> Must I reinstall the , to feel "safe"? 

Huh? Reinstall "the" what?

In general, anyone trying to tell you what to do to "feel" safe is 
saying more than is possible for relative strangers like us.

But to *be* safe, I'd suggest you do the following:

1. Figure out how connections from external IP addresses are getting to 
a private-interface address at all. Decide if there is a good reason for 
having this access. If not, eliminate it (probably at your router, but I 
don't know enough about your setup to be sure).

2. If you do need this access, make sure it is secure by
	A. limiting it to reasonably safe services and their ports. ssh 
qualifies as reasonably safe, for example, while telnet does not.
	B. seeing to it that all accounts on the system have strong password.

3. Make sure you are applying security updates regularly and promptly. 
(I forget what distro you use, but most have decent support for security 
udating of their own packages these days.)

4. If this system does have direct access to the Internet somehow 
(despite its using a private address, I mean), use iptables (or its 
2.6.x equivalent) to create a good firewall on the system.

It seems that you are the victim of **attempted** breakins. I don't see 
any indication in what you posted (with one possible exception; see 
below) of a **successful** breakin. A successsful breakin would, of 
course, call for an OS-plus-applications reinstall.

> Thanks, regards and sorry for the long post. 
> 
> -K
> 
> --------------------------------------
> # netstat -ap
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50481 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49720 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:50266 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49175 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:51222 
> ESTABLISHED
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:49928 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50040 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50811 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49506 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:50706 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:51029 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:48933 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:50373 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:51135 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49824 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50584 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49281 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:49394 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:35283       galaxian.gpcc.itd.u:ssh 
> ESTABLISHED
> tcp        0      0 192.168.0.3:ssh         adsl-220-228-117-:49053 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50150 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:50921 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:48832 
> TIME_WAIT  
> tcp        0      0 192.168.0.3:ssh         61-218-77-13.HINE:49615 
> TIME_WAIT  
> udp        0      0 192.168.0.3:netbios-ns  *:*                                
> udp        0      0 *:netbios-ns            *:*                                
> udp        0      0 *:discard               *:*                                
> udp        0      0 192.168.0.3:netbios-dgm *:*                                
> udp        0      0 *:netbios-dgm           *:*                                
> udp        0      0 192.168.0.3:32841       ns.cmc.co.denver:domain 
> ESTABLISHED
> udp        0      0 *:sunrpc                *:*                                

This looks to me like someone (or maybe 2 someones, since there are 2 
source addresses) is making a bunch of ssh connections and trying to 
find a userid/password combo that will work. Note that all but 1 of the 
ssh entries is status TIME_WAIT, which in practice means they are 
terminated connections that have not timed out on your system yet. But 
compare these addresses/ports to your logs to be sure of what happened.

The other ESTABLISHED connection is an *outgoing* ssh connection. If you 
don't know what that one it, then I suggest you do need to worry about a 
successful penetration having occurred.

BTW, the 61-218-77-13 address is a dialup IP address in Taiwan. The 
other one is incomplete (try using the -n option) so I cannot check it 
for sure, but 220-228-117-0 also is from Taiwan (probably a DSL block, 
judging from the "adsl" in the name).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
