From: Chris Rose <offline@shaw.ca>
Subject: Maildrop doesn't filter or log filters
Date: Sat, 26 Apr 2003 09:19:10 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000201c30c07$30031a80$4b01a8c0@t9397.tjem.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "'Linux-Newbie (Linux Newbie)'" <linux-newbie@vger.kernel.org>

Here's how i have things:  I'm using postfix as a local MTA, and it's
calling maildrop with 
mailbox_command = /usr/bin/maildrop

I have only one user that receives mail on my system, and that user account
has/d a ~/.mailfilter file.  The problem is, whenever that file exists, no
mail whatsoever makes it into my Maildir.  I've tested this - i send a
message to myself, and i receive nothing as long as there's a mailfilter
file existing.  As soon as i rename it, i'm fine.

Here's the contents of the file: (DELTAG is an environment variable used by
a custom mod to maildrop that i haven't yet implemented)
===============================
logfile "maildrop-filter.log"

log "== message =="

DEFAULT="Maildir"

	# Check headers for winamp
if ( 	(/^Reply-To: Winamp/ ) \
	|| (/^Reply-To: winamp-plugin-dev/)
)
{
	log "winamp message"
	cc "Maildir/.Development.Winamp"
	DELTAG=1
	to "Maildir"
}

if (/^List-Id: <linux-sony.returntonature.com>/
)
{
	log "Sony Linux message"
	cc "Maildir/.Linux.Sony"
	DELTAG=1
	to "Maildir"
}

if (/^X-Mailing-List: linux-newbie@vger.kernel.org/
)
{
	log "Linux Newbie"
	cc "Maildir/.Linux.Newbie"
	DELTAG=1
	to "Maildir"
}
=====end .mailfilter====

I can't find the logfile, either.  It doesn't seem to log anything at all.

Can someone suggest a direction to look in on this one?

Thanks,

Chris R.
=======
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
