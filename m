From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: User in multiple groups
Date: Wed, 3 Jul 2002 12:21:55 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207031218080.19064-100000@orthanc.lemmerling.net>
References: <5.1.1.6.0.20020703021225.033b2200@shawmail.ed.shawcable.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20020703021225.033b2200@shawmail.ed.shawcable.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 3 Jul 2002, Chris Rose wrote:

> I'm trying to get one user account to be in multiple groups right now, and 
> i thought i had it licked (add the username to the end of the line in 
> /etc/group).  Problem is, it doesn't seem to have done the trick, since i 
> still can't write to files for which i have permission.  Is there something 
> else i need to do?  logout, or reboot?  Or does all that stuff take effect 
> immediately?

You'll just have to re-login. The file is interpreted on login.



Grtz

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
