From: axel@pearbough.net
Subject: Re: Delete certain text in multiple files (sed/awk/?)
Date: Sat, 4 Jan 2003 22:28:56 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104212856.GB15354@neon.pearbough.net>
References: <20030104195323.GA15354@neon.pearbough.net> <20030104.155611.134684296.0.whitnl73@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030104.155611.134684296.0.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: whitnl73@juno.com
Cc: linux-newbie@vger.kernel.org

Hi Lawson!

On Sat, 04 Jan 2003, whitnl73@juno.com wrote:

> This also seems to work:
> 
> find -name 'Makefile'|xargs -i perl -pi -e 's/-Werror//g' {}

First off thank you very much! It worked fine.
But now I still want to understand it ;)

What I dont understand is the:

1) "-i perl" option
	man page says:
	--replace[=replace-str], -i[replace-str]
              Replace occurences of replace-str  in  the  initial
              arguments  with  names  read  from  standard input.
              Also, unquoted blanks do not  terminate  arguments.
              If  replace-str  is  omitted,  it  defaults to "{}"
              (like for `find -exec').  Implies -x and -l 1.

   As I understand this it calls perl and executes the regexp on a file.
	The explanation of the -i option in man page of xargs and that it
	calls perl doesnt fit together in my understanding.

2) "-pi" option
	"-p" runs the "program" first through the C preprocessor, right? But
	what for?
	
	"-i" means that the file is edited in-place? What does that mean?

3) What is the {} for?


Thank you very much,
Axel
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
