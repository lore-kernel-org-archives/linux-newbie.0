From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Sun, 8 Jun 2003 10:36:08 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306081036.08989.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030607104727.A355@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Saturday 07 June 2003 16:47, Hal MacArgle wrote:
> On 06-05, pa3gcu wrote:
> > So it sounds like you can mount the CD manually during install, is that
> > correct,?? If so then you MUST be able to use it to install period, what
> > you may be doing is FORGETTING to ""UNMOUNT"" it before proceeding with
> > the install, i say that be cause i can get the same error message you
> > mention if i mount the cdrom by hand in a console and then proceed with
> > "setup" to install slackware, it does not then work, one needs to UNMOUNT
> > the cdrom first....
> >
> > Is that your problem.?????
>
> 	Not sure I understand the above completely.. Slackware has a
> source selection including sth like "Install from a mounted
> directory." I tried that by creating an empty directory, /slack, and
> then mounting the CD drive.. So that means, to me, that setup should
> find the files at /slack/slackware.. I tried all combinations to no
> avail, including trailing "/"s...

Yes it does allow what you say however it will NOT work as you think or want 
it to for the following reason.

You mount your cdrom in /slack which you created, your cdrom has a directory 
called slackware containing the install sets, a, ap, etc etc etc.
However the setup program does NOT look in slackware, it looks in slack and 
will not find the install sets. I burnt a cdrom with the contents of the 
slackware directory in the root of the cdrom, however this did not work 
either.

One possable reason for it not working is that you are not mounting a 
predefined "directory" you mount another "device" in that directory, my cdrom 
led does not even flikker at all when setup looks for the "a" series 
indicating that it does not find the cdrom mounted in the given directory at 
all.

So as far as i see it, simply let slack detect the cdrom from the setup 
process, do not mount the cdrom beforehand. If it does not find it you may 
need to define where setup must look for it.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
