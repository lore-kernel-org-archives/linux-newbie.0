From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: NFS - uid different??
Date: Sat, 12 Jul 2003 07:36:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030712073632.A215@lnx2.w8mch.ampr.org>
References: <20030709.132728.490.28986@webmail15.lax.untd.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030709.132728.490.28986@webmail15.lax.untd.com>; from beolach@juno.com on Wed, Jul 09, 2003 at 08:27:02PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: beolach@juno.com
Cc: linux-newbie@vger.kernel.org

Greetings and thanks for your excellent suggestion and reply.. I've
been immersed in NIS-YP and see that that is the answer except the
method is really designed for large complicated LAN's, not the home
hobby system we have here, which only requires a KISS approach.

My unfortunate situation is that the clients are all "matched" and
the server isn't, but will be when I move up a notch in versions...
<grin> I think I'll try to setup rpc.ugidd as we don't really need
good security.. The main thing is to keep this retired mind busy with
less and less "things to do" available..

Appreciate - and thanks again.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable

On 07-09, beolach@juno.com wrote:
> 
> As far as I know, the only mapping done by NFS is the "squashing"
> that maps to anonuid and anongid.  If you only needed to map to one
> user id,  you could change the anonuid and anongid options in the
> /etc/exports file.  The two more elegant solutions I can think of
> are to use NIS/YP to serve the passwd and shadow files from the
> server, or to use ugidd, a program designed specifically for NFS
> UID/GID mapping.  ugidd would be the best option, except that it
> does not come with Slackware, and may be a security risk.  If you
> want to try building it from source, look on the Debian page at
> <http://packages.debian.org/stable/net/ugidd.html> and download
> the source from the bottom of the page.  I have no experience at
> all with ugidd, so I can't help you at all with what to expect.
> 
> The first "elegant" option I listed, using NIS/YP passwd & shadow
> serving, I have done myself, and Slackware comes with all the
> packages required.  On the downside, configuring it is rather
> complicated, and will require editing the passwd and shadow files
> on the client.  But if you are careful, and keep backups, you
> shouldn't have any problems with that. If you want to look into
> using NIS/YP, read the HOWTO in (Slackware specific) /usr/doc/
> Linux-HOWTOs/NIS-HOWTO, or online at The Linux Document Project
> <http://www.tldp.org/HOWTO/NIS-HOWTO/index.html>.
> 
> Hope that helps,
> Conway S. Smith
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
