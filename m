From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: Emacs ????
Date: Tue, 3 Dec 2002 22:38:30 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021203213830.GA14699@teamfinders.org>
References: <012401c29afa$bb287ed0$64fea8c0@pkrausxp> <5.1.0.14.1.20021203104748.02231b70@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20021203104748.02231b70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: tschulze@teamfinders.org

On Tue, Dec 03, 2002 at 10:56:29AM -0800, Ray Olszewski hunted and pecked out:
> At 01:35 PM 12/3/02 -0500, Paul Kraus wrote:
> >I don't get it. Sometimes it will highlight text and color things and
> >other times it does not. Some times it will indent the way it is
> >supposed to (at least from how I understand it) if I enter either {}
> >then it should line it up with the next one. All text After a curly
> >brace that is indented then when I got to a new line and add the ; it is
> >supposed to line back up with the line above it. Sometimes this works
> >sometimes it does not. Using fundamental and perl-mode it doesn't
> >matter. It appears almost completely random. This is using emacs from a
> >terminal screen.
> 
> Not being an emacs user, I can't help here very much ... but is there 
> really NO pattern whatsoever to when emacs does and does not perform as you 
> expect? The kinds of things I would look for are
> 
>         it works one way with some uids, another with others (different 
> env settings or different user-specific config settings)
>         it works one way if you log in as root, another if you su to root 
> (the env settings are not being reset)
>         it works one way from some terminals, another from others (might 
> be a different env setting for TERM=)
>         it works one way for some file extensions, another for others
>         it works one way if a shebang (#!) line is present, another if it 
> is not
> 
> These are the kinds of things that I see affecting other console apps, so 
> they might be relevant to emacs behavior as well.
> 
To this list you could also add:
          it works one way when invoked from one directory but another way when invoked from another directory.

I believe that vi and emacs share a common trait of looking for their configuration files first system wide, then in the user's home directory and then finally in the user's current working directory.  So, if one directory had an .emacs file but another didn't, emacs use the .emacs file in the current directory in the first instance and the system-wide or home directory resident .emacs file in the second instance.  This is a feature that allows you to change the behavior depending on where you are, e.g. reading mail in your Mail or home directory or writing C code in your projects directory.

> Paul ... I doubt there is any way to diagnose a problem with your setup if 
> you cannot associate it with *something*. I doubt emacs grabs a value from 
> /dev/urandom to decide how to initialize.
> 
Well, I'm a vi/vim user myself, so I can't completely rule this out as a possibility. :-)

Cheers,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
