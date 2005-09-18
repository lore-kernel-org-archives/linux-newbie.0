From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: understanding netstat -ap
Date: Sun, 18 Sep 2005 02:07:51 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0509180206570.10282-100000@treebeard.engin.umich.edu>
References: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0509180129530.10191-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

actually, it was netstat -al, sorry. 

On Sun, 18 Sep 2005, at 02:02, Karthik Vishwanath wrote to linux-newbie@vge...:

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
> 
> 
> Must I reinstall the , to feel "safe"? 
> 
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
> 
> 
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

--------------
Seven Social Sins (M. K. Gandhi, Young India, 22-10-1925):
Politics without Principle; Wealth Without Work; Pleasure Without Conscience;
Knowledge without Character; Commerce without Morality; Science without Humanity;
Worship without Sacrifice

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
