From: "Ahmed S. Darwish" <darwish.07@gmail.com>
Subject: Re: after effects of a kernel API change
Date: Thu, 18 Jan 2007 07:10:26 +0200
Message-ID: <20070118051026.GA29695@Ahmed>
References: <292693080701172015n736a269fl6945ba4fe19d8174@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080701172015n736a269fl6945ba4fe19d8174@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>, linux-kernel@vger.kernel.org

On Thu, Jan 18, 2007 at 09:45:04AM +0530, Daniel Rodrick wrote:
> Hi list,
> 
> Whenever there is a change in the kernel API (or a new API is
> introduced), all of the drivers that use the older API need to be
> changed (or recommended to be changed). I believe it is the
> responsibility of the person changing the kernel API, to change all
> the drivers that have found their way into the kernel code?
> 
> How does this happen? Because the person who brought the change in the
> API might not know the internals of all the drivers?
> 
> Is there any way volunteers like me can help in this exercise?

See the /APIchanges in the Kernel Janitors TODO list
http://kernelnewbies.org/KernelJanitors/Todo

Also: Documentation/stable_api_nonsense.txt

-- 
Ahmed S. Darwish
http://darwish-07.blogspot.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
