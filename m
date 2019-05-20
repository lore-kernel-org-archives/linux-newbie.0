From: Amit Kumar <free.amit.kumar@gmail.com>
Subject: Unable to understand a piece of code
Date: Mon, 20 May 2019 05:37:41 +0530
Message-ID: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Y4aFGRFM7IoElS4onEAqlfOyDdbLJ9sxzE/g/SrJbBU=;
 b=rtHel/msBiB2xJmNPyL7n5HuM1BFAVBNgrC3SbPCZsqcRkeqimlEET1TC09mPOciWl
 qzh0dzXhvGe3QtV2dFbn2AFfPYoH8dCs9krQBq+oPbwTKPRPYBCgAx2QTsAdurE0oB3K
 zCdc19rzARQZQWfZ9UPYNgxMFkq8q/K0uOaLQkTtBAuw/OkXNAMMo2E6mxQidKnZUBNV
 zTevmrVKwl5ogofb9tqTa5Ivnyb/LRar/ZL70lWqgP8T52Mjrr4skM/VfOAdtNVhn+5W
 awCnjMLoRTV60nN6peiZvvqxrpg0vp/M925ubU3q4Lx9/v28FGeYmlp8n1y0eT/lXT/y
 x0WA==
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <https://lists.kernelnewbies.org/mailman/options/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies/>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: linux-newbie@vger.kernel.org, Kernel Newbies <kernelnewbies@kernelnewbies.org>

HI,

mm/slub.c: line 3973
int __kmem_cache_shrink(struct kmem_cache *s)
{
int node;
int i;
struct kmem_cache_node *n;
struct page *page;
struct page *t;
struct list_head discard;
struct list_head promote[SHRINK_PROMOTE_MAX];
unsigned long flags;
int ret = 0;

flush_all(s);
for_each_kmem_cache_node(s, node, n) {

How uninitialized variable node is being used in macro for_each_kmem_cache_node?

node is a local variable with no extern and not initialized.

mm/slab.h: line 490
#define for_each_kmem_cache_node(__s, __node, __n) \
for (__node = 0; __node < nr_node_ids; __node++) \
if ((__n = get_node(__s, __node)))

As we see for loop is based on node.

Thanks in advance.

Regards,
Amit Kumar
