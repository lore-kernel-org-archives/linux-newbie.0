From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: SOLVED: Some users locked out of ssh and sftp?
Date: Tue, 15 Mar 2005 18:13:08 -0800 (PST)
Message-ID: <20050316021308.55227.qmail@web53610.mail.yahoo.com>
Mime-Version: 1.0
In-Reply-To: 6667
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hi chuck,

thanks for your information.
i was quite hesistant to delete that line, that was
why i wanted some confirmation.
it is already ok now.

this is not eve.
sorry eve :)
it just happen that i have the same problem that
moment, and while taking some break, i happen to read
this thread. that was why i asked as to how i would
modify the known_hosts file.

donald

--- chuck gelm <chuck@gelm.net> wrote:
> Donald Duckie wrote:
> > I got this error message as shown below  . . . 
> > How do I change the /root/.ssh/known_hosts file?
> > It seems encrypted . . .
> 
> Hi, Donald:
> 
>   The file is not encripted, but it contains an
> encription key for
> each remote hostname.  There is a line for each
> 'ssh' host that
> you have sucessfully connected.  If the remote
> 'host' has changed
> its encription key and you already have a line with
> the old
> encription key, 'ssh' will fail with that message.
> 
> Solution:
> 
>   Use a 'text' editor and open
> /root/.ssh/known_hosts.
> Delete the line that starts with the remote
> hostname.
> Save and exit.  (or 'rm known_hosts')
> 
> 'ssh' to that hostname.
> Answer 'yes' when prompted.
> 
> HTH, Chuck
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 


		
__________________________________ 
Do you Yahoo!? 
Take Yahoo! Mail with you! Get it on your mobile phone. 
http://mobile.yahoo.com/maildemo 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
