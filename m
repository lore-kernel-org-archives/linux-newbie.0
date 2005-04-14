From: qwms-avib@dea.spamcon.org
Subject: Re: remote admin
Date: Fri, 15 Apr 2005 07:47:15 +1200
Message-ID: <20050415074715.5845d80b.qwms-avib@dea.spamcon.org>
References: <200504142239.24316.wheds8@ms66.hinet.net>
	<200504141040.02011.eric@cisu.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504141040.02011.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hgf4-wgsm@dea.spamcon.org
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

Eric Bambach wrote:
>
> Ssh is the de facto standard for remote administration 
> but It lacks the ability to give you a GUI interface. 

Getting a GUI interface for ssh is easy.  Simply start 
ssh from an xterm, login to the remote server and execute 
xterm.  This will cause a remote xterm to appear on your 
local X display.  

Instead of a remote xterm, you can start a remote 
window manager (or other X application) the same way.

Cheers,
Steven
 





____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
