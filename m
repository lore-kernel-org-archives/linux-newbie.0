From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: dereferencing pointer to incomplete type
Date: Wed, 16 Jun 2004 14:29:29 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3aa6093abd75.3abd753aa609@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
This might be the wrong question for this list, but I am giving it a shot.

I got the following error while compiling some module -

Arping.xs:153: dereferencing pointer to incomplete type
make: *** [Arping.o] Error 1


Now line 153 in the source is - 

memcpy(enet_src, src_mac->ether_addr_octet,6);

where

u_char enet_src[6] = {0x00, 0x00, 0x00, 0x00, 0x00,0x00};

struct ether_addr *src_mac;


struct ether_addr
{
    u_char  ether_addr_octet[6];
};

are the definitions.

I haven't been able to figure out what the problem is.
Can anyone help me with this ?

Thanks.
Anshuman

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
