From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Windows File Server
Date: 26 Nov 2002 11:16:07 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1038309367.25357.9.camel@zebra.vil.ite.mee.com>
References: <007e01c29498$ff605b80$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <007e01c29498$ff605b80$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Paul,

Funnily enough, I just started looking at Debian again (I tried it some
time ago, and gave up because the install was so complex). My take on
Debian now is that it's _much_ better than it used to be. The base
install was pretty intuitive (although having some knowledge of linux is
still basically a must), and the configuration of the components was
straightforward. Just make sure that you specifically tell the install
at the first prompt that you want to install the 2.4 kernel.

Regarding file systems: the reading I have done suggests that the two
best things to try are ext2/3 and reiserfs, and apparently reiserfs is
quicker. Since Debian gives you the easy choice of ext3 or reiserfs, I
picked reiserfs for my test machine and it's behaving just fine so far.
I intend to try a file server using reiserfs and lvm, which is where I
think I probably want to take our main file server in time.

Paul.


On Mon, 2002-11-25 at 15:40, Paul Kraus wrote:
> I am setting up a file server on a Linux box (probably debian I am
> downloading it now to check it out since all of my prior exp has been
> with some flavor of RedHat). I am going to use samba and wanted to know
> of any pit falls anyone might have had as well as recommend file system
> that I should run. I was thinking ext3 but that's just because its  the
> only file system I have ever used.
> 
> The system will be being accessed by two users. All the files are either
> tiffs or pagemaker/indesign files.  There is over 13 gigs worth of files
> that these two users will be accessing and using all day. The files will
> be accessed from the server not being copied locally first.
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

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
