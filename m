From: Rajsekar <rajsekar@peacock.iitm.ernet.in>
Subject: Re: running X programs as another user
Date: Fri, 26 Mar 2004 09:30:32 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <y49d670dzq7.fsf@sahana.cs.iitm.ernet.in>
References: <Pine.LNX.4.44.0403250943280.26064-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403250943280.26064-100000@legolas.personal.engin.umich.edu> (Karthik
 Vishwanath's message of "Thu, 25 Mar 2004 09:45:25 -0500 (EST)")
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org


You can solve this problem using xhost.

You have to run `xhost +' as the normal user so that your X display is open
to everyone and then su as root.

But the better way is to export the X authorization cookies when you su.
This is really simple if your authentication is based on PAM (which it
should be unless it you are using a very old system).

--/etc/pam.d/su-->

session optional /lib/security/pam_xauth.so

<----

The pam_xauth.so help is available at
/usr/share/doc/pam-<version>/txts/README.pam_xauth (or something like
that).

I think post script versions are also available.

-- 
   M Rajsekar
   IIT Madras

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
