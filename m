From: Ray Olszewski <ray@comarre.com>
Subject: Re: vsftpd
Date: Wed, 21 May 2003 08:20:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030521081353.01e985f0@celine>
References: <76c0f2.b4bb18@tcob1.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <76c0f2.b4bb18@tcob1.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Robert.Couture@p0.f2000.n229.z1.fidonet.org
Cc: linux-newbie@vger.kernel.org

There's a linux.newbie newsgroup? You learn something new every day. I'm 
cc'ing the mailing list rather than the newsgroup, since that is how the 
question reached me.

Anyway ... you didn't search hard enough on the Internet. The vsftpd home 
site (the first thing listed in a Google search on "vsftpd") has a FAQ (at 
URL ftp://vsftpd.beasts.org/users/cevans/untar/vsftpd-1.1.3/FAQ) and this 
is in it:

>Q) Help! I'm getting the error message "refusing to run with writable 
>anonymous
>root".
>A) vsftpd is protecting against dangerous configurations. The cause of this
>message is usually dodgy ownership of the ftp home directory. The home
>directory should NOT be owned by the ftp user itself. Neither should it
>be writable by the ftp user. A way to fix this is:
>chown root ~ftp; chmod -w ~ftp

I don't use vsftpd myself (in fact, I hadn't heard of it prior to this 
message) ... so if that answer doesn't help you, I can't provide any 
further assistance if you have trouble making this work, unless you provide 
very clear details about what you tried and what went wrong.

At 10:24 PM 5/20/2003 +0000, Robert.Couture@p0.f2000.n229.z1.fidonet.org wrote:
>The following message is a courtesy copy of an article
>that has been posted to linux.newbies as well.
>
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
>
>Thanks in advance!



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
