From: "Sergey V. Burchu" <sayd@joker.botik.ru>
Subject: hm.. again about writing to files from kernel
Date: Wed, 10 Sep 2003 03:33:03 +0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030909233303.GA21519@joker.botik.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello.
I understand this question is asked again and again...
But I'm a newbie :)

But I want to tell I want to do:

I need info about traffic of every user on my linux box.
I looked through list of available software but ... :(

So I decided to make if myself. Main idea was quite simple:

When socket is created we can know uid of user who is trying to create
socket. So I have to add rx and tx counters to data structures and
simply count all incoming/outgoing data and when socket is closing
just to dump this info, for example to syslog. It works fine but my 
syslog grows up to some G... :( 
So I have to find a way to dump info which uses less disk space.
I think the best way is to dump directly to logfile and dump binary data,
for example some struct. 
So I needed a way to write to a file from inside kernel.
I wanted it configurable but I understand that it's not good to 
parse config inside kernel. So I use /proc:
Userspace program opens file for writing, gives FD to kernel through /proc 
and sleeps for a time. Inside kernel I use FD to locate "struct file" 
from "current" pointer and save it for feature use. 
So now I have a way to write to file: file->f_op->write(..) or 
generic_file_write(..).
I use it when socket is closed. It works.. for me without any oops.

But I wanted to improve this:
If my linux box crashs I lost some info from sockets what was
alive for a long period of time... Or I lost info from sockets in listening
state. So I wanted to do a periodical dump of info to my logfile.
So I used timer to do it. But timer_func is executed in another context
or something else ... so now I have a panic(). As I can see from oops 
it complains about schedule in interrupt. 

So my questions are:
Is my way of dumping correct? If yes where i can find a bug or ... If no 
where I can read about better way? Or tell me here...

Thanks! :)
-- 
	Burchu Sergey.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
