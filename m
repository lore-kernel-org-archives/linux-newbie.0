From: Amin <amin@siriusbb.com>
Subject: [Fwd: Re: accessing email via POP3]
Date: Wed, 01 Dec 2004 14:05:09 +0600
Message-ID: <41AD7B35.7030701@siriusbb.com>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------010705010506010004080904"
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.
--------------010705010506010004080904
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Sorry about that. I have to learn to hit the Reply All button for 
linux-newbie. I'm forwarding my reply to the list.

--
Yawar Amin

--------------010705010506010004080904
Content-Type: message/rfc822;
 name="Re: accessing email via POP3.eml"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="Re: accessing email via POP3.eml"

Message-ID: <41AD6CBF.8040808@siriusbb.com>
Date: Wed, 01 Dec 2004 13:03:27 +0600
From: Amin <amin@siriusbb.com>
User-Agent: Mozilla Thunderbird 0.8 (X11/20040913)
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: karthikv@Alum.Dartmouth.ORG
Subject: Re: accessing email via POP3
References: <33076594@newdoc.Dartmouth.ORG>
In-Reply-To: <33076594@newdoc.Dartmouth.ORG>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Karthik Vishwanath Adv03 wrote:
> Hello,
> 
> I receive mail on this account that can be accessed via
> POP3. I used to use fetchmail as my mail-fetcher on an old
> machine to do this. I am trying to do the same from another
> machine that runs Redhat 9 (Linux 2.4.20-8) and seems like I
> cannot decipher how exactly to do this (perusing the
> fetchmail man page had me really confused). My .fetchmailrc
> looks like this: 
> ---------
> set syslog
> set daemon 10
> poll newdoc.dartmouth.org and options no dns keep
> user 'karthikv' there is 'karthik' here options 
> 
> ---------
> 
> $ fetchmail 
> fetchmail:/home/karthik/.fetchmailrc:6: parse error at user
> 
> How can I fix this? (BTW, I had a whole load of dependency
> issues on trying to install fetchmailconf...)
> 
> 
> Thanks! 
> 
> -K

Another thing: instead of using a .fetchmailrc file, you could try 
supplying all the options to the fetchmail command line itself, thus:

$ fetchmail --keep --protocol POP3 --username karthikv 
newdoc.dartmouth.org

Note: The above command should be all in one line, and there 
should be a space between `karthikv' and `newdoc.dartmouth.org'. 
Also, I'm not sure why you're using `no dns' -- to get a speed 
boost? In that case you could skip the hostname and just use the 
IP address, 129.170.16.86.

Of course, first you have to make sure fetchmail doesn't see a 
.fetchmailrc file in your home directory, so rename it to 
fetchmailrc or something like that.

HTH,

--
Yawar Amin



--------------010705010506010004080904--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
