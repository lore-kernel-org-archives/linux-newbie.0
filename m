From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM settings and hardware resources...
Date: 25 Oct 2002 06:06:00 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035540360.18011.2.camel@localhost.localdomain>
References: <Pine.BSF.4.44.0210250441590.3791-100000@server1.shellworld.net>
	 <1035540045.18011.0.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035540045.18011.0.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jude DaShiell <jdashiel@shellworld.net>
Cc: jbradford@dial.pipex.com, pa3gcu@zeelandnet.nl, linux-newbie <linux-newbie@vger.kernel.org>

Read the latest edition of Linux Magazine for details...


On Fri, 2002-10-25 at 06:00, Bryan Simmons wrote:
> Actually, yes.  I believe that JFS, XFS and ReiserFS all use B+ trees to
> manage files in a directory.
> 
> 
> On Fri, 2002-10-25 at 04:42, Jude DaShiell wrote:
> > Do any of the Linux file systems use a tree rather than linked lists?
> > 
> > 
> > 
> > On 24 Oct 2002, Bryan Simmons wrote:
> > 
> > > Shows how much I know about basic system design...
> > >
> > > In fact, I was shocked to learn last night that ext2 uses linked lists
> > > to keep track of files in a directory.  Why is this?  Did the guys who
> > > wrote the file system specs go to school for computer science?  I can't
> > > tell you how many times my cmsc professors have told us that the linked
> > > list is totally inferior to the tree.  At least, it is when it comes to
> > > large sets of data.  Perhaps the ext2 guys never saw the need for
> > > extremely large sets of files in a single directory, but still, even
> > > when hashing, it is suggested that you not handle collisions with linked
> > > lists...
> > > Stacks and queues are one thing (when used for temporary operations,
> > > like iterators and memory management).  But persistent data is another.
> > > I would never want to store stuff in a list if it is always going to be
> > > accessed, growing and shrinking...
> > >
> > > On Thu, 2002-10-24 at 07:11, jbradford@dial.pipex.com wrote:
> > > > > > Does anyone know a way around this?  I can't hardly believe that all the
> > > > > > millions of Linux users have been, and still are, stuck with CD-RWs that
> > > > > > have to masquerade as SCSI devices.
> > > > >
> > > > > There is no way around it, simply read the proper documentation, in this case
> > > > > the CD-Writing HOWTO.
> > > > > IDE-ATAPI CD-RW devices only work with SCSI emulation as they only do in
> > > > > widows as well.
> > > > > If you find a better way you can tell us millions how you did it then.
> > > >
> > > > There will soon be a better way - Linus himself mentioned using the
> > > > standard IDE devices for cd recording, last Tuesday.
> > > >
> > > > Expect to see cd recording with native IDE devices once the 2.6 kernel
> > > > is ready.
> > > >
> > > > Incidently, IDE devices masquerading as SCSI is not as unusual as it
> > > > might first appear - ATAPI is basically a way to send SCSI commands
> > > > over the IDE bus.
> > > >
> > > > John.
> > > > -
> > > > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > > > the body of a message to majordomo@vger.kernel.org
> > > > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > > > Please read the FAQ at http://www.linux-learn.org/faqs
> > > --
> > > Regards,
> > >
> > > Bryan Simmons
> > > =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
> > >
> > >  On Integrity:
> > >
> > >  "I'm going to be as good as they let me and
> > >   as mean as they make me, and they all know
> > >   that.  I don't ever lie. If I tell you a
> > >   rooster can fly, get the harness."
> > >
> > >    --Burl Cain, Louisiana State Pen Warden
> > > =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
> > >
> > > -
> > > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > > the body of a message to majordomo@vger.kernel.org
> > > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > > Please read the FAQ at http://www.linux-learn.org/faqs
> > >
> -- 
> Bryan Simmons <bsimmo1@gl.umbc.edu>
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Bryan Simmons <bsimmo1@gl.umbc.edu>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
