From: Ravi <ravivsn@roc.co.in>
Subject: Re: IP aliasing
Date: Thu, 19 Jun 2003 10:58:11 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EF149EB.8040108@roc.co.in>
References: <20030618140305.73398.qmail@web20512.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org, lvs-users@linuxvirtualserver.org

Hi Ravi,

       Load the IP Alias module (you can skip this step if you compiled 
the module into the kernel):

/sbin/insmod /lib/modules/`uname -r`/ipv4/ip_alias.o




Setup the loopback, eth0, and all the IP addresses beginning with the 
main IP address for the eth0 interface:

for example:

/sbin/ifconfig lo 127.0.0.1
/sbin/ifconfig eth0 up
/sbin/ifconfig eth0 172.16.3.1
/sbin/ifconfig eth0:0 172.16.3.10
/sbin/ifconfig eth0:1 172.16.3.100



Setup the routes. First route the loopback, then the net, and finally, 
the various IP addresses starting with the default (originally 
allocated) one:

/sbin/route add -net 127.0.0.0
/sbin/route add -net 172.16.3.0 dev eth0
/sbin/route add -host 172.16.3.1 dev eth0
/sbin/route add -host 172.16.3.10 dev eth0:0
/sbin/route add -host 172.16.3.100 dev eth0:1
/sbin/route add default gw 172.16.3.200


Enjoy,
Ravi

Ravi Kumar Munnangi wrote:
> I want to give more than one IP addresses to my NIC.
> For this we have to enable the feature of IP alias
> when configuring the kernel and recompile it.
> Is there any way to check if the option is already
> checked or not?
> My next question is,
>   After reconfiguring and recompiling, how can I give
> IP addresses(aliases) to NIC?
>   please tell me the commands to be used.
> 
>   Ravi kumar
> 
> __________________________________
> Do you Yahoo!?
> SBC Yahoo! DSL - Now only $29.95 per month!
> http://sbc.yahoo.com
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 


-- 


The views presented in this mail are completely mine. The company is not
responsible for whatsoever.
------------------------------------------------------------------------
Ravi Kumar CH
Rendezvous On Chip (i) Pvt Ltd
Hyderabad, India
Ph: +91-40-2335 1214 / 1175 / 1184

ROC home page <http://www.roc.co.in>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
