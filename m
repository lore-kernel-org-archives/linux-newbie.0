From: John Aspinall <jgaspinall@rcn.com>
Subject: Re: parsing a string
Date: Mon, 09 Aug 2004 22:12:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41182F0A.9070807@rcn.com>
References: <1092096481.411811e1bc136@webmail.dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1092096481.411811e1bc136@webmail.dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dave@dpomeroy.com
Cc: linux-newbie@vger.kernel.org

dave@dpomeroy.com wrote:
> I'm new to bash and am trying to write a script that puts 3 substrings in 3
> variables.  I have a string with password,firstname,lastname. and I need it to
> be in 3 variables.

I'm just an apprentice here, but I think "cut" is a good choice of tool.

$ echo 'password,firstname,lastname' | cut -d',' -f1
password
$ echo 'password,firstname,lastname' | cut -d',' -f2
firstname
$ echo 'password,firstname,lastname' | cut -d',' -f3
lastname

-d is the field delimiter, -f says which fields you want

John

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
