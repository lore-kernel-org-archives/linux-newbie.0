From: Ray Olszewski <ray@comarre.com>
Subject: Re: ssh or samba causing network problems?
Date: Wed, 12 Mar 2003 10:23:12 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030312095320.01fb24c0@celine>
References: <200303121041.AA650576096@kallay.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303121041.AA650576096@kallay.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Yoni@kallay.net, linux-newbie@vger.kernel.org

OK. The symptom that was described to you is "something creating so much 
network traffic as to bring the network down". You ask: "if there is some 
possibility that [your Linux] computer is responsible for the network 
problems". Well, of course there is *some* possibility that it is the cause 
... there is "some" possibility, after all, that the movie _The Matrix_ was 
a documentary.

But is there a plausible case to be made for your host causing the problem? 
There are certainly hardware-level problems (like a faulty NIC) that could 
be to blame ... your host is about as likely as any other host on the LAN 
to have those kinds of problems.

SMB problems? Perhaps, with "Auto" (though I haven't seen any problems 
here) but surely not with "No", in the settings you describe.

ssh problems? Unless your school has an extraordinarily fast external 
connection, no offsite traffic should be *directly* able to flood a LAN. 
Even remote X access is limited by the speed of the external line.

Other problems? Of course, potentially ... what distro/version do you use, 
and do you keep up with security updates of all the apps you run? Without 
knowing the answers to those questions (and a bunch of others about the 
nature of the LAN and Internet connection, the physical security of your 
system, just what services you are running ... and a more coherent 
description of the LAN problem that is actually occurring), I would not 
venture an opinion about the security of your (or any) host.

In fairness to your school's sysadmin, I do have to disagree with your last 
comment: "Obviously, on a well-run network this would not be an issue, but 
this is sort of situation where anything that is unfamiliar is 
automatically suspected. " Speaking as a one-time sysadmin, this is not 
"obvious" at all. Each system added to a LAN increases the sysadmin's 
workload, as well as the requirement for expertise. When I was a sysadmin, 
on a site that was mostly Macs plus a few Linux servers, I had to explain 
to people that I lacked the expertise to support addition of Netware and 
Windows hosts to the LAN. (Some were added anyway, and they caused problems 
until I learned how to admin them ... in my "spare" time, of course, and 
with no time or budget for real training.)

If your school (and district) are typical of the ones I've known, your 
sysadmin (and thr district's) is underpaid, overworked, and regularly asked 
to do things he hasn't been trained to do. Name calling won't change this; 
training and other help will (or at least might). If you want the 
sysadmin's support for hooking up your own Linux host to the LAN he is 
responsible for, you might do better to offer to help him track down the 
real source of his network problem. Or just take the Linux host offline for 
awhile, and if the problem doesn't go away, suggest to him (politely) that 
this indicates that your host did not cause the problem.

BTW, if the sysadmin (or anyone with access to the equipment closet and the 
authority to troubleshoot) is actually present when one of these traffic 
floods occurs, isolating the host involved is often not a problem. Just go 
to the switch or hub, and disconnect ports one by one until the problem 
stops (or the traffic level drops, which you can usually judge from 
front-panel lights). This won't pin down all culprits ... if the problem is 
in a the switch itself, for example, this approach won't isolate it ... but 
it is an easy way to isolate many problems and requires no special 
expertise to implement.

At 10:41 AM 3/12/2003 -0700, Yoni Kallay wrote:
>Hi all,
>   I was just asked by the "system administrator" at the school where I 
> work to take down my Linux box and I'm looking for vindication:
>
>   I put the words "system administrator" in quotes because the man 
> unfortunately isn't even given the authority to create NT trust accounts 
> for our NT domain- anything that involves real sysadmin is run centrally 
> (and, of course, incompetently) by the school district.  We've been 
> having all sorts of network problems at our location, and after months of 
> troubleshooting someone noticed a non-Windows, non-school-supplied 
> machine running on the network, which allegedly violates some rules (it 
> would be pointless to bring up that there is no money for me to be given 
> a computer, so if I want one at school I have to bring it in 
> myself).  What I wonder, though, is if there is some possibility that the 
> computer is responsible for the network problems, which was just 
> described to me as 'something creating so much network traffic as to 
> bring the network down.'  First, the machine had been running Samba.  The 
> smbd settings relating to the machine acting as a Primary Domain 
> Controller were all set to either Auto or No.  I did notice, though, that 
> one time that the network went down the nmbd process was using up a lot 
> of processor time.  Is it possible that the machine was forcing domain 
> controller elections and thus overloading the network?  Second, I've been 
> using ssh to log in to my machine at home, (using an X client only on 
> extremely rare occasions).  As I understand it, ssh does not generate a 
> huge amount of data, it simply requires processing power on either end 
> and should not affect the network.  Third, if there were a situation 
> where password security on my machine were compromised, could it be a 
> more dangerous tool for mischief than the Windows machines?  It hasn't 
> been running any telnet or ssh daemons, although it has been running the 
> exim MTA.  Obviously, on a well-run network this would not be an issue, 
> but this is sort of situation where anything that is unfamiliar is 
> automatically suspected.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
