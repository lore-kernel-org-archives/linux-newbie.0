From: "Arijit Das" <arijit79@gmail.com>
Subject: A tough C construct in Linux Kernel's implementation
Date: Mon, 24 Apr 2006 10:54:25 +0530
Message-ID: <5f3d30900604232224h22e80541p8095c473abc82d9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I thought that I am very good at C until yesterday when I was browsing
thorugh the list_head data structure's implementation in Linux Kernel
2.6.10 and found that the following code:

#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)

is returning the "Offset of a Memeber inside a struct/class Type". I
didn't logically understand how is that happenning...:-(

I expect the outcome of &((TYPE *)0)->MEMBER to be the address of the
member 'MEMBER' of type 'TYPE'. Now, how does that address becomes
offset has totally gone out of my understanding...

Any help is highly appreciated. What am I missing...?

Thanks,
Arijit

Here is a small implemetation showing what I just said:

myhost> cat test.c
#include <stdio.h>

#if 0
/**
 * This is how it is used in Linux kernel.
 */
#define container_of(ptr, type, member) ({                      \
        const typeof( ((type *)0)->member ) *__mptr = (ptr);    \
        (type *)( (char *)__mptr - offsetof(type,member) );})
#endif

#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)

typedef struct list_head {
	struct list_head *next, *prev;
} list_head_t;

typedef struct TypeName {
	int i;
	float f;
	long l;
	char c;
	list_head_t list;
	double d;
} TypeName_t;

int main()
{
	int offset = offsetof(TypeName_t, list);
	
        printf("Offset = %d\n\n", offset);
	return 0;
}

myhost> gcc test.c
myhost> ./a.out
Offset = 16

myhost>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
