From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 09:23:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020413162303.00c5aee0@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Jerry T <linuxl1@hotmail.com>
Cc: linux-newbie@vger.kernel.org

At 03:18 PM 4/13/02 +0000, Jerry T wrote:
>The /etc/ssh/sshd_config file already had the lines in it that you have 
>listed.
>
>I have been able to successfully ssh from my Linux box back to itself. sshd 
>seems to be running fine. (sshd appears in the list of services that you see 
>during bootup, sshd comes on just before xinetd)

Good. So sshd is actually running. Now try the *next* thing I already
suggested; use putty to do a normal userid/password login. To do this, load
your connection profile in putty, then check to make sure all authentication
options (in Connection ->SSH) are unchecked (so it won't even attempt RSA
authentication). Start the session, and putty should display first a prompt
for userid, then one for password. Enter values for a valid account with a
real login shell (typically bash) on the Linux host and see if that lets you
connect. Don't use root for this test unless you've enabled root logins in
sshd_config.

If you CAN connect this way, then your problem is specific to the RSA key
generation, so please post again with ALL the details of how you did it (you
told us some of this, but you left out stuff like what userid is involved,
the full path to the key file, and the keyfile's mode ... and what sshd
daemon you are running). With this sort of configuration problem, the devil
is in the details, so we need to know the details if you want anything more
than wild guesses.

If you CANNOT connect this way, then something is blocking access from your
workstation to port 22 on the Linux host. You say you are running no
firewall (you can verify this with the command, for 2.2.x kernels, "ipchains
-nVL", or the corresponding commands for other kernels), so that's not it.
Check if entries in /etc/hosts.allow and /etc/hosts.deny are consistent with
the access you want to get. Make sure the putty settings are right (I can't
tell you what "right" is without knowing more about the sshd you are running
... basics are making sure the SSH radio button is selected and that the
right preferred SSH protocol is chosen). 

What still troubles me here is the "Connection Refused" message you report
getting. That almost always means nothing is listening on the target port.
If I try to ssh to my Linux system with an invalid userid/password combo, I
get "access denied" (then another password: prompt), not "Connection
Refused". If I'm using the wrong protocol (SSH1 on a system that wants
SSH2), I get an error about packet length. This makes me lean toward either
sshd not running (apparently the wrong answer, since you report checking
this) or blocking via the hosts.deny file. Or a connectivity problem between
the two systems ... but if you CAN telnet and ftp, we've eliminated that
possibility too.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
