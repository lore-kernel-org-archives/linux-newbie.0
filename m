From: chuck gelm <chuck@gelm.net>
Subject: Re: Adding to the PATH but not if already in $PATH
Date: Sat, 26 Feb 2005 17:44:51 -0500
Message-ID: <4220FBE3.80005@gelm.net>
References: <200502261016.28122.forestiero@qwest.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <200502261016.28122.forestiero@qwest.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dog Walker <forestiero@qwest.net>
Cc: linux-newbie@vger.kernel.org

Dog Walker wrote:
> I want to prepend a directory to my PATH in my $HOME/.bashrc and export the 
> result. But I only want it to happen once: iow, if a directory I want 
> prepended is already in the PATH, do not prepend it again.
> 
> Something like:
> 
>    if "/home/dw/bin" not in $PATH ; then
>    PATH=/home/dw:$PATH
>    export PATH
>    fi
> 
> The questions are: Is this the way one guards against multiple additions in 
> subshells? Is there a way to check for a substring?
Hi, DW:

-----
#!/bin/sh
#
# file /usr/local/bin/phwb.sh
#
# This prepends "/home/dw/bin/" to $PATH
PATH=/home/dw/bin:$PATH
export PATH
#end
-----

 >touch /home/dw/bin/phwb.sh
 >chmod +x /home/dw/bin/phwb.sh
 > phwb.sh

If there is already a path to /home/dw/bin,
then the 0 byte file /home/bin/dw/phwb is executed.
else: /usr/local/bin/phwb.sh is executed.


HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
