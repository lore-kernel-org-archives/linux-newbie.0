From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: Strange problem
Date: Fri, 17 Jan 2003 17:06:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030117160653.9480.qmail@web1.mailbox.hu>
References: <20030116165541.8028.qmail@webmail30.rediffmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030116165541.8028.qmail@webmail30.rediffmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Newbie <linux-newbie@vger.kernel.org>

Hi all!

I have a strange problem.

Happened that the machine had been rebooted (hardly) for some times,
and at the end the next happened:

Nobody can log in except the root. The message is that there is no
/home/<user> (<user> is the appropriate user)!
But in /home there is the <user> directory, and the <user> has
rwx permissions on it. And everybody has x permission on /home.
The other thing is that in sendmail sm-client can not be started,
because: can not chdir to /var/spool/<somedir>, no permissions.
BUT there are appropritate permissions on that dir, and everybody
has x permission on /var and /var/spool. After that I changed
/var/spool/<somedir> to 777 permissions, but sm-client says the same.
I can log in as root. And if I try to #su - <user>, it wont start.
I tried #strace su - <user> and saw, that su can open some files,
but it can not open to read many files (in /etc), but the files are
there, everybody has read permissions on them, and everybody has
execute permissions on the parent directoryes.

What could this be?
Could this be some virus (I forget to setup iptables correctly),
or could this happen because of hard resets?

I thought that I will reinstall Linux (RH 8.0), because happily
I use more partitions, and there isnt any important data
on root partition.

But I'm very curious about this problem.

I use RedHat 8.0 and Ext3 file system on all data partitions.
This is an older machine (K6-2 350 CPU).

If you need any further info, just ask.

TIA
Akos


________________________________________________
http://mailbox.hu - M=E1r SMS =E9rtes=EDt=E9ssel is!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
