From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Fetchpop
Date: 20 Jul 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307202116.h6KLGWj4010625@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hmm, difficult to imagine that Fetchpop would not have any means to
set some parameters/arguments. Maybe there are command line switches ?

(At least it has to be given the POP3 server name, the user-ID and
password - where are these stored an how are they read by the prog ?
Some mail fetch progs have an input mask for that where they have
buttons or fields to define "get new mails / delete old" or the like,
which would be based precisely on use of the "last" command. Setting
this type of definition to "get all / delete all" would rather
certainly avoid the use, and possible error-hangup, with this POP3
command.)

If the program source is available (as it should, meant to be run under
Linux), it could even be not too problematic to cut out the subroutine(?)
executing the "last" command and to recompile the thing ?

Basically, fetchmail progs have just two tasks, (1) doing the log-in to
the POP server, and (2) using any of the few server commands, and then
listen and display and/or store what's coming back from the server.

 ------------mandatory POP3 server commands
 list
 dele #
 retr #
 quit
 -----------optional POP3 server commands
 last
 top # Z
 -----------(#=msg.no., Z=no.of lines)

(There are some more, e.g. for login/authentication but that's not
relevant here.) Those commands listed have been there almost all from
earliest email times, and with this divison of "optional" ones. Any
fetchmail prog must therefore provide for a possibility to adapt the
use of these latter, as they depend on the ISP's implementation.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-07-20
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
