From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Delete certain text in multiple files (sed/awk/?)
Date: Sat, 4 Jan 2003 21:09:18 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0301042056240.30513-100000@ppg_penguin>
References: <20030104195323.GA15354@neon.pearbough.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030104195323.GA15354@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: axel@pearbough.net
Cc: linux-newbie@vger.kernel.org

On Sat, 4 Jan 2003 axel@pearbough.net wrote:

> Hi,
> 
> i have a little problem. There is a source tree with many subdirectories
> each with its own Makefile. My compiler is gcc 3.3 which produces more
> warnings that 3.2 and before. But the Makefiles all contain the -Werror flag
> which constantly causes my build to fail. Then I edit the corresponding
> Makefile manually.
> What I'd like to do is automatically delete all occurences of -Werror
> recursively in all Makefiles. I have looked at sed, awk, regular
> expressions, but it all seems fairly complicated, 
> so I am now hoping that maybe someone of you helpful linux users can give me
> a little hint on what I need to write i.e. how a shell/perl script would
> need to look like to do exactly what I need.
> 
> 
> Thank you very much in advance,
> Axel Siebenwirth
> -

 Hi Axel,

 the following works for me on a little test tree. I'm assuming you've
configured the tree before you run this (if you haven't, the Makefiles
probably don't exist), so it would be a good idea to create a tar of the
configured source before running this - my shell code tends to be buggy!

 No need for a script, just run (after reading the notes)

find treename -depth -iname makefile -print | while read name ; do
  cp -v $name $name.bak
  sed s'/-Werror//' $name.bak > $name
done

Notes -

1. Replace treename by the name of the directory at the root of the
tree, with the path if it isn't below your current directory.

2. The `-iname' is in case any of the `Makefile's are really
`makefile's, so you can probably use `-name Makefile'.

3. I cribbed the `while read name' from the postfix scripts when I was
looking for an example of find.

3. The -v on the `cp' is just for confidence!

4. The sed replaces the first `-Werror' on a line with nothing. In the
unlikely event that you need to change more than one of these on a line,
change it to s'/-Werror//g' .

5. The original Makefiles are left as Makefile.bak, you can diff against
these to see what changed.

HTH

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
