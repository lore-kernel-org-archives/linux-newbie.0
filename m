From: Amin <raihan@citech-bd.com>
Subject: Re: Hiyas
Date: Wed, 12 Mar 2003 17:42:49 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030312114249.GA1112@localhost.localdomain>
References: <006801c1e757$b0a13350$0301a8c0@netlyncs.com> <3E6EDD42.A2C9BC08@dsl-only.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3E6EDD42.A2C9BC08@dsl-only.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, Mar 11, 2003 at 11:09:54PM -0800, pshook wrote:

[...]

> Is there a way to set the make xconfig back to a default
> or what the original kernel on my system is? I can still
> boot with the original

[...]

Try looking in /usr/src/linux-2.4/configs (I'm assuming
you're using the 2.4-kernel series).  This directory
contains lots of configuration files (these are the files
that xconfig uses to store all the kernel module and
built-in parts information).  These config files are
defaults that were lovingly crafted by the folks at Red Hat,
and include those modules that most people are most likely
to need.  You probably need one of these.

You're very lucky Red Hat provides great documentation at
their website.  You need to read it!  Go to
http://www.redhat.com/docs/manuals/linux/ and get the
``Customization Guide'' for your version.  In that document,
look for the appendix where they describe how to build a
custom kernel, and read it through.  Note that I've got
RH8.0, and can only speak for the ``Customization Guide''
for that version.  However, I have no reason to believe
it'll be that different from those of previous versions.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
