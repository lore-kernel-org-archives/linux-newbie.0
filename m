From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: Variable Quoting
Date: Mon, 14 Oct 2002 11:38:40 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DAAF310.3060900@arrl.net>
References: <004201c2739b$220b5b90$64fea8c0@pkrausxp> <3DAAF1BA.1090205@arrl.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

> ( by the way....
> 
> you don't have to surround the variable name with braces unless it's
> right up against something else, as in
> 
> filename="test"
> cp somefile ${test}.txt
> 
> if it's seperated by white space they don't have to be there
> 
> )

oops - my face is red now.....

that should have been

filename="test"
cp somefile $(filename).txt


sorry
-jdr-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
