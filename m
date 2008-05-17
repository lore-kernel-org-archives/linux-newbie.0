From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: how to get inode of the file in the kernel
Date: Sat, 17 May 2008 15:01:13 +0800
Message-ID: <804dabb00805170001l1b584229oebdd22f517088fb@mail.gmail.com>
References: <4815CCE2.3060506@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=iQA787lb1xl0c21GpZvOT+hQYL2h0nUTpgzGCWv2HUY=;
        b=qQrBwUY3I6T0TKxEjLX/msZcECFQSKq7+dANG0R1F0zaYPAnC7C2wv5XxsXaBeUgqbYjOnhstTa96tuWZBuAGlKcJHiOsaeQQXjRCeaIylsG5e7jpBRLRcYl+06rhbfGaghngadLuzOeYff0BnfyOj7424KhYPFqYAOYgVbTJsY=
In-Reply-To: <4815CCE2.3060506@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Olsa <olsajiri@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Apr 28, 2008 at 9:10 PM, Jiri Olsa <olsajiri@gmail.com> wrote:
> Hi,
>
> is there a way for a kernel module to get an inode of the file
> specified by the full path?
>

check this function in fs/file_table.c - noticed how given the file
structure, u can get the inode information:

/**
 * drop_file_write_access - give up ability to write to a file
 * @file: the file to which we will stop writing
 *
 * This is a central place which will give up the ability
 * to write to @file, along with access to write through
 * its vfsmount.
 */
void drop_file_write_access(struct file *file)
{
        struct vfsmount *mnt = file->f_path.mnt;
        struct dentry *dentry = file->f_path.dentry;
        struct inode *inode = dentry->d_inode;

        put_write_access(inode);

        if (special_file(inode->i_mode))
                return;
        if (file_check_writeable(file) != 0)
                return;
        mnt_drop_write(mnt);
        file_release_write(file);
}

Next, opening by filename open() is through do_sys_open():

long do_sys_open(int dfd, const char __user *filename, int flags, int mode)
{
        char *tmp = getname(filename);
        int fd = PTR_ERR(tmp);

        if (!IS_ERR(tmp)) {
                fd = get_unused_fd_flags(flags);
                if (fd >= 0) {
                        struct file *f = do_filp_open(dfd, tmp, flags, mode);
                        if (IS_ERR(f)) {
                                put_unused_fd(fd);
                                fd = PTR_ERR(f);
                        } else {
                                fsnotify_open(f->f_path.dentry);
                                fd_install(fd, f);
                        }
                }
                putname(tmp);
        }
        return fd;
}

And from above, do_filp_open() will return the struct file structure,
within which u can find inode information as shown above.

On the other hand, why not download e2fsprogs from sourceforge:

check this function in lib/ext2fs/namei.c:

static errcode_t open_namei(ext2_filsys fs, ext2_ino_t root, ext2_ino_t base,
                            const char *pathname, size_t pathlen, int follow,
                            int link_count, char *buf, ext2_ino_t *res_inode)
{
        const char *base_name;
        int namelen;
        ext2_ino_t dir, inode;
        errcode_t retval;

#ifdef NAMEI_DEBUG
        printf("open_namei: root=%lu, dir=%lu, path=%*s, lc=%d\n",
               root, base, pathlen, pathname, link_count);
#endif
        retval = dir_namei(fs, root, base, pathname, pathlen,
                           link_count, buf, &base_name, &namelen, &dir);
        if (retval) return retval;
        if (!namelen) {                     /* special case: '/usr/' etc */
                *res_inode=dir;
                return 0;
        }
        retval = ext2fs_lookup (fs, dir, base_name, namelen, buf, &inode);
        if (retval)
                return retval;
        if (follow) {
                retval = follow_link(fs, root, dir, inode, link_count,
                                     buf, &inode);

u can see how the filename, come in and update the inode structre,
done inside ext2fs_lookup().

-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
