From: Carl <carl@anexia.co.uk>
Subject: Re: permission for alias file
Date: Tue, 07 Jan 2003 11:17:31 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030107110951.01e9a090@pop3.demon.co.uk>
References: <200301061652.h06GqwTo000410@hartford-hwp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030106090035.021e3860@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


>>
>>
>>For example, in /etc/aliases, I have a pointer to
>>
>>    test: :include:/home/brownh/aliases/test.aliases
>>
>>But when I use it (after upgrading to RH 8.0), I get:
>>
>>     ----- The following addresses had permanent fatal errors -----
>>  :include:/home/brownh/aliases/test.aliases
>>    (expanded from: <test@hartford-hwp.com>)
>>
>>     ----- Transcript of session follows -----
>>  550 5.2.4 :include:/home/brownh/aliases/test.aliases... Cannot open
>>    /home/brownh/aliases/test.aliases: Permission denied
>>
>>Bothe the aliases directory and the test.aliases file are rwxrwxrwx
>>(wide open for test purposes).
>


I remember doing an :include: statement for a mate and we found that 777 permissions on the file
were OK but the directory must be set correctly. I seem to remember it couldn't have root ownership.

Check the sendmail faq at: http://www.sendmail.org/faq/section3.html#3.33

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
