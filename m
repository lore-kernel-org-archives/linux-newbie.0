From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: FW: Perl
Date: Wed, 4 Dec 2002 13:27:28 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <01a701c29bc2$cd5a19b0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Its perl hence the subject :)

$5 is the 5th memory of a regular expression. The second statement then
uses a regular expression to replace " " with "\ " to correct paths.

$5=Somefolder/some secondfolder
$path would get Somefolder/some\ secondfolder.

I want to condsense this into one statement. I am probably off topic
here but I have seen others post about basic programming issues.

Thanks,
Paul

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of ichi@ihug.co.nz
Sent: Thursday, December 05, 2002 1:56 AM
To: Paul Kraus
Cc: linux-newbie@vger.kernel.org
Subject: Re: Perl


Paul Kraus wrote:
> 
> How can I make this assignment in one statement.
> I know its going to be something easy.
> $path=$5;
> $path=~s/ /\\ /g;

I don't understand.  Is this part of a bash script?
It looks like you a trying to assign the fifth parameter 
(path=$5) to a variable named path (which BTW is not the
PATH) and then manipulate it in some way (something to do 
with \ I think).

Perhaps this is some language that I am unfamiliar with?
If so, I apologize.  However, if is bash, I suggest you 
explain in words what you want to do, and I will try to
script it.

Cheers,
Steven

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
