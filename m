From: Ray Olszewski <ray@comarre.com>
Subject: Re: Networking issue
Date: Thu, 02 Jan 2003 08:38:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030102082846.021bb750@celine>
References: <200301021906.13536.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301021906.13536.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Your report is way too sketchy to let anyone spot the problem. Post a 
followup with this information:

         1. Unedited output of "ifconfig -a"
         2. Unedited output of "netstat -nr'
         3. Unedited output of "iptables -nvL"
         4. An EXACT description of what the ping failures look like. (Does 
ping fail silently, or does it fail with an error message? If there's a 
message, what is it). Do this for (a) 127.0.0.1 pinged from the Mandrake 
host and (b) its eth0 IP address pinged from some other host (and mention 
what OS that host is running, since that affects the wording of ping error 
messages).
         5. The unedited output of 
"cat  /proc/sys/net/ipv4/icmp_echo_ignore_all"
         6. An EXACT description of what the ssh failures look like. 
Include info on how you run sshd (as a deamon by itself or through inetd), 
any error messages sshd logs, and how long you wait before deciding that 
sshd has failed (if you haven't been waiting for 5 minutes before giving 
up, please do so, so we can rule out DNS-related logging errors).

Do all of this WITHOUT installing Shorewall. Let's fix the problems one at 
a time ... get your basic conectivity working, then get the system properly 
firewalled. Oh, also mention what kernel version you are using ("uname -a") 
and whether you compiled it yourself or it is a stock Mandrake kernel.

At 07:06 PM 1/2/03 +0930, Adam Luchjenbroers wrote:

>I installed Mandrake 9.0 on a server box I'm putting together, I installed 
>the
>firewall shorewall. Couldn't connect to the ssh server or even ping the box
>(the inability to ping it, I assumed was the result of shorewall).
>
>Reconnected monitor and keyboard to server, server couldn't ping any of the
>other computers (sendmsg not permitted)
>
>So I turned off shorewall and even removed it from startup, can now ping from
>the server to other computers but it cannot be pinged (even ping 127.0.0.1
>doesn't work) or connected to using ssh (sshd is running)
>
>Any idea whats wrong?



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
