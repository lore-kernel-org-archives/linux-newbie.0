From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: /etc/sudoers setup
Date: Tue, 30 Apr 2002 01:15:44 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204292215.g3TMFpl06118@g38.rdsbv.ro>
References: <4.3.2.7.0.20020429090836.02480960@globalnet.hn>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4.3.2.7.0.20020429090836.02480960@globalnet.hn>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ricardo Denis <r_denis@globalnet.hn>, linux-newbie@vger.kernel.org

root@k:~# more /etc/sudoers
# sudoers file.
#
# This file MUST be edited with the 'visudo' command as root.
#
# See the sudoers man page for the details on how to write a sudoers file.
#

# Host alias specification

# User alias specification
User_Alias      JUPANI = petre, k
# Cmnd alias specification
Cmnd_Alias      SHUTDOWN = /sbin/shutdown -h now
Cmnd_Alias      REBOOT = /sbin/reboot
# User privilege specification
root    ALL=(ALL) ALL
JUPANI  ALL = NOPASSWD: SHUTDOWN, REBOOT


good enough ?

HTH,

petre




On Monday 29 April 2002 17:12, Ricardo Denis wrote using one of his keyboards:
> hi all,
>
> i have read the sudo and sudoers man page but i still can't configure it to
> work properly. the problem is that i don't know how to properly specify the
> users in the /etc/sudoers file. would somebody be kind enough to send me a
> copy of theirs so i can learn how to do mine please? thanks in advance.
>
> rick
>
>
> Donde esta Ricky? http://www.findu.com/cgi-bin/track.cgi?hr2kos-2
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
  1:15am  up 6 min,  1 user,  load average: 0.01, 0.10, 0.06
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
