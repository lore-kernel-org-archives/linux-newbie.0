From: Kumaresh Perumal <kumaresh.perumal@gmail.com>
Subject: RPC response reception
Date: Fri, 7 Jan 2005 16:27:58 +0530
Message-ID: <ef2116a905010702572c6e244a@mail.gmail.com>
Reply-To: Kumaresh Perumal <kumaresh.perumal@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi,

I am running two RPC servers in a linux box where two different RPC
program numbers are registered in each servers. RPC server A gets an
asynchronous call from a client, after processing, RPC server A makes
another client_call using clnt_call to RPC server B. A function
registered to that particular RPC prognum executes in RPC server B and
returns a response structure. But I am not seeing the response
structure values at the RPC server A side.

Client----> RPC A ---> RPC B

In RPC A, following is the code:

clnt = clnt_create("host", PROCB, 1, "udp")
clnt_stat = clnt_call(clnt, procnum, inproc, inargument,
(xdrproc_t)xdr_void, outresult, timeout)

In RPC B, following is the snippet of the code:

register SVCXPRT *transp;
transp = svcudp_create(RPC_ANYSOCK);
svc_register(transp, PROCB, 1, create_response, IPPROTO_UDP);
svc_run();

PROCB(struct svc_req *rqstp, register SVCXPRT *transp)
{
switch (rqstp->rq_proc)
case 1:
_xdr_argument = <>;
_xdr_result = <>;
break;

<form the response structure>
svc_sendreply(transp, _xdr_result, (char *)result);
}

At the client side, I am getting RPC_SUCCESS.

I could see the response structure values in the RPC B after executing
the PROCB program. But at the RPC A side, I am not getting the
response structure that I am passing from the RPC B side. I guess the
response structure should be stored in outresult structure in the RPCA
side. I think, I am missing some part of RPC code at RPC B side to
send the response, please let me know the problem and clarify to me.

Thanks and Regards,
Kumaresh
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
