From: "J." <mailing-lists@xs4all.nl>
Subject: Re: accessing email via POP3
Date: Thu, 2 Dec 2004 02:29:22 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412020213010.21168-100000@hestia>
References: <33117736@newdoc.Dartmouth.ORG>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <33117736@newdoc.Dartmouth.ORG>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 1 Dec 2004, Karthik Vishwanath Adv03 wrote:

> Thanks for all responses -- Ray, I had removed a couple of
> comments from the pasted .fetchmailrc in the email composer.
> Hence the discrepancy about line number errors. :-?
> 
> Following Amin's advice I tried to run fetchmail from the
> cmd-line and I could'nt authenticate myself (I am 100% sure
> about keying in the correct passwd):
> 
> $ fetchmail --keep --username "karthikv" newdoc.dartmouth.org
> Enter password for karthikv@newdoc.dartmouth.org: 
> fetchmail: Authorization failure on
> karthikv@newdoc.dartmouth.org
> fetchmail: Query status=3 (AUTHFAIL)
> 
> What is going on here? Please advice on how to proceed next. 

I checked dartmouth.org's email-admin section and it says you have to
look up the corrosponding pop3 server for your username. So I did that for
your name..

SETTINGS: User: Karthik Vishwanath Adv03
Incoming (POP3) Server: newdoc.dartmouth.org
Outgoing (SMTP) Server: newdoc.dartmouth.org

Ok, you seem to have the right pop3 server.

telnet newdoc.dartmouth.org 110
Trying 129.170.16.86...
Connected to newdoc.dartmouth.org.
Escape character is '^]'.
+OK BlitzMail POP3 Server Ready.

Ok, it's up to.. 

fetchmail --proto pop3 --username "karthikv" newdoc.dartmouth.org
Enter password for karthikv@newdoc.dartmouth.org:
fetchmail: Authorization failure on karthikv@newdoc.dartmouth.org
fetchmail: Query status=3 (AUTHFAIL)

Ok, it works.. Now I really think it has todo with your password.. Either
they forgot to update the system configuration or it's taking them a
while. Orrr.. your keyboard isn't working properly.. [CAPSLOCK] maybe ?
Or your connection is refused because you misspelled your username.
Enter your password in your .fetchmailrc, and then try it again. That way
you can be sure you typed the right password and it's not messed up.. 

g00dlUcK.. 

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
