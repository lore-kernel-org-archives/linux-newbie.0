From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: A way to transfer drives?
Date: 05 Nov 2002 09:00:31 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036486831.2358.9.camel@zebra.vil.ite.mee.com>
References: <20021104.174956.135082040.5.lawson_whitney@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021104.174956.135082040.5.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

My apologies, you are correct. I think my brain stepped out for a
moment... :)

To be exact: if you tar using a directory name, it works fine, but if
you use a wild card it doesn't see dot files (because that's how
wildcard expansion works).

thus:

cd $HOME
tar -cvf /archive/homedir.tar *

will not do the same as:

cd $HOME
tar -cvf /archive/homedir.tar .

The first example will not save anything who's name begins with a dot,
but the second one will.


A thing to know about:

cd /
tar -cvf /archive/homedir.tar $HOME

will store the full path of everything in your home dir. This means that
if you try and extract it later on, it will try and put all the files
back _exactly_ where they came from in the first place.

Although this sounds like a fine idea for a backup, I have found that it
makes more sense to avoid the full paths for user generated data,
because there will always be the time when you want to get back the
backup and compare it to what you already have - which is much more
complicated if you have the full paths stored in the archive.

It also means that restoring the stuff to a different machine is harder,
because you need an identical directory structure - less of a problem
with a home dir, but it could be something more complicated like this:

tar -cvf /archive/backup.tar /usr/local/data/bungle/source/c/big_project

Paul.





On Mon, 2002-11-04 at 21:37, lawson_whitney@juno.com wrote:
> On 4 Nov 2002, Paul Furness wrote:
> 
> > There is only one snag with tartar: it doesn't pick up 'dot' files in
> > the starting directory.
> 
> If you mean files of the form .name, I can't see that it doesn't.
> ls won't show them without -a though.
> 
> Lawson
> ---oops---
> 
> 
> 
> ________________________________________________________________
> Sign Up for Juno Platinum Internet Access Today
> Only $9.95 per month!
> Visit www.juno.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
