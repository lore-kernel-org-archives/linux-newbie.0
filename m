From: Jim Carter <jimc@math.ucla.edu>
Subject: Re: Network install fails at TFTP load on client pc
Date: Tue, 19 Aug 2008 12:30:09 -0700 (PDT)
Message-ID: <Pine.LNX.4.64.0808191216080.4998@xena.cft.ca.us>
References: <260800.64041.qm@web59716.mail.ac4.yahoo.com>
 <Pine.LNX.4.64.0808121443100.12720@xena.cft.ca.us> <48A8BFE7.7070900@gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <48A8BFE7.7070900@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Philip Cohen <hpypenguin.lists@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Sun, 17 Aug 2008, Philip Cohen wrote:

> I now get a message from the syslog that tells me that my tftp server can not
> run because the address is already in use.Hopefully this is the last barrier
> here. I run in.tftpd as an option in xinetd. The options are configured the
> same way as recommended on the Ubuntu support website.

So xinetd should be listening on port 69.  If in.tftpd also tries to listen 
on that port you would see your symptom.  Is there any chance that the 
command line includes the -l option (standalone listener)?  

Here's our /etc/xinetd.d/tftp file.  Note, we aren't a boot server; we use 
this so a Cisco box can deposit a dump of its configuration automatically.
So you would certainly need a different -U option in server_args.

service tftp
{
        disable                 = no
        socket_type             = dgram
        protocol                = udp
        wait                    = yes
        user                    = root
        server                  = /usr/sbin/in.tftpd
# UCLA-Mathnet hacks:
#               -s chrootdir
#               -u setUID to this user (group = its primary group = maint)
#               -U umask (complement of 407 -> mode 260, server can write 
#			but not read the incoming file)
#               -c (absent) = can create new files (we forbid this)
#               -p (absent) would allow any file (for which the server has
#                       permission, there aren't any) to be read.  As it is,
#                       only publicly readable (xx4) files can be read.
        server_args             = -s /tftpboot -u bugs -U 407
}


James F. Carter          Voice 310 825 2897    FAX 310 206 6673
UCLA-Mathnet;  6115 MSA; 405 Hilgard Ave.; Los Angeles, CA, USA 90095-1555
Email: jimc@math.ucla.edu  http://www.math.ucla.edu/~jimc (q.v. for PGP key)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
