From: "Ulrich =?ISO-8859-1?Q?F=FCrst?=" <liste3@vr-web.de>
Subject: Re: accessing email via POP3
Date: Wed, 1 Dec 2004 16:19:11 +0100
Message-ID: <20041201161911.12f40c9c@sarge>
References: <33076594@newdoc.Dartmouth.ORG>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <33076594@newdoc.Dartmouth.ORG>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 30 Nov 2004 15:54:46 EST Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG
(Karthik Vishwanath Adv03) wrote:
> My .fetchmailrc
> looks like this: 
> ---------
> set daemon 10
it's seconds you're giving as an argument. So that is: "poll every 10
seconds"

> poll newdoc.dartmouth.org and options no dns keep
As far as I know you can't use options here but only in the next line:

> user 'karthikv' there is 'karthik' here options 
a password is missing here.

the syntax is:
poll mail-server protocol POP3
 user "karthikv", with password "hidden" is user "karthik" here options\
no dns keep

But I guess you should use "no dns" so that fetchmail won't take it for
to words (not tested). 

> $ fetchmail 
> fetchmail:/home/karthik/.fetchmailrc:6: parse error at user
That says that you have an error in line 6. I guess it's the line
beginning with poll (don't use options here)

> 
> How can I fix this? (BTW, I had a whole load of dependency
> issues on trying to install fetchmailconf...)
I never could make much use of that program. I prefer to handle it via
editor.

hth 

Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
