From: Ray Olszewski <ray@comarre.com>
Subject: RE: GTK
Date: Wed, 21 Apr 2004 13:12:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040421130554.01f8a858@celine>
References: <5.1.0.14.1.20040421103352.01f38830@celine> <HBEJLOFMLEPBMAAEFNFDAEPNCGAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDAEPNCGAA.azapata@du.edu>
References: <5.1.0.14.1.20040421103352.01f38830@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:57 AM 4/21/2004 -0600, Anna G. Zapata wrote:
>Hi Ray,
>
>Thanks for you help.  Ok, this is making more sense now.  However, I did 
>try a pre-compiled package of nessus and this
>is where the problem is coming in.  When I first started with nessus, I 
>complied everything from scratch and really had
>no problems.  I don't see why the pre-complied stuff is causing such 
>havoc.  I tried asking the nessus folks for help,
>but they were nasty to me, so I came here.  I did find the gtk-devel stuff 
>and will give that a shot.  Anything else I
>should be thinking of?


Nothing comes immediately to mind. But if you do post again, please try to 
be as specific as you can about what you are doing and what errors you get. 
I didn't reply to your first message about GTK because it was so vague that 
I couldn't figure out what your problem was. Your second message included 
what you were attempting to do,  the actual error you got, and the name of 
the script you were running at the time ... and that gave me some shot at 
guessing about the problem.

If the nessus script you are running tries to access gtk-config, I'm 
surprised that it is a "pre-compiled package of nessus". I don't have 
either nessus or nessusd installed hee, but the Debian package claim no 
dependency on the -dev package that contains gtk-config. So it would help 
(or it might, at least) if you were as specific as you can be about what 
you are trying to install and where it comes from (the Nessus upstream 
site? Red Hat, as an .rpm? something else?).




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
