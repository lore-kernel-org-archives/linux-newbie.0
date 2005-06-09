From: Stephen Samuel <samnospam@bcgreen.com>
Subject: Re: Change permissions of files to -xw +r for all other users
Date: Thu, 09 Jun 2005 09:11:29 -0700
Message-ID: <42A86A31.5040200@bcgreen.com>
References: <200505261844.36271.rhys@rhyshardwick.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505261844.36271.rhys@rhyshardwick.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: rhys@rhyshardwick.co.uk
Cc: linux-newbie@vger.kernel.org

Rhys Hardwick wrote:

>Hey there,
>
>I know this may be a case of RTM, but I am getting confused on it.
>
>I want to change the permissions of all the files in my home folder to read 
>only for all users but myself, but to leave directories executable so that 
>they can be opened.  I have had difficulty doing this for only other users, 
>and have ended up -xw for myself as well, even tyring many variations of the 
>-o tag.  Any help would be fantastic.
>  
>
What it sounds like you want to do is set permissions to read-only for 
others and group.

The proper command would be:

find ~ -type f -print0 | xargs -0 chmod og=r 

The '0' causes each filename to be terminated with a null  ('\0') rather 
than a
newline (which is actually legal in a filename)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
