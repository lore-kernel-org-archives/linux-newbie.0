From: Ray Olszewski <ray@comarre.com>
Subject: Re: line printer line transport
Date: Thu, 25 Sep 2003 17:26:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030925171903.01f559c0@celine>
References: <200309252310.h8PNAdY30004@xizor.is.kpn.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309252310.h8PNAdY30004@xizor.is.kpn.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>I want to use some simple line printer for text and debug print-out.
>Problem is that that *nix (text) output gives solely LineFeed (LF)
>at a line break, not the needed additional Carriage Return (CR).

There's a standard Unix/Linux program for this. On my (Debian) systems, 
it's called "todos". I've also seen it, or variants of it, called unix2dos 
and some other things I forget right now. Because you can use it in a pipe, 
as well as to output a modified file, it should serve your needs quite 
well. (There is a corresponding "fromdos" that goes the other way.)


>No deal to fiddle with the dip switches of the printer(s) each time when
>some text has to be printed from a Linux on that units (and besides, those
>[HP] printers can only add LFs to given CRs, not vice versa), as there are
>other OSs which durely give the CR+LF sequence by themselves. So the
>solution must be soft.
>
>No question neither to reformat the files to print just for that
>purpose, they should be left intgeger; and this wouldn't be working with
>debugging output anyway.
>
>Thus something like 'cat filename /dev/lp0' should go through a simple
>filter which inserts a CR in front of any LF. Is there something the
>like ? Couldn't a small bash script do it ?




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
