From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Variable Quoting
Date: Mon, 14 Oct 2002 13:59:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004901c273ab$64c66280$64fea8c0@pkrausxp>
References: <3DAAF310.3060900@arrl.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DAAF310.3060900@arrl.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Jim Reimer' <wa5rrh@arrl.net>, linux-newbie@vger.kernel.org

Ok I found out how to prevent it for separating the words as different
arguments. I need to encapsulate the variable with quotes.

How ever I am needing to do this with the cp command. When I try double
quoting a path with spaces in it for cp I get an error. If I make the
string somevariable="somediretory/somesubdirectory/some\ directory\
with\ spaces/*"
Then when substition takes place 
cp $somevarable $somedestination
Then it should read
cp /somedirectory/somesubdirectory/some\ directory\ with\ spaces/* /tmp
This is correct syntax for cp and if I type it out or use file name
completion that is the format the shell uses. However when done this way
I also get an error.

It appears that substition is taking place but it is handling the escape
sequence wrong.



-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Jim Reimer
Sent: Monday, October 14, 2002 12:39 PM
To: unlisted-recipients:; no To-header on input
Cc: Paul Kraus; linux-newbie@vger.kernel.org
Subject: Re: Variable Quoting


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
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
