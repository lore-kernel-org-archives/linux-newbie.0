From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: A "subject" rule for procmail
Date: Sun, 14 Sep 2003 01:32:54 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0309140120090.875@localhost>
References: <XFMail.20030913224135.ik5bcu@tin.it>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <XFMail.20030913224135.ik5bcu@tin.it>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Marco Calistri <ik5bcu@tin.it>
Cc: linux-newbie@vger.kernel.org

You have now learned the futility of subject filters.  Perhaps a white
list filter would work better.  Unfortunately I don't know how to set one
of them up in procmail but have one set up and working in pine.  As a
stopgap measure in procmail, search for something like this, :0 HB
* prescription
spam


-- ----- That effectively searches both the header and body of the message
for prescription and tosses those messages into the spam folder.  I don't
send anything to /dev/null automatically.  I have a chance to look at it
before taking further action.  A white list filter's concept is there are
people and lists that don't send you spam; their addresses are put onto a
white list.  Everyone on that white list goes into your inbox, everyone
else goes into spam folder.  A further wrinkle on a white list filter is
the spam2go folder.  See when I search spam, I find some good e-mail in it
that won't be picked up by my white list just yet.  So I deal with that
e-mail accordingly and put the real spam into spam2go and then that
empties the spam folder.  That way when I next look at spam folder I'm not
looking at any old messages since any old spam was already put into
spam2go.  What happens to the contents of spam2go?  Well I enable display
of full headers and select all messages when spam2go count gets to 50
messages happens every two days now and forward all messages as a mime
digest to uce@ftc.gov.  Then I delete all messages from spam2go so it only
gets new spam for uce@ftc.gov to check out.  The federal trade commission
sometimes takes some action against spam artists and corporations that
sponsor spam when legal grounds can be found.GNU Linux a real operating
system with a clu
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
