From: Mike Houston <mikeserv@bmts.com>
Subject: Re: Kernel 2.6.10 Can't Open Initial Console on FC3
Date: Sat, 1 Jan 2005 02:13:08 -0500
Message-ID: <20050101021308.5a906479.mikeserv@bmts.com>
References: <3khdbt$ffuljg@mxip05a.cluster1.charter.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3khdbt$ffuljg@mxip05a.cluster1.charter.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Joseph D. Wagner" <technojoecoolusa@charter.net>
Cc: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hello,

It is because you need to use an initrd. Your device nodes in
FC3 are being managed by udev, and you otherwise won't have a
/dev/console or /dev/hda at that stage of the boot. There's also the
matter of LVM, if your root partition is a logical volume. Another
reason you might need an initrd.

Your mkinitrd script in FC3 will take care of these matters for you.

Mike

On Thu, 30 Dec 2004 23:00:14 -0600
"Joseph D. Wagner" <technojoecoolusa@charter.net> wrote:

> The newly compiled kernel gets through everything OK including
> mounting the root file system as read-only EXT3.  However, it
> freezes on the very last line, which says:
> 
>      Warning: unable to open an initial console
> 
> If I switch back over to the kernel that came with the distribution,
> everything boots fine, so I'm assuming the problem lies in the way I
> configured the kernel.
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
