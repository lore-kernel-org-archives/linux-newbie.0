From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Variable Quoting
Date: Mon, 14 Oct 2002 12:02:44 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004201c2739b$220b5b90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am having trouble quoting with variables. 

For example

source="/backup/My\ Documents/*"
cp ${source} /tmp

When I run this it will see everything up to my and bomb.
Now if I type the exact same path in the exact same way into the code

cp /backup/My\ Documents/*"
It will work fine.

This is not a real world example. I made this up for this email. I am
having this kind of problems with many commands.
Another better example would be...

subj="This is a test email"
mutt -s ${subj} someemailaddress < somemessage

When this is run This becomes the subject and the rest of $subj became
email address. I have also tried escaping the spaces with \ and it does
not work. But when entered directly into the command it works fine.


Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
