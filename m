From: Ray Olszewski <ray@comarre.com>
Subject: Re: PPP Question
Date: Wed, 25 Sep 2002 19:30:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020925192522.025ffa30@celine>
References: <Your message of "Wed, 25 Sep 2002 08:21:09 MST." <5.1.0.14.1.20020925082025.025f05e0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209260212.g8Q2C1901246@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

At 10:12 AM 9/26/02 +0800, Peter wrote:

>ray@comarre.com said:
> > Curious. What does your man page for "ifup" say about where it looks
> > for its default interfaces file?
>
>]$ pinfo ifup
>Przemek's Info Viewer v0.5.8
>Error: could not open info file, trying manual
>Error: No manual page found either.
>[...]
>In /sbin/ifup the word interface does not appear in the script.

Oh what fun. On your system (Red Hat? I forget), "/sbin/ifup" is a script. 
On my (Debian) systems, the same app name,  "/sbin/ifup", identifies a binary.

I hate it when stuff this basic becomes both distribution specific -AND- 
named in ways that invite confusion. Pfui!


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
