From: Peter Edstrom <peter.p3@home.se>
Subject: Re: Undeleting files on ReiserFS partition
Date: Fri, 12 Sep 2003 22:06:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030912200652.GA2407@linux>
References: <20030912194607.GA2320@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030912194607.GA2320@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I admit I didn't google on the problem before posting here. Now as I've
done that, I see it's a quite common problem, without an arbitrary
solution. The only way I've found out to 'undelete' files is to rebuild
the entire file system tree, using reiserfsck with the '--rebuild-tree'
parameter. I think, however, that this is more pain than gain, so I'll
just grieve and hope I'll learn something from this... that is for
exemple, to make backups. :-)

/Peter

> Hello!
> 
> I just accidently deleted some files that I really shouldn't have done,
> ironically during a backup process. Is there any way I can recreate the
> files, like the 'undelete' applications for Windows (I think Symantec 
> has made one)? The files were located on a ReiserFS partition.
> 
> Please, tell me there is a way of undeleting the files... those were
> all my bookmarks and Mozilla Firebird settings. :-)
> 
> Thanks in advance,
> Peter
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
