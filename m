From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: Re[2]: Strange problem
Date: Wed, 22 Jan 2003 16:31:46 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030122153153.28193.qmail@web1.mailbox.hu>
References: <5.1.0.14.1.20030117102213.021b4900@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030117102213.021b4900@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Newbie <linux-newbie@vger.kernel.org>

Hi!

I have reinstalled RH8.0, because I had to make the
machine work.
But as I am curious about the problem, I will answer
the questions.

Ray Olszewski <ray@comarre.com> wrote

>You really haven't told us enough for good diagnosis. From what you di=
d

> write, I'd guess there is a problem with mounting partitions other
than
> the=20
> root (/) one (maybe including /, depending on the details of the /etc=
=20

I had everything on 1 partition and used the other partitions
(mounted into /mnt) for data storage.
So the / was on the same partition as /etc /boot and also
everything else.
And the programs were able to open some files, but other
not.

> problems you allude to). User root's home directory is normally on th=
e
> root=20
=2E..
> almost=20
> never is (I've never seen a case where it was, and doing it that way
> would=20
> cause real problems during init).

Every directory was on the same partition.
(except explicitli mounted directories)

> Check the status of mounted partitions in /etc/mtab to verify that
they
> are=20
> mounted RW (and that they are actually mounted as ext3, not ext2). Tr=
y
> (as=20
> root) umount'ing them, then fsck'ing them, in case they failed an
> automated=20
> fsck during init (this seems farfetched since you use ext3
filesystems,
> but=20
> it's all I can think of).

I checked the partitions during boot, and nothing was found.
I can not check mtab now :-(

> Since this happened after a reboot (at least I think that's what you=20
> wrote), you might want to verify that you are running the same kernel
as
> you were before the reboot.

There was only one kernel...

> I'd classify the chance that this is a virus as quite small. The
> hard-reset=20
> question does make me think of fsck problems with the filesystems.

Actually when I turned off the machine, there were [FAILED]
programs (eg xfs, etc) and they weren't always the same.
This was the reason that I thought about viruses.

> If that doesn't turn up anything, post again, this time quoting the
> actual=20
> error messages instead of paraphrasing them.

I can not do this anymore, but the error messages that I=20
wrote were nearly the actual, this means I didn't wore the
meaning of them, but what I saw, only when I wanted to
log in as a user, I can't see the message for a long time,
so I wasn't sure.

As I can not give you more actual information about the
system (because it has been reinstalled), I don't know if
you could guess the source of the problem.
But I want to than you Ray for the guesses!

Best regards,
Akos


________________________________________________
http://mailbox.hu - M=E1r SMS =E9rtes=EDt=E9ssel is!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
