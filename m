From: beolach@juno.com
Subject: Re: NFS - uid different??
Date: Wed, 9 Jul 2003 20:27:02 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030709.132728.490.28986@webmail15.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org


As far as I know, the only mapping done by NFS is the "squashing"
that maps to anonuid and anongid.  If you only needed to map to one
user id,  you could change the anonuid and anongid options in the
/etc/exports file.  The two more elegant solutions I can think of
are to use NIS/YP to serve the passwd and shadow files from the
server, or to use ugidd, a program designed specifically for NFS
UID/GID mapping.  ugidd would be the best option, except that it
does not come with Slackware, and may be a security risk.  If you
want to try building it from source, look on the Debian page at
<http://packages.debian.org/stable/net/ugidd.html> and download
the source from the bottom of the page.  I have no experience at
all with ugidd, so I can't help you at all with what to expect.

The first "elegant" option I listed, using NIS/YP passwd & shadow
serving, I have done myself, and Slackware comes with all the
packages required.  On the downside, configuring it is rather
complicated, and will require editing the passwd and shadow files
on the client.  But if you are careful, and keep backups, you
shouldn't have any problems with that. If you want to look into
using NIS/YP, read the HOWTO in (Slackware specific) /usr/doc/
Linux-HOWTOs/NIS-HOWTO, or online at The Linux Document Project
<http://www.tldp.org/HOWTO/NIS-HOWTO/index.html>.

Hope that helps,
Conway S. Smith

--- Hal MacArgle <haltec@kvinet.com> wrote:
> 
> Greetings: Been using NFS for years with little problems until I
> discovered one client machine that has different uid's than the
> server.. No matter how much I read or try I can't figure out how to
> work with files on the client with, typically, uid 1001 for user
> haltec and the server with user haltec uid 1000.. If the user/uid
> matches on each machine - no problem of course..
> 
> I've tried the anon stuff till blue in the face but every time I copy
> a file from the server that has the correct owner it ends up on the
> client with the owner matching the different uid... So far I've been
> chown'ing on the client, which seems to work OK, but there must be a
> better way - somehow, because every owner in the entire directory
> tree has to be changed..
> 
> There must be a file that maps the user to the uid.. /etc/passwd
> lists them of course, but editing it doesn't solve the problem and
> creates _many_ others.. :^(..
> 
> I have the Linux Network Administrators Guide, but it mentions files
> that are missing from Slackware 8.0/9.0.. No real help there..
> 
> If the above makes sense, is there anyone accomplishing what I want
> to do?? TIA,
> 
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable
> .

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
