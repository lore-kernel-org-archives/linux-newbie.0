From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Variable Quoting
Date: Mon, 14 Oct 2002 15:53:20 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <005201c273bb$594e0880$64fea8c0@pkrausxp>
References: <200210142158.20963.linux-newbie@jimmo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210142158.20963.linux-newbie@jimmo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@jimmo.com, linux-newbie@vger.kernel.org

Ok I lied. I understand why its not working but how should I workaround
it?
Do I have to have my script gather a list of the files and the pass it
the variable?
That sucks that I can not use a wildcard to just get all.

I have made these changes. Which I though would fix my problem.
string="My Documents/"
cp "${string}*" Which I thought would eliminate the problem. I guess I
am not understanding.


-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of James Mohr
Sent: Monday, October 14, 2002 3:58 PM
To: linux-newbie@vger.kernel.org
Subject: Re: Variable Quoting



On Monday 14 October 2002 20:38, Paul Kraus wrote:
<SNIP>
> Now with this change
> string="My Documents/*"
> cp "$string" /tmp
>
> cp: cannot stat 'My Documents/*':no such file or directory

Sure because the token that is passed to the cp command includes the
asterisk, 
it doesn't know that it should expand the asterisk (*) to the file
names, so 
it looks for a file with the literal name '*'. 

> So then I for kicks I tried.
>
> cp "My Documents/*" /tmp
> Produces the same error.

Same thing.

>
> So just to make sure that it was not a typo in path I tried. cp My\ 
> Documents/* /tmp
>
> And this worked.

Makes sense as the shell is now expanding the asterisks to the names of
the 
files. You don't see this because it is expanded internally. Create a
shell 
script that just does this copy and put "set -x" on the first list. This

should show you the expanded form before it is passed to cp.

> So is the problem with cp? Since the same syntax seems to work with 
> all other apps? Is cp not capable of taking a double quoted path with 
> spaces?

No, it is the fact that cp does not know to expand the asterisk. Plus
you are 
passing different things to the cp depending on what sets of quotes you
use.

> Redhat 7.3 in case it helps.
Actually the Linux distriubtion is pretty irrelevant in this case. In
fact the 
behavior would be the same on most any *NIX system, as it is standard
shell 
stuff. 

See if these explain more of the details for you:

http://www.linux-tutorial.info/cgi-bin/display.pl?20&0&0&0&3
http://www.linux-tutorial.info/cgi-bin/display.pl?22&0&0&0&3

regards,

jimmo

-- 
---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what
others think you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or
forums 
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
