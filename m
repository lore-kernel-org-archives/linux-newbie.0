From: Prashant Batra <prbatra.lists@gmail.com>
Subject: Route lookup in ip_finish_output2
Date: Mon, 11 Feb 2013 14:24:59 +0530
Message-ID: <5118B1E3.1040409@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:followup-to
         :to:subject:content-type:content-transfer-encoding;
        bh=yYOeVjYQ3aaYVe6D4T4n3XY1tn2Q8NU/d3crbbv2/z8=;
        b=aHZqBe8eEu4DzTRMJGNoAaq8STTGpMeirFrNFaQ5G93TTiXvaNvYXBxAELqJyG5K89
         mHRZ8vn9s19T8md3BPIm2BmLCTRKMAn3bWByoJBB/QDhgkk2p63kpYsMmZDKghbIvL5Z
         +gpZi5yYkInRDcgvf+7YMES9zp4Jk0AU0q+zFKXH+BZ/kP64u4QnVOejZ/p+uKw6+uqk
         QnNkhFMFdtvwHLNXb551W7WrDh+U0iCLvIqAbdXZJpMsnUyoyAJ6SyWrXmF3Zp4qJ5AZ
         zHKNX/oElLMzLM5gswhWpPnmkR2NkgrPqTN2szWs8gYCwIVGBXOMBeyvGz7m1g/Jv0fg
         Dl1w==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi Folks,

I am trying to do a small hack into the kernel just for some 
experimentation wherein I need to do a ipv4 route lookup from 
ip_finish_output2, after the packet is received from outside and has got 
forwarded.

The route lookup is done using kernel API "ip_route_output_flow" with 
the flow having the dst address.
This seems to be working fine with only exception that at very high 
loads, I see certain CPU hikes and the profiling results show that the 
same API comes out to be the culprit.

What I understand is that even to take the forwarding decision the 
kernel ip_rcv should have done the route lookup to decide that the 
packet needs to be forwarded, then why am I seeing a CPU hike in my case.

The second route lookup is done as the original packet has got 
encapsulated within a new IP header having a different destination than 
the original packet.


Thanks,
Prashant
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
