From: Eric Dumazet <eric.dumazet@gmail.com>
Subject: Re: sock_hold and sock_put
Date: Wed, 24 Jun 2015 14:46:40 +0200
Message-ID: <1435150000.4110.7.camel@edumazet-glaptop2.roam.corp.google.com>
References: <CAGZFCEHHXbnsSoBaTUdxqwoQ75hN5BTBXJMEXp0dkwQbFSEkRw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=0m1Lx2GhQOGWb4Ma2n9a/Q4fQ1yhPr8B09X6tS5lTEg=;
        b=VVSUTQbnYjI3LcNVjxW9OutaFfSqh2+ysHxQjk3LMSmHawbarGeQXFHts15VvG1buP
         L5sfBW4TbVO0/2oMIiWN+6xQp4uIRJBFqfAmd3EijCs9R+S8uZP09n7DuiBZvVY5fT4e
         44WbhYYbRX9P9cgoSZ4s9aNT0U4dNr8497fILmcuapAngJ81fJuIyOnbhDwDmQVodQ5H
         c8Qao5XHoPk5YLdBX2oyectnmEQpoA1U0u5tQroRNMAMzs2Udjj14DfVYM4ovIoVwU8b
         Tr4t2b9jeWRx0m+EIVS1aDpU/W6NhPdZBrqu+q2Vxk3J99wZ1Y9nvX8SmAgF/JMu2oc5
         NjlA==
In-Reply-To: <CAGZFCEHHXbnsSoBaTUdxqwoQ75hN5BTBXJMEXp0dkwQbFSEkRw@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
Cc: netdev <netdev@vger.kernel.org>, linux-newbie <linux-newbie@vger.kernel.org>

On Wed, 2015-06-24 at 14:47 +0530, ratheesh kannoth wrote:
> Hi list,
> 
> There is a comment on sock_hold() function -
> 
> 561 /* Grab socket reference count. This operation is valid only
> 562    when sk is ALREADY grabbed f.e. it is found in hash table
> 563    or a list and the lookup is made under lock preventing hash table
> 564    modifications.
> 565  */
> 
> 
> But i could see instances of sock hold() in kernel  without any locks.
> 
> 
> How  the race between sock_hold() and sock_put() is prevented in  smp ?
> 
> note: I would like to use sock_hold() and sock_put() in
> netdev_notifier chain call back functions.

You misunderstood the comment.

Comment only stated that sock_hold() must be used in contexts where
caller owns a reference (and will eventually release it later with
sock_put().

There is nothing about having a lock here.

