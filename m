From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Variable Quoting
Date: Mon, 14 Oct 2002 14:38:07 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004a01c273b0$d77a73c0$64fea8c0@pkrausxp>
References: <200210142055.11942.linux-newbie@jimmo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210142055.11942.linux-newbie@jimmo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@jimmo.com, linux-newbie@vger.kernel.org

That is what I did.

---Directory is real and does exist and path verified using file
completion.
Here is an example.
string="/My Documents"
ls "$string"

Does work as it is intended.

Now with this change
string="My Documents/*"
cp "$string" /tmp

cp: cannot stat 'My Documents/*':no such file or directory
So then I for kicks I tried.

cp "My Documents/*" /tmp
Produces the same error.

So just to make sure that it was not a typo in path I tried.
cp My\ Documents/* /tmp

And this worked.

So is the problem with cp? Since the same syntax seems to work with all
other apps?
Is cp not capable of taking a double quoted path with spaces?

Redhat 7.3 in case it helps. 


-----Original Message-----
From: James Mohr [mailto:linux-newbie@jimmo.com] 
Sent: Monday, October 14, 2002 2:55 PM
To: Paul Kraus
Subject: Re: Variable Quoting


On Monday 14 October 2002 19:59, Paul Kraus wrote:
> Ok I found out how to prevent it for separating the words as different

> arguments. I need to encapsulate the variable with quotes.
>
> How ever I am needing to do this with the cp command. When I try 
> double quoting a path with spaces in it for cp I get an error. If I 
> make the string somevariable="somediretory/somesubdirectory/some\ 
> directory\ with\ spaces/*" Then when substition takes place
> cp $somevarable $somedestination
> Then it should read
> cp /somedirectory/somesubdirectory/some\ directory\ with\ spaces/*
/tmp
> This is correct syntax for cp and if I type it out or use file name
> completion that is the format the shell uses. However when done this
way
> I also get an error.
>
> It appears that substition is taking place but it is handling the 
> escape sequence wrong.

Hi Paul!
If you assign a value to a variable using quotes, then the value is
assigned 
** without** the quotes. This is because the shell gets ahold of it a
reduces 
each command to "tokens" and one of the tokens is the text **inside**
the 
quotes. Also the expansion takes place by the shell before it is passed
on to 
the copy command. 

Look at these examples:
mdkir 'My Documents'
DIR='My Documents'
ls $DIR
ls: My: No such file or directory
ls: Documents: No such file or directory

Makes sense as the variable $DIR contains the literal text, including
the 
space. The command that is execute is:

ls My Documents

and neither of these exists. If you try:

ls -ld "$DIR"
drwxr-xr-x    2 root     root           48 Oct 14 20:44 My Documents

This works because the $DIR is expanded by the shell and it plus the
quotes 
become the "token" which is then passed to the the ls command. 

Your examples will work as long as you ensure that the variables are
include 
inside of quotes, for example, this works:

cp "$somevarable" "$somedestination"

Regards,

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
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
