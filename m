From: Thomas Marangoni <thomas@marangoni.cc>
Subject: Trying to improve a kernel driver
Date: Tue, 10 Aug 2021 09:24:43 +0200
Message-ID: <50d3f5fc-64b6-99fd-3992-9eb9f2843746@marangoni.cc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=marangoni.cc; s=mail;
        t=1628580285; bh=PeRXrKoYkWvgqpheq4ise8h2Btuv4BJqqH6Ewnbn47s=;
        h=From:Subject:To;
        b=kV5eVq9D16KNkc65UAi5iVd3X+EJomH8T1U3nfNkKiZh9TqtYvJ7svyjCYx+D0uaR
         j1g9xygpfK3+UQfuvms+FT8jYFdEB0NKmDADQs6psHnuqAtlQqHpzhSSKGZS4kgO5U
         reRQfaDQUsrlhIUoi5vpg/DCxvvAmHpIAjMlLQ5tzoLVDBCU5dSvAYfUU5IQOx6m2J
         IUQ19bD7BEJ0DQmVfaR1O4+4f90YbSJS1Q3AEZPq+9ZLs1mN9Uw/frpzPOJs35f0Ib
         P7yDo+t+eebwrQGw3W/gDwmDerYmAB/yiZtW2C6ow+Do5p2kZRUC0pq2LY3lUbysOY
         KeTrNjKPxfReA==
Content-Language: en-US
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,
I'm new to developing kernel drivers and want to improve the driver of 
the axp209 power management chip. I've read the documentation about the 
Linux power supply class 
(https://www.kernel.org/doc/html/latest/power/power_supply_class.html) 
and there it says: "Power supply class is extensible, and allows to 
define drivers own attributes.". The Problem is I couldn't find an 
example of how to add own attributes. My goal is to have an own 
attribute showing up at /sys/class/power_supply/axp20x-battery/

If someone can give me a hint, extended documentation or a better place 
to ask, that would be great!

