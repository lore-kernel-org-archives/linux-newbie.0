From: Elias Gabriel Amaral da Silva <tolkiendili@gmail.com>
Subject: Re: about [ and [[ in bash
Date: Tue, 23 Feb 2010 16:14:56 -0300
Message-ID: <da2c618b1002231114g702de23aucf6bd86503723ee3@mail.gmail.com>
References: <Pine.LNX.4.64.1002231146400.17698@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=Br/3dHz7bZr03BOq4qnmyzgfGnhG5if8ywUSydb8omw=;
        b=eKrhQK+3Z0aoj9IBrkvcIaqfkG5ua2GiS3beZjXPIxMDC5+izGptdEbEkR4H/zKlw8
         iZ3GVXdyeXYXBZYrGrIt/Kx+EQxTyiNe2z1hf7Ab4TrGTZAvuU1wyUAJXsLpUtm4Iogr
         BbCcAui1g7kykPJL39sy6nCPRYe94k1VcZSlg=
In-Reply-To: <Pine.LNX.4.64.1002231146400.17698@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: karthikv@alum.dartmouth.org
Cc: Newbie List <linux-newbie@vger.kernel.org>

> Has been a while since I had to ask a question on this list!
>
> I was having trouble understanding how the compound command [[ and the
> builtin [ commands were different from each other and why/when would it be
> better to choose one over the other.

In order to answer your question, I joined #bash at irc.freenode.net
and used [ and [[ command of its bot. (It is used to keep a FAQ about
bash and shell scripting). I could use help [ and help [[ at shell
prompt, but this doesn't provide links for further reading :)

Look:

<dark> [
<greybot> [ is NOT part of the `if' syntax. It's a normal, ordinary
COMMAND. The `if' just checks its exit status. See ''help test'',
http://mywiki.wooledge.org/BashGuide/Practices/BashTests and
http://partmaps.org/era/unix/award-example-backticks.html
<dark> [[
<greybot> [[ is a bash keyword similar to (but more powerful than) the
[ command. See http://mywiki.wooledge.org/BashFAQ/031 and
http://mywiki.wooledge.org/BashGuide/Practices/BashTests Unless you
are scripting for POSIX sh we recommend [[.

[ is from the original unix shell. It's portable between shells, and
acessible if you are using /bin/sh as your shell, for example. It's
equivalent to test, but you have to put a ] in the end. so:

if test -e /; then echo a; fi

is the same as

if [ -e / ]; then echo a; fi

on my system, it's a shell builtin. but here it is available as a
regular program too, at /usr/bin/[, so this has the same result as

if /usr/bin/[ -e / ]; then echo a; fi

this would spawn another process, pass -e, /, ] as parameters, and
watch for the return value: 0 means true, nonzero means false. (if you
know C, the parameters would be inserted in argc/argv arguments of
main, and the return value would be the int it returns). that's how if
works (for non-builtins).

[[ is different from test, and isn't available at all shells. it is
more powerful though. you don't need to quote variables, for example.
some advise that you use [[ when you expect to use bash only (or ksh,
..), and [ if you need a portable shell script.

(ps: also note this is not strictly linux-related: linux works at a
lower level. this was actually a shell question. ^^)

-- 
Elias Gabriel Amaral da Silva <tolkiendili@gmail.com>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
