From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: setgid: Operation not permitted
Date: Tue, 30 Dec 2003 19:26:36 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0312301922460.18267-100000@orthanc.lemmerling.net>
References: <3FF07574.9077E589@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF07574.9077E589@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: chuck gelm net <chuck@gelm.net>

On Mon, 29 Dec 2003, chuck gelm net wrote:

> I am not familiar with 'su -'.  :-|

From the manpage of "su":

If the first argument to su is a dash (-), the environment will be 
changed to what would be expected if the user actually logged in
as the specified user. Otherwise, the environment is passed along,
with the exception of $PATH, which  is controlled  by PATH and SUPATH in
/etc/default/su. Additionally, the user's project ID is set if the dash
argument is present. See settaskid(2).


In most cases it's better to use the little dash... :)


grtz

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
