From: Joseph Spainhour <spainhou@coastalnet.com>
Subject: Re: Source Install - Service Start stop restart
Date: Thu, 19 Sep 2002 11:42:14 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.GSO.4.20.0209191057190.9272-100000@falcon.coastalnet.com>
References: <000801c25fe1$b39e1fc0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c25fe1$b39e1fc0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Paul,

  Some software comes with startup scripts, some does not. look in the
souce driectory and look for a scripts, or a contrib
directory. Normally if the software has such a script, it will be
located in there.
  You are the admin. If after you have tested the software and find it
functional you should then decide how to start and stop the software,
or use one of the premade scripts, if included in the source.
  The pure magic of Unix is that YOU can decide how to do anything and
everything. There are very few rules. You just need to learn the ones
that go with your distribution.
  Distributions are in a way, rulesets. This file goes here, this
script does this at startup. Package managment is handled this way.
This is basicly the only place that they all differ. They all run
the Linux kernel, they all have some sort of init. Keep in mind 
this is very general.

Joseph

 On Thu, 19 Sep 2002, Paul Kraus wrote:

->When installing an app by source I have notice the don't usually include
->the startup scripts. Samba is an example of this. How can get/write a
->script that will all for the "service app start,stop,restart" to work
->for programs I install from source. I know I can write a script but
->looking at the ones that the rpms install(still using samba as my
->example) they seem pretty involved.
->
->Paul Kraus
->Network Administrator
->PEL Supply Company
->216.267.5775 Voice
->216-267-6176 Fax
->www.pelsupply.com
->
->-
->To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
->the body of a message to majordomo@vger.kernel.org
->More majordomo info at  http://vger.kernel.org/majordomo-info.html
->Please read the FAQ at http://www.linux-learn.org/faqs
->

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
