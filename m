From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: required header files not #included in cdev.h
Date: Wed, 31 Jan 2007 13:58:29 +0530
Message-ID: <292693080701310028j3a4f246ducafbb3136421c0f5@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org

Hi,

This referes to the file include/linux/cdev.h whose contents are listed below:

#ifndef _LINUX_CDEV_H
#define _LINUX_CDEV_H
#ifdef __KERNEL__

struct cdev {
        struct kobject kobj;
        struct module *owner;
        const struct file_operations *ops;
        struct list_head list;
        dev_t dev;
        unsigned int count;
};

void cdev_init(struct cdev *, const struct file_operations *);

struct cdev *cdev_alloc(void);

void cdev_put(struct cdev *p);

int cdev_add(struct cdev *, dev_t, unsigned);

void cdev_del(struct cdev *);

void cd_forget(struct inode *);

#endif
#endif

It is a little strange to me that it uses certain kernel structure
types like kobject, module, list_head etc without #including
appropriate headers. The result is that when I try to use struct cdev
in my module by simply #including cdev.h, it flags an error. As a
result I need to manually figure out which all headers do I need to
(additionally) #include and in what order.

Is this OK?

Dan

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

