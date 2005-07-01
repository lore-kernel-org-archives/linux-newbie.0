From: Ray Olszewski <ray@comarre.com>
Subject: Re: preserving logins
Date: Thu, 30 Jun 2005 19:40:48 -0700
Message-ID: <42C4AD30.8050000@comarre.com>
References: <Pine.LNX.4.44.0506301753320.4433-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0506301753320.4433-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Since there are fair number of other users than myself on this machine, I
> want to keep the same /home partition, under either system. Is it possible
> for me to use the same passwd/shadow files on either system, and expect
> compatibility (if so, which are the files to be copied) or must I ask
> every old user to re-create their passwds? (I can do that, if its the
> easiesr route, which is a relative measure!)
[...]

This is a difficult question to give you a definitive answer to.

If RH and Debian use compatible password encryption, you can simply tuck 
the RH /etc/passwd and /etc/shadow files someplace safe, then do the 
Debian install, letting it creates its own, new /etc/passwd and 
/etc/shadow files. Then you just cut and paste the user-level entries 
(the ones about 1000, if RH follows the same numbering convention that 
Debian does) from your tucked-away RH files into the corresponding 
Debian files.

But I didn't even notice what version of RH you said you were using, so 
I don't know if the encryption mechanisms will match.

As someone else already explained, you really do want to let Debian 
create the system accounts for you. Conventions on these accounts drift 
a bit over time, and I would have no real confidence that an unknown 
version of RH and any current version of Debian use perfectly matching 
conventions.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
