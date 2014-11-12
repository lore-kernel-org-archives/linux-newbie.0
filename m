From: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 1/1] ipc/mqueue.c: Drag unneeded code out of locks
Date: Tue, 11 Nov 2014 16:21:46 -0800
Message-ID: <20141111162146.6e72c3fb0858df4945096c47@linux-foundation.org>
References: <fae396b9bc15.545c5b55@langara.bc.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fae396b9bc15.545c5b55@langara.bc.ca>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca>
Cc: linux-kernel@vger.kernel.org, Davidlohr Bueso <davidlohr@hp.com>, Manfred Spraul <manfred@colorfullife.com>, "J. Bruce Fields" <bfields@redhat.com>, Doug Ledford <dledford@redhat.com>, linux-newbie@vger.kernel.org

On Fri, 07 Nov 2014 05:40:37 +0000 (GMT) Steven Stewart-Gallus <sstewartgallus00@mylangara.bc.ca> wrote:

> This shouldn't be too controversial. I simply looked for where there
> was a tiny bit of waste in the message queue code.
> 

It's probably better to do this as three or four separate patches.

> --- a/ipc/mqueue.c
> +++ b/ipc/mqueue.c
> @@ -278,16 +278,29 @@ static struct inode *mqueue_get_inode(struct super_block *sb,
>  		mq_bytes = mq_treesize + (info->attr.mq_maxmsg *
>  					  info->attr.mq_msgsize);
>  
> -		spin_lock(&mq_lock);
> -		if (u->mq_bytes + mq_bytes < u->mq_bytes ||
> -		    u->mq_bytes + mq_bytes > rlimit(RLIMIT_MSGQUEUE)) {
> +		{
> +			bool too_many_open_files;

Well yes, that's what EMFILE means but "too_many_open_files" doesn't
make sense in this context!


> +			long msgqueue_lim;
> +			unsigned long u_bytes;
> +
> +			msgqueue_lim = rlimit(RLIMIT_MSGQUEUE);
> +
> +			spin_lock(&mq_lock);
> +
> +			u_bytes = u->mq_bytes;
> +			too_many_open_files = u_bytes + mq_bytes < u_bytes ||
> +				u_bytes + mq_bytes > msgqueue_lim;
> +			if (!too_many_open_files)

This test isn't really needed.

> +				u->mq_bytes += mq_bytes;
> +
>  			spin_unlock(&mq_lock);
> +
>  			/* mqueue_evict_inode() releases info->messages */
> -			ret = -EMFILE;
> -			goto out_inode;
> +			if (too_many_open_files) {
> +				ret = -EMFILE;
> +				goto out_inode;
> +			}
>  		}
> -		u->mq_bytes += mq_bytes;
> -		spin_unlock(&mq_lock);
>  
>  		/* all is ok */
>  		info->user = get_uid(u);
> @@ -423,44 +436,60 @@ static int mqueue_create(struct inode *dir, struct dentry
> *dentry,
>  				umode_t mode, bool excl)
>  {
>  	struct inode *inode;
> -	struct mq_attr *attr = dentry->d_fsdata;
> -	int error;
> +	struct mq_attr *attr;
>  	struct ipc_namespace *ipc_ns;
> +	int error = 0;
> +
> +	if (!capable(CAP_SYS_RESOURCE)) {
> +		error = -ENOSPC;
> +		goto finish;
> +	}

Thatsabug.  It only requires CAP_SYS_RESOURCE if we're trying with
queues_count >= queues_max.

