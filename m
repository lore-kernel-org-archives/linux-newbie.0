From: Ray Olszewski <ray@comarre.com>
Subject: Re: Configuring command line mail ...
Date: Fri, 20 Dec 2002 13:21:14 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021220130653.020c29e0@celine>
References: <atvuk7$q8k$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <atvvk4$tgd$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:47 PM 12/20/02 -0500, Jamie Risk wrote:
>Chris wrote:
> >
> > $ mail someone@somewhere.com < filename
> >
>
>Whose reponse I appreciate, and please believe I've tried that: as well as
>many other variant programs.
>
>*How do I configure it?*

In the example Chris offered, there should be NOTHING to configure (beyond 
verifying that the app "mail" is installed and available to the userid ... 
"which mail" will serve that purpose ... though this is not a trivial step, 
since I see that my Debian workstation does not have "mail" installed) 
about the mail client.

If you need to configure OTHER things than your mail client (for example, 
sendmail or some other MTA, or DNS, or I-don't-know-what) you will need to 
ask a more detailed question then you have.

As a general matter, you get further on a troubleshooting list like this 
one when you describe the trouble you are having in more detail than you've 
done. Your original message posed a vague question in pseudocode form. It 
got an appropriately vague answer back.

If what really happened was: "I tried $ mail someone@somewhere.com < 
filename and it failed with this error:", try telling us that (quoting the 
EXACT command and the EXACT error) and you'll almost surely find us more 
helpful.

>Like most of my troubles with this RH installation, everything _promises_
>to work, and when they don't I'm clueless where to turn. I'm approaching
>the moment where I'll decide to start with a "clean/minimalist" installation
>and install each component as I need them, so that I learn what's going
>on in the process.

As a non-Red Hat user (I use Debian), I am hardly in a position to critique 
the quality of default RH installs. Complaints at that level are, I 
suppose, best directed to Red Hat, not a bunch of volunteers on a 
distribution-agnostic help list. Really, all we can do is try our best to 
help with problems that get described in enough detail that we can 
understand them.


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
