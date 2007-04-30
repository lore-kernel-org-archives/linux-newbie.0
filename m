From: "gallon sylvestre" <ccna.syl@gmail.com>
Subject: [newbie]socket in kernel land
Date: Mon, 30 Apr 2007 22:59:08 +0200
Message-ID: <164b4c9c0704301359w6651861eg9fec683ac792535d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=t0H9C0QWuv9eiThZwl5/9h9L48qy5noHOWlcHoIDauAkGjp4QpQJcRQsGuU17774dp5HFaN8uwdoWC5FhizoKR9qVYu7n3PxALdN1bhOLbllfP0qARwdFlzg71jmB52M8gWBeqnY1JGHCy4/vM2MJALhCDHCQJ1tvTQb4HKwitY=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

hello,

Since yesterday I have been trying  to make a kernel module
who use sockets. But I have got an error on my accept when
I made a telnet on localhost with the good port my computer
freeze :'(

this is my code :

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/kthread.h>
#include <linux/net.h>
#include <linux/socket.h>
#include <linux/in.h>
#include <linux/byteorder/generic.h>
#include <asm-generic/fcntl.h>
#define NB_THREAD 1
#define SERVER_PORT 39237

struct socket   *mysock = NULL;
struct socket   *cli = NULL;

/*
** this  function create the socket bind and make one accept
*/
static int createmysock(void *data)
{
        struct sockaddr_in      serv;
        int     error;

        printk(KERN_INFO "I start the create socket\n");
        error = sock_create(AF_INET, SOCK_STREAM, IPPROTO_TCP, &mysock);
        if (error < 0)
        {
                printk(KERN_INFO "fail to make the socket\n");
                return -1;
        }
        serv.sin_family = AF_INET;
        serv.sin_addr.s_addr = INADDR_ANY;
        serv.sin_port = htons((unsigned int) SERVER_PORT);
        error = mysock->ops->bind(mysock, (struct sockaddr *)&serv,
sizeof(serv));
        if ( error < 0)
        {
                printk(KERN_INFO "tu fait de la merde syl\n");
                return -1;
        }
        printk(KERN_INFO "bind OK\n");
        error = mysock->ops->listen(mysock, 1);
        if ( error < 0)
        {
                printk(KERN_INFO "error\n");
                return -1;
        }
        printk(KERN_INFO "listen OK\n");
        cli = sock_create_lite(AF_INET, SOCK_STREAM, IPPROTO_TCP, &cli);
        printk(KERN_INFO "bug?\n");
        /*cli->ops = mysock->ops;*/  if i uncoment this line i have
got a kernel oops and i don t know why?
        printk(KERN_INFO "bug2?\n");
        error = mysock->ops->accept(mysock, cli, O_RDWR);
        if ( error < 0)
        {
                printk(KERN_INFO "error\n");
                return -1;
        }
        printk(KERN_INFO "Accept ok\n");
        printk(KERN_INFO "Socket creer\n");
        sock_release(cli);
        return 0;
}

int     init_module(void)
{
        int     i;
        struct  task_struct *myw;

        printk(KERN_INFO "hello world\n");
        for (i = 0; i < NB_THREAD; i++)
        {
                myw = kthread_create(createmysock, "yeah!!!!!!!!!!\n", "write");
                wake_up_process(myw);
        }
        return 0;
}

void    cleanup_module(void)
{
        sock_release(mysock);
        printk (KERN_INFO "Goodbye world\n");
        return ;
}


could you help me?
thanks and sorry for my english

-- 
syl@ccna.syl@gmail.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
