From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: custom ram fs page cache issue
Date: Tue, 3 Aug 2010 12:08:31 +0800
Message-ID: <AANLkTikMctDhBRtEzb7eRTJg2cF3XyfeQaLoXp+S5Q_J@mail.gmail.com>
References: <AANLkTikShttGrxfnVlbUPet1uo_5kBf3e5U3ShVmpuzP@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type;
        bh=XkLy79cTkfvpqElDpqcTrlUIJjK4MsVH89jJP3yFNbk=;
        b=nVnrKpHv1JxulhzWgjBp2Zg8BjDpXs+fUGuG43smT7zYlG+XzNs2p+k8DiAIZuUB6t
         7xYJacPDwq3TJzDVj7GT26GnWqxatSW9vqGNWnvtj7JQfYD0FtFoIQP9GCjw9rt1rL33
         MVptW/BKrlJBXkFctZQE/Ta9HagNUftFqEdWA=
In-Reply-To: <AANLkTikShttGrxfnVlbUPet1uo_5kBf3e5U3ShVmpuzP@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ryan O'Neill <ryan@bitlackeys.com>
Cc: linux-newbie@vger.kernel.org

On Tue, Jul 20, 2010 at 4:02 AM, Ryan O'Neill <ryan@bitlackeys.com> wrote:
> I have developed a file system, it is a virtual memory file system
> with persistence -- the persistence essentially works by storing the
> fs data (from memory) into the slack space
> of ext3 files (We are working on CentOS 5.3 -- old I know). The
> following details should be sufficient.

wow....that is incredible.   one thing which i don't understand is this:

how are you going to sync your changes to the ext3 FS while the ext3
is mount LIVE and being modified at the same time?   it is not another
FS, it is modified-ext3 itself.   ie, everytime u made a change to the
FS, you have to acquire the same locking variables which is residing
in ext3 layer's memory space, and not create your own filesystem
locking variable.

To do this have to access the locking variable by address, eg, "cat
/proc/kallsyms |grep ext3" then acquire the locks.


>
> I keep the inode size the same so that utilities don't see the hidden
> data -- it appears do_sync_read which ext3 uses and the function that
> it uses (such as generic_file_read) do not read past the size of the
> inode.
>
> When storing this persistent data in the slack space of ext3, I create
> something like a journal that contains the names of the ext3 files and
> how much data we have in the slack space. So when I remount my file
> system, a read_Journal()
> happens, and here is the issue --
>

normally we do this kind of slackspace appending to the existing file
WHILE THE FILE IS NOT IN USE - so doing it in kernel or userspace does
not matter.

but when u do it in the kernel - u have to worry about concurrent
access by other application of the file.    and btw...are u appending
to a executable or normal datafile?   executable files are a lot more
complicated, as they will be remap into different regions of memory,
which means knowing the file-offset u want to modify does not directly
translate into the memory offset to modify...correct?

> I temporarily extend the size of the inode of the ext3 file so I can
> get at the hidden data, then I put the inode size back. For along time
> this returned 0's, I then ( believe this made the change) marked the
> inode as dirty
> and flushed the page so it forced the change of the inode extension,
> because I knew the data was there. Now I get the actual data -- but it
> only works for the first file in the journal. read_journal() works in
> a loop, it reads through each journal entry, and when it tries to
> perforrm
> the same operation on another ext3 file, after extending the inode it
> just gets zeroes back. But I know the data is there, because if I
> leave the inode extended, I use 'vi' to open the file and I can see
> the data.
>
> Is this some type of page cache issue? How can I get around this? Any
> input would be greatly appreciated. Thank you.
>
> I can't really give code slices, but the general idea is
>
> i_size = i_size_read(inode);
> i_size += extended_size;
> i_size_write(inode, isize);
> mark_inode_dirty(ext3_inode);
> wakeup_pdflush(0); <- I realize this is an overkill, but I was just
> trying to get it to work before I used aops->commit_write on the
> actual page of the inode.

not sure.   but let me ask:

a.   since u are writing to the slack space, are u updating the file
metadata so that the filesystem knows the actual file size?

if no, then there could be a collision issue.   ie, filesystem is
writing / reading the file, and changing the content (and thus length)
at the same time, and here u are appending to the tail-end as
slack-space appendix.....unless u acquire the file writelock, so
perhaps writing to it is not possible.

b.   From super.c:

/* Read data from quotafile - avoid pagecache and such because we cannot afford
 * acquiring the locks... As quota files are never truncated and quota code
 * itself serializes the operations (and noone else should touch the files)
 * we don't have to be afraid of races */
static ssize_t ext3_quota_read(struct super_block *sb, int type, char *data,
                               size_t len, loff_t off)
{
        struct inode *inode = sb_dqopt(sb)->files[type];
        sector_t blk = off >> EXT3_BLOCK_SIZE_BITS(sb);
        int err = 0;
        int offset = off & (sb->s_blocksize - 1);
        int tocopy;
        size_t toread;
        struct buffer_head *bh;
        loff_t i_size = i_size_read(inode);


And inode.c:

               /*
                 * block_write_begin may have instantiated a few blocks
                 * outside i_size.  Trim these off again. Don't need
                 * i_size_read because we hold i_mutex.
                 *

it seemed to indicate that u either have to disable pagecache to use
i_size_read(), or to lock the i_mutex to reliably get the size via
i_size_read().   so question again......locking done?

>
> ext3_file->f_op->llseek(seek to start of hidden data);
> ext3_file->f_op->read(read in the data that is hidden at this location)
>
> The first time I go through this operation it works, I get the data
> back into memory and can reconstruct a file in virtual memory
> all subsequent attempts fail -- although I believe once or twice it did work.
>
> I simply don't understand the underlying page cache enough I'm
> guessing. Any help would be greatly appreciated on this, thank you
> all.


-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
