From: chuck gelm <chuck@gelm.net>
Subject: Re: SOLVED: Some users locked out of ssh and sftp?
Date: Tue, 15 Mar 2005 09:54:10 -0500
Message-ID: <4236F712.6000508@gelm.net>
References: <20050315092308.63122.qmail@web53603.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <20050315092308.63122.qmail@web53603.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Donald Duckie wrote:
> I got this error message as shown below  . . . 
> How do I change the /root/.ssh/known_hosts file?
> It seems encrypted . . .

Hi, Donald:

  The file is not encripted, but it contains an encription key for
each remote hostname.  There is a line for each 'ssh' host that
you have sucessfully connected.  If the remote 'host' has changed
its encription key and you already have a line with the old
encription key, 'ssh' will fail with that message.

Solution:

  Use a 'text' editor and open /root/.ssh/known_hosts.
Delete the line that starts with the remote hostname.
Save and exit.  (or 'rm known_hosts')

'ssh' to that hostname.
Answer 'yes' when prompted.

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
