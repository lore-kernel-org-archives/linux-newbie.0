From: Amin <raihan@citech-bd.com>
Subject: Re: Text Reformatting
Date: Mon, 19 May 2003 18:17:50 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2414.1053346670@localhost.localdomain>
References: <pfheiss@philonline.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Peter <pfheiss@philonline.com> 
   of "Mon, 19 May 2003 10:25:50 +0800." <20030519022555.DE918103AE@pfheiss> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org, raihan@citech-bd.com

Hi,

> posting the question. It's just remains Greek to me.
> 
> vim -ggVG gives error -G command unknown. vim -ggVg file just opens the file 
> as is.

Sorry --- I should have given a little more background on
Vim.  When I said to ``run a command'', I meant open your
file in Vim (preferably from the command line):

     vim file.txt

Then, running the Vim commands.  This involves typing a
sequence of characters in quick succession, one after the
other:

	gggqG

These will hopefully format your file correctly.  If you
don't like the result, you can easily abort by typing:

      :q! [ENTER]

And by [ENTER] I mean the [ENTER] key on the keyboard.  You
might have [RETURN] or whatever.  Same effect.

Again, sorry about my earlier brevity.  You naturally
assumed Vim was a simple command-line tool like ``sed'', and
tried to pass it the command as an argument.  It is actually
a text editor.

HTH,
Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
