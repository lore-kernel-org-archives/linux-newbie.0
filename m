From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Fetchpop
Date: 20 Jul 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307200154.h6K1ruph012360@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Among the restricted set of commands of POP3 servers some are even only
"optional", according to the RFC ("standards"); the LAST command is such
- most probably, the new ISP did not implement it.(*) So if Fetchpop does
send this command it gets an "Error" back. (Though it behaves not well
if it freaks out on that instead of doing all the rest.) I don't know
the prog but supposedly there is some sort of configuration/preferences
setting which would allow to suppress that command (or functionality)
to be used. At least, there should be, seen the "optional" character of
it.

BTW, using that "last" command is highly unreliable if you base decisions
to delete all "(up to) last (read)" mail items on it - the order of them
at the POP3 server is stable only while you are actively locked-in to it;
in-between fetchmail sessions, the server may shuffle everything around -
and only the number of the "last" item read the last time remained the
same. This from own bad experience.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-07-19
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

(*) You can test the command set in force by TELNETting to the pop3
server and sending the "help" command.  The server lists its effective
commands then.

REM - while the usefulness of "last" is doubtful, the equally "optional"
"top n m" command (n=order number of stored item, m=number of lines from
mail body, with m=>1) could be highly useful to kill spam at the
server, and before paying the download fee/time - regrettably, even
less ISPs have implemented that one. Argh.

Thus, it's again to look at the "small print" before chosing an ISP.
-hc
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
