From: Chris Rose <offline@shaw.ca>
Subject: MySQL not getting along with MovableType in RH8
Date: Sat, 02 Nov 2002 13:20:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c282ad$5319fb80$4b01a8c0@deadbox>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

I'm trying to get MovableType 2.51 installed on my Redhat 8 server at
the moment, and I'm running into a problem with the MySQL interface.
When I try to run mt-load.cgi I get the following error output:

Loading initial data into system...
Loading database schema...

   Loading blog...

An error occurred while loading data:

Unknown column 'blog_ping_blogs' in 'field list

A fellow on the MovableType support forum suggested that I might have an
"outdated schemas/mysql.dump file", and that I update it with the latest
distribution, but I don't know how to go about doing that, since when I
try to apt-get install mysql, I'm informed that I already have the
latest version offered by Redhat. (yes, I have apt-rpm installed)

Any suggestions, folks?


Chris R.
======
Listening to the sound of silence

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
