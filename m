From: "J." <j.reynders@xs4all.nl>
Subject: Re: accessing email via POP3
Date: Wed, 1 Dec 2004 18:19:23 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412011814230.20676-100000@hestia>
References: <20041201161911.12f40c9c@sarge>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041201161911.12f40c9c@sarge>
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
accepted by fetchmail.. Try it..

A typical ~/.fetchmailrc for dailup-users

poll pop.myisp1.nl
proto POP3
username president
password UsCliNton
mda "/usr/bin/procmail -d clinton"
set logfile "/var/log/fetch.log"

Of course every command can given on the command-line as options to
fetchmailrc

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
