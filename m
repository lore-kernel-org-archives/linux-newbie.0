From: Carl <carl@anexia.co.uk>
Subject: Re: LP - Cups - Samba - Print Command
Date: Tue, 01 Oct 2002 17:18:43 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021001170558.00bbc528@interzone.anexia.co.uk>
References: <000101c2695d$57b09320$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c2695d$57b09320$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org


>
>*On a side note why can't I open Linux conf files with notepad? There
>are strange characters. I have to open it with WordPad. I can not save
>or edit using either notepad or WordPad because they seem to add strange
>characters also. Just curious.*

Its the Line Feed/Carriage Return problem.

*nix does it one way MS another.

Notepad doesn't like displaying it.

The answer is to get a decent editor that can open/save files in its native format.
If your used to vi on *nix then the latest MS version is a great relief.

See www.vim.org for all things vim.
I think Notetab at www.notetab.com is good at native file support if you don't want vi.


On my own side note most conf file reside in /etc and you want to be careful about sharing
conf files even in a trustworthy network.

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
