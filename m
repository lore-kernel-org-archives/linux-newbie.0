From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: ADSL connection via RHL 90
Date: Tue, 15 Feb 2005 06:07:55 -0500
Message-ID: <4211D80B.7070302@cwazy.co.uk>
References: <000c01c51336$715254f0$6510ea0a@acbi.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <000c01c51336$715254f0$6510ea0a@acbi.local>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: hr_ga.dept@acbi.co.id
Cc: 'Linux newbie list' <linux-newbie@vger.kernel.org>

GA Dept PT ACBI wrote:

> Data from /etc/sysconfig/networking/devices/ifcfg-eth0 :
> 
> DEVICE=eth0
> BOOTPROTO=none
> BROADCAST=10.234.16.255
> IPADDR=10.234.16.101
> NETMASK=255.255.255.0
> NETWORK=10.234.16.0
> ONBOOT=yes
> HWADDR=00:0c:6e:6b:4e:c2
> USERCTL=no
> PEERDNS=no
> GATEWAY=10.234.16.99
> TYPE=Ethernet
> 

Does your ISP have its own DNS servers?  If so, you might need to use dhcpcd (some 
ISPs require you to use their own DNS servers to reduce network load.)

> Yours,
> 
> 
> Frans T.
> 
> P.S. 
> Sorry for the use of bandwidth
>   
> 
> ----------------------------------------------------------------------------
> 
> This information is confidential and legally privileged. If you are not the 
> intended recipient, (i) please do not read or disclose to others, 
> (ii) please notify the sender by reply mail, and (iii) please delete this 
> communication from your system. Any review, retransmission, dissemination 
> or other use of, or taking of any action in reliance upon, this information 
> by persons or entities other than the intended recipient is prohibited.
> Thank you for your cooperation. 
> ----------------------------------------------------------------------------
> 

Might want to kill this message for mail sent to publicly-accesable mailing lists.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
