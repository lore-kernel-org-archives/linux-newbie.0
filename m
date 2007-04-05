From: "qingxiaoming" <qing_xiaoming@anyka.com>
Subject: Not Initialize the shrinker->list after kmalloc() in mm/vmscan.c(V2.6.12)?
Date: Thu, 5 Apr 2007 19:52:15 +0800
Message-ID: <003701c77778$db000160$160710ac@qingxiaoming>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, 'kernelnewbies' <kernelnewbies@nl.linux.org>

Dear all:
I am reading the function set_shrinker() in mm/vmscan.c of V2.6.12, and I
have a question about the not initialization of list_head,

/*
 * Add a shrinker callback to be called from the vm
 */
struct shrinker *set_shrinker(int seeks, shrinker_t theshrinker)
{
        struct shrinker *shrinker;

        shrinker = kmalloc(sizeof(*shrinker), GFP_KERNEL);
        if (shrinker) {
	        shrinker->shrinker = theshrinker;
	        shrinker->seeks = seeks;
	        shrinker->nr = 0;
	        down_write(&shrinker_rwsem);
	        list_add_tail(&shrinker->list, &shrinker_list);
	        up_write(&shrinker_rwsem);
	}
	return shrinker;
}

As above, the shrinker is allocated from kmalloc, coming from slab
allocator,the list in shrinker is not initialized, directly list_add_tail()
to shrinker_list, don't need to INIT_LIST_HEAD(shrinker->list)?

Thanks,
Best Regards!
Xiaoming.Qing


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
