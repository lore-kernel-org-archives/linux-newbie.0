From: Ray Olszewski <ray@comarre.com>
Subject: Re: tftpd problem (was: [no subject line])
Date: Sat, 07 Jun 2003 07:16:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030607065956.02005d18@celine>
References: <1054971913.3ee1980970d54@pop-mail.india.tejasnetworks.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1054971913.3ee1980970d54@pop-mail.india.tejasnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Please use a Subject: line in the future. I added one.

At 01:15 PM 6/7/2003 +0600, deepesh@india.tejasnetworks.com wrote:
>
>  Hi,
>
>     I am having some problem setting up the tftp server. I am using Red Hat
>     6.2.

This is quite old. It would not surprise me if no one here is using such an 
old version of Red Hat, so you may not be able to get version-specific 
help. The ramainder of my comments assume this version is reasonably 
standard Linux.

>I have uncommented the "tftp" line in the inetd.conf file in
>     "/etc". but the tftpd daemon did not get started.

inetd.conf does not start daemons; it tells inetd to listen on ports, 
starting the relevant daemon only when a connection is received. Also, 
after editing inetd.conf, you need to restart or re-HUP inetd, to get it to 
read and act on the revised file.

Finally, the daemon needs to be present on the system; is it? (Apparently 
yes, from the error you report below, but see my comment with respect to it.)

>then i tried executing
>     /usr/sbin/in.ftpd, but got an error
>
>       "tftpd[25618]: recvfrom: Socket operation on non-socket"

This is very puzzling, because in.ftpd is not (usually) the name of the 
tftpd server. (Is this the daemon name that appears on the line in 
inetd.conf that you uncommented?) Are you sure this message is a response 
to executing the file you name above?

In any case, how *exactly* did you attempt to run this daemon? (Quote the 
line.) Is networking set up properly on this host?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
