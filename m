From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: newbie
Date: Tue, 20 Aug 2002 06:42:44 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208200631470.8397-100000@Consulate.UFP.CX>
References: <20020819223018.79961.qmail@web40015.mail.yahoo.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020819223018.79961.qmail@web40015.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Venkat Raghu <venkatraghu2002@yahoo.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Venkat.

> I have a bash script which modifies some environment variables and
> does some other housekeeping things. But problem is that when script
> finishes running, new values of environment variables are no longer
> visible in parent shell. So what should I do so that these new
> values are visible in parent.

Run your script using ". file.sh" or "source file.sh" to do that.

> I don't want to run as ". file.sh".
> I have to run it as "file.sh" only.

Unfortunately, if you run it as "file.sh" only, you start up a new
shell and lose the ability to change the settings in the parent shell. 
This is a deliberate part of bash's design, and is to isolate the new
shell from the existing one so the new shell can make changes to
important environment variables to accomplish its task without causing
problems for later commands.

Another option would be for your script to drop the relevant commands
into the keyboard buffer for the parent shell to execute when the new
shell exits. Whilst that might be an interesting exercise, it's also a
pointless one when the needed functionality is already present.

If your script is one that you want executed every time you log in, then
include the relevant source command in ~/.bashrc and it will be loaded
at login time without problem.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
