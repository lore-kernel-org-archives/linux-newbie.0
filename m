From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Tar Backups
Date: 01 Oct 2002 08:40:37 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1033458038.10135.15.camel@Zebra>
References: <002601c268b6$a09f0d70$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002601c268b6$a09f0d70$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Hmm, you could try a slightly different approach.

Obviously, I don't know the layout of the data that you are backing up,
but assuming that it's in a number of distinct areas you could use
something like dump or tar a number of times, thereby breaking your 13GB
into a number of smaller files. This means you can fast-forward to the
sub-section you want and only have to read through a smallish amount of
data.

For example, if you were backing up the users' home directories, you
would have something like this:

-home
  |
  + paulk
  |   |
  |   +various directories
  |
  + paulf
  |   |
  |   +various directories
  |
  and other stuff...

You could write a simple script that backs up everything under 'paulk'
and then in a separate file backs up everything under 'paulf' without
rewinding the tape in between (you do this by specifying the tape device
to use with tar; /dev/stX are scsi tape devices, but /dev/nstX are
_non-rewinding_ tape devices).

Then, when you later want to restore a file from under 'paulf', you can
wind the tape forward by the number of files you need to before starting
to read the data.


Granted that this is a little more complex to set up than what you are
currently using, but in the long run it could save you a lot of time.


More simply, of course, it's pretty cheap to buy another hard disk and
back up to that as well as the tape. Then, you keep the tape in the
cupboard / drawer / safe, and you can use the disk for getting back
single files quickly. It doesn't matter if the disk is over-written
every couple of days, since you have the tapes for longer term backup.

Of course, if the data is _really_ important data, and you often have to
restore parts of it, you might want to look at something else - either a
specific backup package (possibly even a commercial one) or, 

If you want to talk about this in more depth, mail me direct.

Paul F.



On Mon, 2002-09-30 at 20:21, Paul Kraus wrote:
> Is there a way to have an index written? I am making 13gb backups and it
> takes forever to simply restore because it has to read each and every
> single file on the tape. This is actually on my sco box but the question
> is relevant because I plan on moving the file server to a red hat
> machine.
> 
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
