From: david@lang.hm
Subject: Re: Question on syslogd and syslog
Date: Tue, 28 Jun 2011 12:41:10 -0700 (PDT)
Message-ID: <alpine.DEB.2.02.1106281238210.7935@asgard.lang.hm>
References: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Cc: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

you would be creating a completely different over-the-wire protocol for 
your syslog messages.

however, note that newer syslog daemons (syslog-ng and rsyslog for 
example) allow you to do filtering on just about anything in the message, 
not just the facility and severity.

David Lang

On Tue, 28 Jun 2011, Sri Ram Vemulpali wrote:

> Date: Tue, 28 Jun 2011 14:11:59 -0400
> From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
> To: linux-kernel-mail <linux-kernel@vger.kernel.org>,
>     linux-newbie@vger.kernel.org
> Subject: Question on syslogd and syslog
> 
> Hello All,
>
>    I am looking to modify number of facilities available in syslog so
> that for my application I can have much more array of them at disposal
> of my need. So currently only LOG_LOCAL0 - LOG_LOCAL7 are defined for
> user, what if I want to extend them, is there a way I can extend them.
> Or should I go ahead and modify the source code of syslog. Can any
> please point me in right direction and where can I get syslogd and
> syslog source code. Thanks in advance.
>
>
