From: Carl <carl@anexia.co.uk>
Subject: Re: vsftpd
Date: Wed, 21 May 2003 13:38:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.2.1.1.0.20030521132415.01bbfec0@interzone.anexia.co.uk>
References: <76c0f2.b4bb18@tcob1.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <76c0f2.b4bb18@tcob1.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Robert.Couture@p0.f2000.n229.z1.fidonet.org, linux-newbie list <linux-newbie@vger.kernel.org>

At 22:24 20/05/2003 +0000, Robert.Couture@p0.f2000.n229.z1.fidonet.org wrote:

>Hello All!
>
>I am having a problem setting up vsftpd with anonymous access.  I keep getting
>the following error:
>
>500 OOPS: vsftpd: refusing to run with writable anonymous root
>
>I am stumped as to what this means.  I have tried all sorts of games with
>setting permissions, but nothing seems to work.
>
>The man pages do not address this issue and searches on the internet do not
>reveal anything to resolve the problem.  As a newbie user, I sure could use a
>detailed cure for this.  :)
>
>I am running RH 9.0 and the vsftpd root is the standard /var/ftp

This sounds exactly what it says on the tin. The root dir for anonymous users is writeable.
I am not familiar with vsftpd but i know it stands for "Very Secure FTP Daemon" so it makes
sense that it wouldn't allow anonymous write access.

I found this on the vsftpd website in the FAQ:


Q) Help! I'm getting the error message "refusing to run with writable anonymous
root".
A) vsftpd is protecting against dangerous configurations. The cause of this
message is usually dodgy ownership of the ftp home directory. The home
directory should NOT be owned by the ftp user itself. Neither should it
be writable by the ftp user. A way to fix this is:
chown root ~ftp; chmod -w ~ftp

--
Carl 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
