From: Petre Bandac <g38@rdsbv.ro>
Subject: Fwd: mac-ip pairs
Date: Fri, 20 Jun 2003 10:17:22 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306201017.22868.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

hello

I have a small problem:

a network (something about half of a C class IPs) and some users who I'd like
to "stick" them to only one IP; half of the computers get their IPs via dhcp,
the others are fixed.

I was thinking of mixing arp -f /etc/ethers with some iptables rules, but the
question which arises is if I "stick" the mac on the ip, or the ip on the
mac, i.e. if the mac X is tied to the IP Y, will the mac X be able to have
the IP Z (since the IP Y won't allow itself to another ethernet)

hope I'm not too ambiguous,

thanks,

petre


--
Login: petre          			Name: Petre Bandac
Directory: /home/petre              	Shell: /usr/local/bin/zsh
On since Fri Jun  6 13:27 (EEST) on ttyv0, idle 16:52 (messages off)
Last login Tue Jun 17 09:21 (EEST) on ttyp6 from ns.rdsbv.ro
No Mail.
No Plan.

-------------------------------------------------------

-- 
10:17AM  up 13 days, 20:51, 2 users, load averages: 0.69, 0.38, 0.19

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
