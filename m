From: Dan Zlotnikov <dzlotnik@artsmail.uwaterloo.ca>
Subject: Re: group
Date: Thu, 25 Dec 2003 08:52:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1072360334.3feaeb8e1ca4d@ecserv7.uwaterloo.ca>
References: <Pine.LNX.4.21.0312251127290.32132-100000@orthanc.lemmerling.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0312251127290.32132-100000@orthanc.lemmerling.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Quoting jos@lemmerling.nl:

> The last step is to change the default umask to 002 instead of 022 so all
> files will have the permissions set correctly (-rw-rw-r-- instead of
> -rw-r--r--). If you don't do this, user1 cannot change the files user2 has
> created.
> 
> The default umask can be set in the users profile
> (/home/user1/.bash_profile) with the line "umask 002".

Pardon me if I'm confused, but does that mean that any user can change the 
default umask at will?

Not to mention, this will apply to all of that user's files, not just the ones 
in /home/everyone/

"Early to bed and early to rise makes a man stupid and blind in the eyes."
--Mazer Rakham, from Orson Scott Card's "Ender's Game"




----------------------------------------
This mail sent through www.mywaterloo.ca
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
