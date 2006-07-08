From: Frederik Deweerdt <deweerdt@free.fr>
Subject: Re: Script to check a process
Date: Sat, 8 Jul 2006 12:36:41 +0200
Message-ID: <20060708103641.GA1933@slug>
References: <BKEKJNIHLJDCFGDBOHGMAEBKDCAA.abum@aftek.com> <Pine.LNX.4.64.0607071616540.23767@turbotaz.ourhouse> <200607080109.48851.diegolima.br@gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200607080109.48851.diegolima.br@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Diego Alencar Alves de Lima <diegolima.br@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sat, Jul 08, 2006 at 01:09:48AM -0300, Diego Alencar Alves de Lima wrote:
> How can I make a script that will check to see if a certain process is 
> running? The process name is "nspluginviewer" and there should be 3 of it 
> running (each one called from a konqueror process).  Then it would reboot the 
> computer if it didn't detect the three running.
> 
There are many ways to do it, one could be:

while [ $(pidof <command> | awk '{print NF;}') -eq <nr occurences> ]; do sleep 1; done ; shutdown -r now

Regards,
Frederik
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
