From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Specify gcc version during make
Date: Sun, 6 Apr 2003 12:59:25 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0304061244220.24693-100000@ppg_penguin>
References: <03040609581703.02940@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <03040609581703.02940@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: Eng Se-Hsieng <g0202512@nus.edu.sg>, linux-newbie@vger.kernel.org

On Sun, 6 Apr 2003, pa3gcu wrote:

> On Saturday 05 April 2003 09:35, Eng Se-Hsieng wrote:
> > Dear all,
> >
> > I am running gcc version 2.96 and need to install gcc version 3.2.
> >
> > After this installation, how may I specify in make bzImage which
> > compiler version to use?
> 
> /usr/bin/gcc is a symbolic link to /usr/bin/gcc-version.
> I would imagen having multiple compilers is not such a handy thing to have.
> 

 To avoid messing with /usr/bin/gcc (particularly if it is not currently
a symbolic link) it is possible to build other versions of gcc with a
prefix of /opt/gcc-whichever or /home/whoever passed to ./configure 
(actually, it will default to /usr/local, which might be adequate).

 Once you've built and installed it, you should be able to then alter
$PATH so that the new version is found first.

 (This is from memory, I haven't done it for a few months.)  Of course,
self-built versions won't be known to your package management tools, and
for most people, using multiple versions of gcc is probably not worth
the trouble of remembering to check which one you are using.

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
