From: Robert.Couture@p0.f2000.n229.z1.fidonet.org
Subject: Re: vsftpd
Date: 23 May 2003 10:52:54 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <66c108.b75e9b@tcob1.net>
References: <76c0f2.b4bb18@tcob1.net> <5.2.1.1.0.20030521132415.01bbfec0@interzone.anexia.co.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sean@tcob1.net

The following message is a courtesy copy of an article
that has been posted to linux.newbies as well.

Hello Carl!

May 21 13:38 03, Carl wrote to Robert.Couture@p0.f2000.n229.z1.fid:

 C> I found this on the vsftpd website in the FAQ:


 C> Q) Help! I'm getting the error message "refusing to run with writable
 C> anonymous root".
 C> A) vsftpd is protecting against dangerous configurations. The cause of
 C> this message is usually dodgy ownership of the ftp home directory. The
 C> home directory should NOT be owned by the ftp user itself. Neither
 C> should it be writable by the ftp user. A way to fix this is: chown
 C> root ~ftp; chmod -w ~ftp

Thanks a million!

Regards,
Robert

--- Msged/UNX 6.1.2
 * Origin: RuneKeep: Linux Hub 2000 (1:229/2000)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
