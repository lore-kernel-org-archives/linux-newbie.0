From: Ray Olszewski <ray@comarre.com>
Subject: Re: permission for alias file
Date: Mon, 06 Jan 2003 09:09:23 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030106090035.021e3860@celine>
References: <200301061652.h06GqwTo000410@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301061652.h06GqwTo000410@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- You might try setting *more* restrictive permissions on the 
aliases file. I don't recall which MTA RH 8.0 uses (sendmail? exim?), but 
alias-expansion code in MTAs often checks to make sure a specified alias 
file can be edited ONLY by its owner, as a security measure to avoid 
problems of misuse of the alias by others. I admit that the actual error 
message you report seeing ("Permission denied") is an odd one for this 
check to produce, but you might want to check the possibility anyway. Try 
mode 644, instead of the 777 you say you are using, and see if that helps.

It is also possible that you have your MTA configued to disallow pointing 
aliases to files. I believe some MTAs can do that, as a security option. 
The details would depend, of course, on which MTA you are using.

PS -- Your system is sending that garbled 
"To:  linux-newbie@hartford-hwp.com" header again.

At 11:52 AM 1/6/03 -0500, Haines Brown wrote:
>When I use /etc/aliases for single address, it works ok (as I'm now
>doing), but if there is a pointer to a file of addresses, it fails
>because of permisions.
>
>For example, in /etc/aliases, I have a pointer to
>
>     test: :include:/home/brownh/aliases/test.aliases
>
>But when I use it (after upgrading to RH 8.0), I get:
>
>      ----- The following addresses had permanent fatal errors -----
>   :include:/home/brownh/aliases/test.aliases
>     (expanded from: <test@hartford-hwp.com>)
>
>      ----- Transcript of session follows -----
>   550 5.2.4 :include:/home/brownh/aliases/test.aliases... Cannot open
>     /home/brownh/aliases/test.aliases: Permission denied
>
>Bothe the aliases directory and the test.aliases file are rwxrwxrwx
>(wide open for test purposes).



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
