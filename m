From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: How to hide . folders
Date: Thu, 5 Aug 2004 23:15:04 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0408052259230.20336@ppg_penguin.kenmoffat.uklinux.net>
References: <GNEPLLCIIBHICCOGIAKPKEFEDCAA.eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPKEFEDCAA.eatley@wowcorp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Eve Atley <eatley@wowcorp.com>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On Thu, 5 Aug 2004, Eve Atley wrote:

>
> I have a folder, /home/shared, which contains directories that are li=
terally
> 'shares' for a small network. I've set up permissions in which a pers=
on can
> or cannot access these directories based on being a group member.
>
> When the person logs in via SSH, they see these folders AND all sorts=
 of
> 'grayed out' folders, usually . directories. How can I get it to show=
 ONLY
> the folders I want them to see and none of the system / critical file=
s,
> without using client-side 'don't show hidden files and folders'?
>
> Thanks,
> Eve
>

 I think you're omitting something in your description - if I log in to
another box on my network using ssh, I get a normal terminal session an=
d
I'm in my ~/ directory, either from a console or from an xterm. "grayed
out" doesn't fit with that, it sounds as if they are using some sort of
graphical front-end. And therefore, it sounds as if it *is* a
client-side "don't show hidden..." issue.  Or tell them to run ssh from
within a(n) aterm|gterm|konsole|xterm.

 AFAIK there is no way of hiding non-hidden directories such as /etc an=
d
/usr/bin - normal users will have read access to these, so they can use
e.g. /usr/bin/zgrep as an example script.

 Somewhat similar to when you save from a graphical browser and blunder
around the directory hierarchy trying to find the right place to save
something : system directories show up if you go too far up the
hierarchy, but permissions should prevent you writing in them.

Ken
--
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
