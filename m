From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: Variable Quoting
Date: Mon, 14 Oct 2002 11:32:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DAAF1BA.1090205@arrl.net>
References: <004201c2739b$220b5b90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Paul Kraus wrote:
> I am having trouble quoting with variables. 
> 
> For example
> 
> source="/backup/My\ Documents/*"
> cp ${source} /tmp

either protect with quotes -or- escape the space...

source="/backup/My Documents/*"     (quotes, no escape)
or
source=/backup/My\ Documents/*      (escape, no quotes)

don't do both.

> 
> When I run this it will see everything up to my and bomb.
> Now if I type the exact same path in the exact same way into the code
> 
> cp /backup/My\ Documents/*"
> It will work fine.
> 
> This is not a real world example. I made this up for this email. I am
> having this kind of problems with many commands.
> Another better example would be...
> 
> subj="This is a test email"
> mutt -s ${subj} someemailaddress < somemessage

protect the variable with quotes:

mutt -s "$subj" someemail.......

( by the way....

you don't have to surround the variable name with braces unless it's
right up against something else, as in

filename="test"
cp somefile ${test}.txt

if it's seperated by white space they don't have to be there

)

> 
> When this is run This becomes the subject and the rest of $subj became
> email address. I have also tried escaping the spaces with \ and it does
> not work. But when entered directly into the command it works fine.
> 
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
