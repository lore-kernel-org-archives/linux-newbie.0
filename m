From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: bash problem
Date: Tue, 01 Mar 2005 17:45:27 -0700
Message-ID: <42250CA7.6080103@comcast.net>
References: <321aa0d20503011009d1b9060@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <321aa0d20503011009d1b9060@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: zavandi <zavandi@gmail.com>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

zavandi wrote:
> I found some strange result. Here it is in its most simplified form I
> can think of.
> 
> This command usually prints a few OKs, as expected:
> 
> for ((i=0; i< 100000; i++)); do if [ $RANDOM -eq 0 ]; then echo OK; fi; done
> 
> But this other command _never_ prints anything:
> 
> for ((i=0; i< 100000; i++)); do if [ $RANDOM -eq 0 ]; then echo OK;
> fi; done | cat
> 
> Why?

Interesting.... semi-educated wild guess: when you pipe two commands
together, the bash manpage says each command is executed as a seperate
process (i.e., in a subshell).  It also says If RANDOM is unset, it
loses its special properties, even if it is subsequently reset.  So, my
guess is the subshell your for loop runs in had its RANDOM unset (or
possibly was never set).

One thing that backs this up, is that enclosing the for loop in
parenthesis, which also makes it execute in a subshell, like so

(for ((i=0; i<100000; i++)); do
  if [ $RANDOM -eq 0 ]; then
    echo OK;
  fi;
done)

Behaves the same way as piping it through cat.

for ((i=0; i<100000; i++)); do
  if [ $RANDOM -eq 0 ]; then
    echo OK;
  fi;
done | cat


But, when I create a shell script file that only contains the for loop,
and execute it in a subshell (either by enclosing it it parenthesis or
piping it through cat), it works correctly:

 ~ $ cat random.sh
#!/bin/bash
for ((i=0; i<100000; i++)); do
  if [ $RANDOM -eq 0 ]; then
    echo OK;
  fi;
done

 ~ $ (./random.sh)
OK
OK
OK
OK
 ~ $ ./random.sh | cat
OK
OK
OK
OK

So, that means either I'm wrong and it's not something to do with the
for loop being executed in a subshell, or else the bash script sets up
the subshell's environment so that RANDOM works correctly.

Anyway, good luck with whatever you're doing that needs this.
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.0 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFCJQyjGL3AU+cCPDERAucAAKDTSS+hYSQNlZIn1QyJGeW4Km10owCg5n4C
rf6aENxC5xugJ2M9WteAH9w=
=SE7u
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
