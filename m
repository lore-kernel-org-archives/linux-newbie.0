From: Andries Brouwer <aebr@win.tue.nl>
Subject: Re: How to hide few disk file systems ??
Date: Mon, 27 Jan 2003 15:10:37 +0100
Sender: linux-fsdevel-owner@vger.kernel.org
Message-ID: <20030127141037.GB3156@win.tue.nl>
References: <3E35202F.44C4BDD2@npd.hcltech.com>
Mime-Version: 1.0
Return-path: <linux-fsdevel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3E35202F.44C4BDD2@npd.hcltech.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Narsimha Reddy CH <creddy@npd.hcltech.com>
Cc: linux-newbie@vger.kernel.org, linux-fsdevel@vger.kernel.org

On Mon, Jan 27, 2003 at 05:33:59PM +0530, Narsimha Reddy CH wrote:

>   I am having a linux system with a single hard disk.
> I have lot of important data on this hard disk. For
> experimental purpose I want to build a new kernel image
> from a source  which will contain modified code for file
> system implementation (the code contains some modifications
> to ext2 implementation). Also it may contain lot of bugs
> which may corrupt data on the disk. So, after loading the
> new linux kernel image, I want to make sure that my old
> data stored on the disk must be safe.

If your new code is buggy and corrupts random places of the
kernel, then the kernel may do random things, including
writing to random places on disk.

Maybe you can run your experimental kernel under User Mode Linux.

Andries
