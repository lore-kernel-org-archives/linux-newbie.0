From: beolach@comcast.net
Subject: Re: running X programs as another user
Date: Fri, 26 Mar 2004 06:20:10 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <032620040620.16948.4063CB9A000946B2000042342200734076FF979C9E93909A@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajsekar <rajsekar@peacock.iitm.ernet.in>
Cc: Karthik <karthikv@Alum.Dartmouth.ORG>, linux-newbie@vger.kernel.org

Just on quick comment: rather than using 'xhost +' I would recommend using
'xhost +localhost'.  The former allows connections to the X server from any
host, while the latter only allows connections from the localhost.  Usually
wouldn't matter, but it is more secure.

Just my $0.02,
Conway S. Smith
> 
> You can solve this problem using xhost.
> 
> You have to run `xhost +' as the normal user so that your X display is open
> to everyone and then su as root.
> 
> But the better way is to export the X authorization cookies when you su.
> This is really simple if your authentication is based on PAM (which it
> should be unless it you are using a very old system).
> 
> --/etc/pam.d/su-->
> 
> session optional /lib/security/pam_xauth.so
> 
> <----
> 
> The pam_xauth.so help is available at
> /usr/share/doc/pam-<version>/txts/README.pam_xauth (or something like
> that).
> 
> I think post script versions are also available.
> 
> -- 
>    M Rajsekar
>    IIT Madras
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
