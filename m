From: "Rajat  Jain, Noida" <rajatj@noida.hcltech.com>
Subject: zero copy issue while receiving the data (counter part of sendfil
	e)
Date: Thu, 16 Dec 2004 19:38:41 +0530
Message-ID: <267988DEACEC5A4D86D5FCD780313FBB02A6B7B2@exch-03.noida.hcltech.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: "Sanjay Kumar, Noida" <sanjayku@hcltech.com>, "Deepak Kumar Gupta, Noida" <dkumar@hcltech.com>


Hi,

I'm experimenting on stock kernel 2.6.8

I was looking for an interface that could directly receive data from a
network socket, WITHOUT coying from kernel space to user space. (Like for
sending data, "sendfile" provides to send data to network socket without
copying it to kernel space). I came across tcp_read_sock() interface in
net/ipv4/tcp.c.

Has anybody tried tcp_read_sock()?? Is there any known issue with it ?? If
somebody has some idea, I would appreciate if you can share.

I might be wrong, but what I perceive is that I will pass a pointer to this
function. And when the function returns, I expect it to be set to the kernel
buffer (corresponding to socket).

1) To fulfill this objective, I expect to pass a pointer to pointer & only
then it can be done. (If we have to modify a pointer's value, we have to
pass its address ... Right??). However, this function expects a char * buf
(in read_descriptor_t argument). Any ideas ?????????

2) This code also frees the space allocated to sk_buffs etc using
sk_eat_skb(sk, skb) and cleanup_rbuf(sk, copied) etc. But this function is
supposed to return these locations to the calling code ... Right???

Any pointers are more than welcome. I have provided the code for reference.
Please cc the reply to me as I'm not on the list.

Thanks & regards,

Rajat Jain

-----------------------------------------------------------------------
/* net/ipv4/tcp.c
 * This routine provides an alternative to tcp_recvmsg() for routines
 * that would like to handle copying from skbuffs directly in 'sendfile'
 * fashion.
 * Note:
 *      - It is assumed that the socket was locked by the caller.
 *      - The routine does not block.
 *      - At present, there is no support for reading OOB data
 *        or for 'peeking' the socket using this routine
 *        (although both would be easy to implement).
 */
int tcp_read_sock(struct sock *sk, read_descriptor_t *desc,
                  sk_read_actor_t recv_actor) {
        struct sk_buff *skb;
        struct tcp_opt *tp = tcp_sk(sk);
        u32 seq = tp->copied_seq;
        u32 offset;
        int copied = 0;

        if (sk->sk_state == TCP_LISTEN)
                return -ENOTCONN;
        while ((skb = tcp_recv_skb(sk, seq, &offset)) != NULL) {
                if (offset < skb->len) {
                        size_t used, len;

                        len = skb->len - offset;
                        /* Stop reading if we hit a patch of urgent data */
                        if (tp->urg_data) {
                                u32 urg_offset = tp->urg_seq - seq;
                                if (urg_offset < len)
                                        len = urg_offset;
                                if (!len)
                                        break;
                        }
                        used = recv_actor(desc, skb, offset, len);
                        if (used <= len) {
                                seq += used;
                                copied += used;
                                offset += used;
                        }
                        if (offset != skb->len)
                                break;
                }
                if (skb->h.th->fin) {
                        sk_eat_skb(sk, skb);
                        ++seq;
                        break;
                }
                sk_eat_skb(sk, skb);
                if (!desc->count)
                        break;
        }
        tp->copied_seq = seq;

        tcp_rcv_space_adjust(sk);

        /* Clean up data we have read: This will do ACK frames. */
        if (copied)
                cleanup_rbuf(sk, copied);
        return copied;
}-----------------------------------------------------------------------

read_descriptor_t is defined as:

/*
 * include/linux/fs.h
 */
typedef struct {
        size_t written;
        size_t count;
        union {
                char __user * buf;
                void *data;
        } arg;
        int error;
} read_descriptor_t;
-----------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
