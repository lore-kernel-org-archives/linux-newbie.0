From: "Dog Walker" <forestiero@qwest.net>
Subject: Adding to the PATH but not if already in $PATH
Date: Sat, 26 Feb 2005 10:17:00 -0800
Message-ID: <200502261017.00466.forestiero@qwest.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I want to prepend a directory to my PATH in my $HOME/.bashrc and export the 
result. But I only want it to happen once: iow, if a directory I want 
prepended is already in the PATH, do not prepend it again.

Something like:

   if "/home/dw/bin" not in $PATH ; then
   PATH=/home/dw:$PATH
   export PATH
   fi

The questions are: Is this the way one guards against multiple additions in 
subshells? Is there a way to check for a substring?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
