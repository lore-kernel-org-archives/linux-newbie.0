From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: mirror for ftp://ftp.dict.org
Date: Mon, 6 May 2002 15:08:08 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02050615080802.26860@unix.pa3gcu>
References: <m3bsbuu5uw.fsf@wobble.eth.net> <02050512380108.19766@unix.pa3gcu> <m3vga2ppze.fsf@wobble.eth.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3vga2ppze.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: anna7sept@linuxmail.org, G Anna <drguruolai@eth.net>, pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

On Sunday 05 May 2002 15:35, G Anna wrote:

> I have got no idea as to why it doesn't work.  I have tried it using
> lynx and mozilla.  lynx complains that it cannot access the document
> and mozilla returns an empty page with the URL ftp://ftp.dict.org/ (it
> times out?)
>
> Since it seems to work for others, I tried it using the ftp client

Well i think i can explain, it seems to be a very restricted site, lynx and 
netscape failed to get anything from that site, ftp can get things but only 
in "passive mode" and ONLY when there are "few" users, here is the output of 
my attempt to retrive the file;

ftp> get dictd-1.7.1.tar.gz
local: dictd-1.7.1.tar.gz remote: dictd-1.7.1.tar.gz
227 Passive mode OK (209,58,150,153,8,142)
550 7 of 5 maximum users.  Downloads disabled.
ftp>

In otherwords the site allows more connections than it will allow downloads 
for, as you see i was user number 7 and only 5 downloads at a time seem to be 
allowed.

> $ wget -c ftp://ftp.dict.org/pub/dict/dictd-1.7.1.tar.gz
>
> And I got the following error.
>
> (begin-wget-output)
>
> --20:56:28--  ftp://ftp.dict.org/pub/dict/dictd-1.7.1.tar.gz
>   (try: 2) => `dictd-1.7.1.tar.gz'
> Connecting to ftp.dict.org:21... connected!
> Logging in as anonymous ... Logged in!
> ==> TYPE I ... done.  ==> CWD pub/dict ... done.
> ==> PORT ...
> Invalid PORT.
> Retrying.

Thats because that site only allows passive mode.

>
> So I am finally downloading the s/w through the ftp client program
> itself.

Your lucky ;-)

>
> Thank you all for the response.
>
> Cheers,
> anna

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
