From: Amin <raihan@citech-bd.com>
Subject: Re: Hiyas
Date: Wed, 12 Mar 2003 17:49:22 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030312114922.GB1112@localhost.localdomain>
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

> Is there a way to set the make xconfig back to a default or what the
> original kernel on my system is? I can still boot with the original

[...]

I just read the documentation myself, in fact, and
discovered that one command will do exactly what you want:

make oldconfig

It'll restore everything to the ``old'' settings.

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
