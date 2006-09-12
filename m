From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: syntax problems with scp/rsync
Date: Tue, 12 Sep 2006 08:42:40 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609120835450.25341-100000@treebeard.engin.umich.edu>
References: <45065A91.5000803@comarre.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <45065A91.5000803@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 11 Sep 2006, at 23:58, Ray Olszewski wrote to linux-newbie@vger.ker...:

> Karthik Vishwanath wrote:
> > Hello,
> > 
> > I seem to be having some difficulty using scp and rsync with the most
> > basic commands giving me problems:
> > 
> > $ scp kvh1@godzilla.acpub.duke.edu:FN* .
> > usage: scp [-1246BCpqrv] [-c cipher] [-F ssh_config] [-i identity_file]
> >            [-l limit] [-o ssh_option] [-P port] [-S program]
> >            [[user@]host1:]file1 [...] [[user@]host2:]file2
> 
> [snip'd]
> 
> So I'd suspect one of three things:
> 
> 	1. a non-printing character in the command string. Likely only if you 
> didn't actually retype the "kvh1@godzilla.acpub.duke.edu:FN* ." part 
> between the two tries.
> 
> 	2. a problem with your shell.
> 
> 	3. You are using a non-standard ssh/scp program. Unlikely, since the 
> error response matches exactly.
> 
> Some programs fail if wildcards expand ambiguously in the pwd (find is 
> notorious for that, as an example), but I tested that here and scp 
> doesn't do that.
> 

The mystery is solved, thanks to your notes above, Ray -- it did involve
wildcard expansions. The problem could be overcome by using:

scp 'kvh1@godzilla.acpub.duke.edu:FN*' .

bash had the "nullglob" option set, once removed, the single quotes were
not required. Thanks for the assistance.


-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
