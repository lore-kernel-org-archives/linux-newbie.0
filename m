From: Ray Olszewski <ray@comarre.com>
Subject: Re: smtp alternatives
Date: Sat, 12 Feb 2005 22:35:28 -0800
Message-ID: <5.1.0.14.1.20050212221842.0b994008@celine>
References: <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain>
 <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain> <420E4F72.7090602@cwazy.co.uk>
Mime-Version: 1.0
In-Reply-To: <420E4F72.7090602@cwazy.co.uk>
References: <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain>
 <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:48 PM 2/12/2005 -0500, Jim Nelson wrote:
>James Miller wrote:
>>In setting up a system for a friend (Mepis installation) and finding him a
>>cheap ISP (dialin), I've discovered his provider does not run an smtp
>>server. So, I'm looking for alternatives so he'll be able to send mail
>>from his machine. I've always only ever used smtp, and it's the only sort
>>of mail transport scheme I can profess to have much of a grasp on (how it
>>works, how to set it up). I've heard about things like sendmail and maybe
>>qmail: aren't these alternatives for someone who can't, or doesn't want
>>to, use an smtp server? Should I be looking to these as potential
>>solutions to the problem of not having access to an smtp server? Are there
>>other alternatives for sending email? I think I've heard that mail not
>>sent through an smtp server has a greater chance of getting blocked by
>>spam filters: is this true? Feedback on this query will be appreciated.
>>Thanks, James
>
>You absolutely have to send mail through a smtp server, or it doesn't get 
>to the addresee.  This ISP has one, they just don't let customers connect 
>directly to it.  Check and see if they have a POP3 or IMAP server set up - 
>the settings that they have for Outlook are the closest to the ones that 
>Mozilla and Epiphany use.
>
>Failing that, you'll have to find third-party email (if all they offer is 
>a web-based interface, etc).  cwazy.co.uk isn't bad - I just had to go 
>across the pond to get it (I'm American, but this was the best no-frills 
>POP3 system I found, since my ISP was really boneheaded about non-US email).

What Jim says is sort of true, but still a bit misleading.

Certainly there needs to be an SMTP server somewhere in the setup, but it 
need not be the ISP's own SMTP server in all cases.

Alternative one: You can run your own SMTP server. The programs James asked 
about -- sendmail and qmail -- are themselves smtp servers. Other familiar 
ones on Linux systems are exim, smail, and smtpd.

The problem with this option is that a lot of SPAM-filtering software keeps 
track of dial-up address pools and will not accept SMTP connections 
directly from those addresses. Those sites enforce the rule that a dialup 
customer has to send e-mail through his or her ISP's SMTP relay. This is 
the problem James is describing above, although he got the details a bit wrong.

Alternative two: Use a Web-based e-mail service (like Yahoo Mail, or any of 
a zillion others ... find a list at http://www.emailaddresses.com/) and 
connect to the service using your Web browser. The service provider still 
uses SMTP servers, but you don't have to deal with them. Of course, you 
also do not have local (off-line) access to your mail or tools for 
composing mail, so this is not always a good idea for dialup customers.

Alternative three: Use an SMTP forwarder (relay) other than the one 
provided by your ISP. This sort of service is less common than it once was, 
again due to SPAM issues. If any still exist, the URL above will have 
listings for them. Use with Linux may be a bit tricky, if they want (for 
instance) POP-before-SMTP authentication ... I don't offhand know how to do 
that in Linux, but there is probably an app for it. Surely the standard 
X-based browsers can do this, no?

Alternative four: Not really an alternative, but check harder with your 
ISP. It's rare for an ISP really not to provide its customers with a way to 
send and receive e-mail, and I'd think it more likely that James, or his 
friend, misunderstood something the ISP said than that this ISP really 
doesn't provide for e-mail the standard way. It does, probably, have some 
sort of password (e.g., POP-before-SMTP) authentication, to restrict access 
to the forwarder ... so the same Linux issue may arise here. These days, 
some forwarders throttle connections, so you can send mail in normal, 
single-user quantities, but not in the volumes that support SPAM.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
