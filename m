From: Chuck Gelm <Chuck@Gelm.net>
Subject: FedoraCore5: dhcpcd -d eth0 ?
Date: Sat, 25 Nov 2006 14:49:19 -0500
Message-ID: <45689E3F.20001@Gelm.net>
References: <20061102200743.GB1570@lnx2.kvinet.com> <bb529e40611030437yc2b0029k55367a72d8bc2473@mail.gmail.com> <20061105150324.GA1138@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061105150324.GA1138@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Howdy:

 I am trying out K12LTSP and its distribution is Fedora Core 5.

How do I ask 'eth0' to try to obtain an IP address via DHCP?

dhcpcd -d eth0
-bash command not found: dhcpcd

IIRC RedHat uses a network command 'ifup', so I...
man ifup
No manual page for ifup.

After running, 'netconfig', how do I ask FC5 to restart networking ?
(In Slackware it would be '/etc/rc.d/rc.inetd restart')
(other than rebooting ;-)

Regards, Chuck






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
