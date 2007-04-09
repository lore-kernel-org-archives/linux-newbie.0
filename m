From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Not Initialize the shrinker->list after kmalloc() in mm/vmscan.c(V2.6.12)?
Date: Mon, 9 Apr 2007 11:27:32 +0530
Message-ID: <b115cb5f0704082257y63c4a496mf9ec3282735da165@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <003701c77778$db000160$160710ac@qingxiaoming>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=KFhxxyYkaHD4fITqygJENornxo+4a/i/PhYd5KzOtSfIxgMNkW2ko/Mkl9M5GxahBzi2GRemK+dujJF2pEQBZO7rKQcgGDk4xYS1qsj0vbwqZKlHcbhkcvk0lXYnLIsXmIGMkK/W+MQHQgOUFJdOCAwGbVAFiqlwh6dLDoyK0LM=
In-Reply-To: <003701c77778$db000160$160710ac@qingxiaoming>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: qingxiaoming <qing_xiaoming@anyka.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

Hi Qing,

On 4/5/07, qingxiaoming <qing_xiaoming@anyka.com> wrote:
> Dear all:
> I am reading the function set_shrinker() in mm/vmscan.c of V2.6.12, and I
> have a question about the not initialization of list_head,
>
> /*
>  * Add a shrinker callback to be called from the vm
>  */
> struct shrinker *set_shrinker(int seeks, shrinker_t theshrinker)
> {
>        struct shrinker *shrinker;
>
>        shrinker = kmalloc(sizeof(*shrinker), GFP_KERNEL);
>        if (shrinker) {
>                shrinker->shrinker = theshrinker;
>                shrinker->seeks = seeks;
>                shrinker->nr = 0;
>                down_write(&shrinker_rwsem);
>                list_add_tail(&shrinker->list, &shrinker_list);
>                up_write(&shrinker_rwsem);
>        }
>        return shrinker;
> }
>
> As above, the shrinker is allocated from kmalloc, coming from slab
> allocator,the list in shrinker is not initialized, directly list_add_tail()
> to shrinker_list, don't need to INIT_LIST_HEAD(shrinker->list)?
>

IMHO, the linked list is not headed by shrinker->list, rather by
shrinker_list. So the statement

list_add_tail(&shrinker->list, &shrinker_list);

is actually adding shrinker to the list shrinker_list. The shrinker->
list is merely a pointer to help in atttaching the node to the list.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
