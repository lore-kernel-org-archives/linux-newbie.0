From: "Cristian CHIRILOV" <atmos@dreams.homelinux.net>
Subject: Re: Creating virtual devices
Date: Wed, 3 Sep 2003 16:30:51 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <7262.193.226.6.51.1062595851.squirrel@www.cybernet-kfe.org>
References: <36993D449C7FA647BF43568E0793AB3E061DBD@nevis_pune_xchg.pune.nevisnetworks.com>
Reply-To: atmos@dreams.homelinux.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061DBD@nevis_pune_xchg.pune.nevisnetw
     orks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> Hi,
>
> I want to create virtual network devices using something like the
> tun/tap driver.
> Is there any limit on the number of such devices which can be created?
>
> Thanks,
> Girish

mknod /dev/net/tun c 10 200
chmod 0700 /dev/net/tun if you want the device only accesible by root.
Giving regular users the right to assign network devices is NOT a good
idea.

Here the network device allocation:

 #include <linux/if.h>
 #include <linux/if_tun.h>

  int tun_alloc(char *dev)
  {
      struct ifreq ifr;
      int fd, err;

      if( (fd = open("/dev/net/tun", O_RDWR)) <  )
         return tun_alloc_old(dev);

      memset(&ifr, 0, sizeof(ifr));

      /* Flags: IFF_TUN   - TUN device (no Ethernet headers)
       *        IFF_TAP   - TAP device
       *
       *        IFF_NO_PI - Do not provide packet information
       */
      ifr.ifr_flags = IFF_TUN;
      if( *dev )
         strncpy(ifr.ifr_name, dev, IFNAMSIZ);

      if( (err = ioctl(fd, TUNSETIFF, (void *) &ifr)) <  ){
         close(fd);
         return err;
      }
      strcpy(dev, ifr.ifr_name);
      return fd;
  }


char *dev should be the name of the device with a format string (e.g.
"tun%d"), but (as far as I can see) this can be ANY valid network device
name.

  Note that the character pointer becomes overwritten with the real device
name (e.g. "tun0")


-- 
Be different. Think.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
