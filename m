From: Mihamina Rakotomandimby <mihamina@gulfsat.mg>
Subject: Re: /proc/${PID}/cmdline parsing
Date: Thu, 3 Jun 2010 12:29:29 +0300
Message-ID: <20100603122929.0782ae55@pbmiha.malagasy.com>
References: <20100603092026.4807b1bb@pbmiha.malagasy.com>
	<20100603091935.GA15493@joel-laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20100603091935.GA15493@joel-laptop>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> Joel Fernandes <agnel.joel@gmail.com> :
>> If I launch a 
>>  $ watch find / -type f -name 'toto'
>> (it's a useless command just for the example)
>> and then I get the PID of this.
>PID of what? watch or find?

PID of "watch"

>> When I 
>>  $ cat /proc/${PID}/cmdline
>>  watchfind/-typef-nametoto
>> Yes, it's the command line, but I would like to parse it, in order to
>> display the launched executable + its arguments.
>> How to parse it?
>Could you be a bit more clear with your question?

I want to split "watchfind/-typef-nametoto" (the content
of /proc/${PID}/cmdline) to get "watch find / -type f -name toto" (the
command I issued above)

But I cannot figure out how to split it.
Would you know another place in the system I should look at?

-- 
       Architecte Informatique chez Blueline/Gulfsat:
    Administration Systeme, Recherche & Developpement
                                     +261 3456 000 19
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
