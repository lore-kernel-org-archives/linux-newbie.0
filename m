From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: sock_hold and sock_put
Date: Wed, 24 Jun 2015 14:47:35 +0530
Message-ID: <CAGZFCEHHXbnsSoBaTUdxqwoQ75hN5BTBXJMEXp0dkwQbFSEkRw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=+V7ngJ1zrDoTTKFZI+p6u/arEUnz/mnXiSVVgaT1gZQ=;
        b=loRxOwKb6AP/cS9L0QNmRvtp2U35bMLIJBcKfcfvX7gdvckfZQDWtmH6FtV5Z3XJH6
         M8dgOl4VQVt/y29ZrkndZycDuVBcF2UbOBkzP4I9/B1e+zBGTKhCc1efK1HBtwLtgS6I
         OJe866u6Xa/JJDgeYsrOYDLbbhmQJEP6rWj6lt8my0hu+kWahqVANJmB0TGq8FuIvW0B
         13GmGHTKOua7PlaW0YRvSl1xL72CH6pznV57UX/cQZWIohtqhWtWM5MP41yGP6GgYwI1
         A8fWtepn77XYTEltMWN5/TlgxJyc8bHS/ajja8EO+xWn/FW8WE720bmo7CxCkQPm6vrl
         mlsw==
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: netdev <netdev@vger.kernel.org>, linux-newbie <linux-newbie@vger.kernel.org>

Hi list,

There is a comment on sock_hold() function -

561 /* Grab socket reference count. This operation is valid only
562    when sk is ALREADY grabbed f.e. it is found in hash table
563    or a list and the lookup is made under lock preventing hash table
564    modifications.
565  */


But i could see instances of sock hold() in kernel  without any locks.


How  the race between sock_hold() and sock_put() is prevented in  smp ?

note: I would like to use sock_hold() and sock_put() in
netdev_notifier chain call back functions.

-Ratheesh
