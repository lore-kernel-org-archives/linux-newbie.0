From: beolach@juno.com
Subject: Re: windowsNT-network
Date: Tue, 21 Oct 2003 04:16:26 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031020.211644.10660.339053@webmail04.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kurt.sys@UGent.be
Cc: linux-newbie@vger.kernel.org


You should be able to set it up in the fstab to give all users rw
permissions.  You will probably just need to set the fmask and dmask
to values you want (see the mount(8) & smbmount(8) man pages).

<qoute>
  fmask=<arg> 
    sets the file mask. This determines the permissions that remote
    files have in the local filesystem. The default is based on the
    current umask.
  dmask=<arg>
    sets the directory mask. This determines the permissions that
    remote directories have in the local filesystem. The default is
    based on the current umask.
</qoute>

Also, you may need to chmod smbmount setuid root; IIRC smbmount has
to be run as root, regardless of fstab & other config files.  But
this should only be done if you want/need nonroot users to be able to
mount/umount the remote smb filesystem(s).

Hope this helps,
Conway S. Smith

-- Kurt Sys <kurt.sys@UGent.be> wrote:
>Hi all,
>
>I'm having the following situation here: There is a windowsNT network
>available. I can connect to the network. However, only 'root' can
>write to the NT-disk. So, I have to connect as 'another user':
>
>smbmount //labmetserver/common /mnt/labmet/common -o >credentials=/home/kurt/.smbmountcred,uid=kurt
>
>In this way, I connect to the server, with 'kurt' as the user, so
>'kurt' can write to the NT-disk. So all this works, what's my problem?
>That it only works if I am root. I would like all users to be able to
>connect to the server and read and write. I thinking of something
>like, if someone logs in on linux, the connection is made
>automatically. Can I put something like:
>
>smbmount //labmetserver/common /mnt/labmet/common -o >credentials=$HOME/.smbmountcred,uid=$USER
>
>in some script (which runs with 'root'-permissions). Or even better,
>if '$HOME/.smbmountcred exists, it should use it, otherwhise, it
>should use a general 'smbmountcred'-file (somewhere in /etc/smbmount)?
>I'm using Debian sarge, linux-kernel 2.4.20, smbmount version
>2.2.3a-14.
>
>Untill now, I did put it in fstab, but in that case, I logged in onto
>the windowsNT-server as root, so no user had any write permission.
>
>
>tnx,
>Kurt.

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
