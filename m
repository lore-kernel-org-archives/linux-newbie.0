From: "John Anthony Kazos Jr." <jakj@j-a-k-j.com>
Subject: Re: kernel stack problem
Date: Tue, 3 Apr 2007 21:51:59 -0400 (EDT)
Message-ID: <alpine.DEB.0.83.0704032150010.10010@sigma.j-a-k-j.com>
References: <b115cb5f0704031750g52b68cc6ncdecd6f3f94afbdf@mail.gmail.com>
 <1175648255.4689.3.camel@core2duo.localdomain>
Mime-Version: 1.0
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1175648255.4689.3.camel@core2duo.localdomain>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: TEXT/PLAIN; format="flowed"; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Fabiano Ramos <fabiano.ramos@gmail.com>
Cc: Rajat Jain <rajat.noida.india@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

> This is wrong. Although the scope is at _block_ level, all variables are
> allocated on the stack at _function_ level. So, when entering func() all
> variables within it, including x and y, are allocated.

But this doesn't make sense. Why would the compiler not immediately 
optimize both variables into the same allocation? It seems obvious to me 
that the amount of space pushed onto the stack when the function is 
entered should be the maximum space needed by any combination of local 
variables in-scope at any time. GCC wouldn't be that stupid, would it?

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

