From: Kurt Sys <kurt.sys@UGent.be>
Subject: windowsNT-network
Date: Mon, 20 Oct 2003 09:51:41 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16275.37901.662078.275615@ksys.ugent.be>
Reply-To: Kurt Sys <kurt.sys@UGent.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi all,

I'm having the following situation here: There is a windowsNT network
available. I can connect to the network. However, only 'root' can
write to the NT-disk. So, I have to connect as 'another user':

smbmount //labmetserver/common /mnt/labmet/common -o credentials=/home/kurt/.smbmountcred,uid=kurt

In this way, I connect to the server, with 'kurt' as the user, so
'kurt' can write to the NT-disk. So all this works, what's my problem?
That it only works if I am root. I would like all users to be able to
connect to the server and read and write. I thinking of something
like, if someone logs in on linux, the connection is made
automatically. Can I put something like:

smbmount //labmetserver/common /mnt/labmet/common -o credentials=$HOME/.smbmountcred,uid=$USER

in some script (which runs with 'root'-permissions). Or even better,
if '$HOME/.smbmountcred exists, it should use it, otherwhise, it
should use a general 'smbmountcred'-file (somewhere in /etc/smbmount)?
I'm using Debian sarge, linux-kernel 2.4.20, smbmount version
2.2.3a-14.

Untill now, I did put it in fstab, but in that case, I logged in onto
the windowsNT-server as root, so no user had any write permission.


tnx,
Kurt.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
