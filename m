From: G Anna <drguruolai@eth.net>
Subject: Re: mirror for ftp://ftp.dict.org
Date: 05 May 2002 21:05:17 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3vga2ppze.fsf@wobble.eth.net>
References: <m3bsbuu5uw.fsf@wobble.eth.net> <02050512380108.19766@unix.pa3gcu>
Reply-To: anna7sept@linuxmail.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02050512380108.19766@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org


> Date: Sun, 5 May 2002 12:38:01 +0000
> From: Richard Adams <pa3gcu@zeelandnet.nl>
> Subj: Re: mirror for ftp://ftp.dict.org
> 
> On Sunday 05 May 2002 12:38, G Anna wrote:
> > Dear All,
> >
> > Do you people know a mirror for ftp://ftp.dict.org server?  I am
> > trying to access this ftp://ftp.dict.org but it seems to not work for
> > me.  Thank you for any help.
> 
> Works fine from here and from other computers i operate around the world, so 
> just why does it not work for you.???

I have got no idea as to why it doesn't work.  I have tried it using
lynx and mozilla.  lynx complains that it cannot access the document
and mozilla returns an empty page with the URL ftp://ftp.dict.org/ (it
times out?)

Since it seems to work for others, I tried it using the ftp client

$ ftp ftp.dict.org

and I was able to access the dictd software.  I am currently
downloading!

Another problem I had is with wget.  After figuring out the actual URL
using the ftp client program I tried

$ wget -c ftp://ftp.dict.org/pub/dict/dictd-1.7.1.tar.gz

And I got the following error.

(begin-wget-output)

--20:56:28--  ftp://ftp.dict.org/pub/dict/dictd-1.7.1.tar.gz
  (try: 2) => `dictd-1.7.1.tar.gz'
Connecting to ftp.dict.org:21... connected!
Logging in as anonymous ... Logged in!
==> TYPE I ... done.  ==> CWD pub/dict ... done.
==> PORT ... 
Invalid PORT.
Retrying.

--20:57:12--  ftp://ftp.dict.org/pub/dict/dictd-1.7.1.tar.gz
  (try: 3) => `dictd-1.7.1.tar.gz'
Connecting to ftp.dict.org:21... connected!
Logging in as anonymous ... Logged in!
==> TYPE I ... done.  ==> CWD pub/dict ... done.
==> PORT ... 
Invalid PORT.
Retrying.

(end-wget-output)

So I am finally downloading the s/w through the ftp client program
itself.

Thank you all for the response.

Cheers,
anna

-- 

(6) I will not gloat over my enemies' predicament before killing them.
    - Peter Anspach in "The Top 100 Things I'd Do If I Ever Became An
      Evil Overlord"

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
