From: Ray Olszewski <ray@comarre.com>
Subject: Re: su command broken
Date: Mon, 24 Feb 2003 18:45:21 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030224183842.01ea2b68@celine>
References: <200302251131.23055.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302251131.23055.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:31 AM 2/25/2003 +0930, Adam Luchjenbroers wrote:

>using su to quickly login to root or to another user account fails, returning
>the error "invalid password"
>
>However, this password works fine to login from the login prompt.
>
>Where should I start looking to find the problem.

With this little information, any suggestion is really a guess.

That said, I'd look for a mismatch between the su program and your other 
authentication programs (like login). Possibly you've got an su that 
doesn't use the PAM stuff properly; assuming you are using PAM, see if the 
config program for su (maybe /etc/pam.d/su) differs in some way from other 
PAM config files.

I encountered a transient problem of this source once with ftp 
authentication on Debian Unstable (Sid) systems, and was able to fix it by 
changing some entry  ... I forget the details now ... in 
/etc/pam.d/wu-ftpd, until the error got cleaned up upstream.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
