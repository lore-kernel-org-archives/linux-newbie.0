From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: How to hide . folders
Date: Fri, 6 Aug 2004 09:13:35 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0408060856370.23328@ppg_penguin.kenmoffat.uklinux.net>
References: <BD385D76.3EE4%eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BD385D76.3EE4%eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Eve Atley <eatley@wow-corp.com>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

On Thu, 5 Aug 2004, Eve Atley wrote:

>
> Ken, thanks for the reply.
>
> You're correct... This is SSH via a graphical client. They are non-te=
chnical
> folks who need something simple. I'm just trying to protect any syste=
m files
> from accidental deletion.
>
> Is my question better stated, then, as how to prevent users from dele=
ting
> any of the directories they encounter? If that's the correct question=
, then
> is my solution to set a read-only on any folders that I don't wish de=
leted?
>
 I'm not an expert on this, but a quick test suggests users need write
permission on the directory to be able to write/delete the contents.

 For genuine system directories, users should already be unable to
delete them (hint: don't test this on the real directories just in
case!).  For your new data directories, maybe some of the data can
conveniently live in read-only directories.  Beyond that, frequent
backups (search for backing up with rsync) are good.

> > something : system directories show up if you go too far up the
> > hierarchy, but permissions should prevent you writing in them.
>
> Is it possible to keep users from proceeding up further in the hierar=
chy, by
> chance?
>
> - Eve
>
>

 I don't think so.  Normally, everyone can read the top-level
directories except lost+found and they certainly need access to /tmp,

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
