From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: recovering files after rm
Date: Tue, 1 Apr 2003 11:28:05 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030401112805.E1195@neutrino.particles.org>
References: <20030331083633.29504.qmail@webmail35.rediffmail.com> <03033119343201.04308@unix.pa3gcu> <20030331230759.D1195@neutrino.particles.org> <03033120271307.04308@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <03033120271307.04308@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Mon, Mar 31, 2003 at 08:27:13PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: n mishra <mishra_nn@rediffmail.com>, linux-newbie@vger.kernel.org

On Mon, Mar 31, 2003 at 08:27:13PM +0000, pa3gcu wrote:
> Even DOS or widows cannot always recover deleted files, one has to do quite 
> complicated things, your approach saying in "General" there is no way is 
> simply NOT true period. I still dont quite understand your origanal statement,
> i quote;

I can't speak for Windows, because there are major differencies between Windows
variants, but MS-DOS is a single-process, single-user OS and its filesystem
is based in allocation tables; not i-nodes. FAT's stucture is not so dynamic
as the tree-based structure of ext2; not to speak about ext3.  

In MS-DOS undeleting files is trivial, i.e. the process of undeleting 
(programmatically) is really trivial, and the chances to retrieve the
missing file are a lot. Of course you pay for this kind of simplicity,
because DOS has other major disadvantages, such as fragmentation (i.e.
when a file is deleted a hole in the fs is created, which most probably
will dissapear after a defragmentation process; as long as you don't 
defrag you have *great chances* of undeleting your file).

OTOH no Unix fs has designed for undeleting files. *Noone*. Read the specs
for UFS, ext2, minixfs, etc. There is no undeleting feature by design,
because they are created for multi-process, multi-user enviroments, which makes
undeleting difficult and, last but not least, an undeleting feature would
need major redesign of the filesystem, resulting to a new fs with quite a lot
of problems such as less speed in data manipulation, fragmentation, etc. 

I stand in my original position. I think it's good for newbies to know that
there is no trivial or general way to *always* come back from rm. Removing
files means removing files for ever, and users/admins should use rm with
caution. Solutions are hacks, such as debugfs: a tool for testing
the ext2 implementation, which don't always work.

ANW, I believe that the thread must die here. :-)

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
