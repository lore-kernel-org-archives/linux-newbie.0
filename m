From: "J." <mailing-lists@xs4all.nl>
Subject: Re: accessing email via POP3
Date: Thu, 2 Dec 2004 01:58:22 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412020156340.21168-100000@hestia>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

On Wed, 1 Dec 2004, Ulrich F=FCrst wrote:
> On 30 Nov 2004 15:54:46 EST Karthik.Vishwanath.Adv03@Alum.Dartmouth.O=
RG
> (Karthik Vishwanath Adv03) wrote:
> > My .fetchmailrc
> > looks like this:=20
> > ---------
> > set daemon 10
> it's seconds you're giving as an argument. So that is: "poll every 10
> seconds"

Polling every 10 sec's is rude behaviour towards your
i.s.p. .. Don't do that.

The command:
fetchmail --version
Will show all your options set in your .fetchmailrc and if they are
accepted by fetchmail..

A rather typical ~/.fetchmailrc

poll pop.myisp1.nl
proto POP3
username president
password UsCliNton
mda "/usr/bin/procmail -d clinton"
set logfile "/var/log/fetch.log"

Of course every command listed in your .fetchmailrc can be given on the
command-line as options to fetchmail.

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
