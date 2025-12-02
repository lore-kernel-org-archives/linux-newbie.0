Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazolkn19010020.outbound.protection.outlook.com [52.103.2.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EAC2905
	for <linux-newbie@vger.kernel.org>; Tue,  2 Dec 2025 00:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.2.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764634088; cv=fail; b=NCH0XiYQ3RYwz5dDaFfbdwzpFnxN0rRszHenYyB81lA+D0PZaKbDw15EIwicmd7PrvabKj99jy5zK8ZyGGPx0Eq3iI2DaX9+LSUdfh++5R+YzXcbtyaciTwE62Le93AjzBEziHwyYVvnk5LBL4Cgkbw1fZmyt/Q8Jt16Nt8q2j8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764634088; c=relaxed/simple;
	bh=TD02AMyojaM+sFuKtENO3HCfgT9DSm5DIm+LUIshwXs=;
	h=Message-ID:Date:To:From:Subject:Content-Type:MIME-Version; b=nfW0v71aY0l1hQ0Cx6K6tAYxPLDM7wsfreCMGv3982x3JmOS4peIFEE4kkypCxONybCZBIuD6Gg4h+F7ep1qGiGhOLReEmioFsI3WNk8fmVVdPI1fomOaWLnSMnkY/AIfyhUHZ8r5VTZ/ovVSuMiwwPx0h5/vcdOCOBCFU/0Wk0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=Llrit4w+; arc=fail smtp.client-ip=52.103.2.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="Llrit4w+"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m5lgMfk/X5eGPbXrk1i7sU7E7WlZZHcl/Ffocls9SYcdd5zSYS5Z9xP6ordN15G2wkEhffBrBoEAdg9lzKFBHc1SuqmnYAT9Hpz2hmm4ggmIyeZLDfoLsLK8bM/5Hyyh2/Y39qQFhbuOfFbuPmSE9khUmTlUloNKOyCBfQQnVrTe7tYDBDd/WuFyXnmDPHsU2nVkQ7U8a/0Qfwuy1iRwr8NXlXFHPyGBwB+eWlbbX+6WZzHe2fUxTosTVJ60HKHvdp+z3t3C8AlT8vL6IB/mJ0/9mn8tLR+iB4QRzZXI2Is0RDZaZW2SqN+xop3CD/IVR38IrPsX45Gn53ilsUXW6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N50+6PPNeLV3izcggCJR5r6IdR2r3MMJLef9rg8kE6c=;
 b=faLsbE/g7+tPAoz/a+y5D04mGWMGFxqQX9maBc9IS4FHWMm4JqdijnLVKfSt3hpJs9gKumORhrLxjxNcAO/976DCNB/ZCtsKnC2NUft84qFxWHdOc1cLdboltww8fk32hdYs1a1WZmDwogKoHeKZHEYLE9Rynw3khpQKVqXAmvXipFBeBCeRlcJWwZ7UDc7W2lUQrLgK7CiLpU8c3c8BtY8tAw48cWaMo+F8Cj3LJ0sbOAK0dN8HAajXaeArB1gjoydlkmoJLk1K7BOFsMJ5TNK9Tx+qsXjdQtQ8UFyxljIyMRO8aufuM8z7faQBTq0QFdZo+5whsuQBZWIFsTcNkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N50+6PPNeLV3izcggCJR5r6IdR2r3MMJLef9rg8kE6c=;
 b=Llrit4w++/T0EcW4Og70xy+qbPGbg4yzDId833TRzr4+cky4Mu34xee/HRcG9/iHgN9urG0isP4O3P5oy8IuFAXLxXT99z4HAg7kansTlpwz9YgEiQ5V9kZ7qtCp+7tSsD6O/bkYYOlPSNjfiINQccnoZfBg/dWGQS65CoZy+4hPeRutD+JOVQmVsLwWeIDyDx9IHCW8CjrejtTGmRrOP5ixTF1clc8JKTChY7VNRsKWBm/Lu7ekwS8svjNz11+9Y6jMUAuYp42Tuq9ne4Fqmt7Cmhr4B0NvZJfftk6S8u31eW3vJSD/AnDbGHx9GNgjYEpmxlANRJGeiZlg8Bf1TA==
Received: from LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM (2603:10b6:408:224::16)
 by DM8P221MB0487.NAMP221.PROD.OUTLOOK.COM (2603:10b6:8:18::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Tue, 2 Dec 2025 00:08:05 +0000
Received: from LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM
 ([fe80::e498:3639:cdaa:2cb3]) by LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM
 ([fe80::e498:3639:cdaa:2cb3%4]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 00:08:05 +0000
Message-ID:
 <LV8P221MB1399D71143E168BBF9D9C955C3D8A@LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM>
Date: Mon, 1 Dec 2025 19:07:59 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-newbie@vger.kernel.org
From: dilan johnson <dilanjohnson@outlook.com>
Subject: What's the standard for dynamically allocating memory?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN0P223CA0024.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:52b::31) To LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:408:224::16)
X-Microsoft-Original-Message-ID:
 <d4ad9f35-d99f-4936-9d3b-ad68be29e56a@outlook.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8P221MB1399:EE_|DM8P221MB0487:EE_
X-MS-Office365-Filtering-Correlation-Id: a0594b4a-c316-4e9b-f02a-08de3136ddab
X-MS-Exchange-SLBlob-MailProps:
	ScCmN3RHayGhMYhsNb3DdScydiNgS7Hy7tj49dexdnaPL5+IV7ETfiGxXTkcNduPosk8+UIZ4olNGd5mIyijuqP6podXBKjlin8dEJXs3CCoIkY/XT/cOzT7RpcW5x2grjnNZF4yOH1F3+SzZyJkw7P2izG9cdveJmZvkBC+W2T4jdw6usMhiDKl7Gjacgcav+6nGlUpVlkWX0mR0NQT0zund0g3g5zcbNfezsATVWnnSrlY/D/me90os4gtCxJwo7WLXtd3giRFgqSg/ghXKWibexSkSKRRJ1PTwRRQAgvN9sK85aC7wJqmNl/YNOXU2ElwfcQQMgMFi9uIxxRYEM2vtc0mhjgoWI60YjNLp5U9iibVJTjtX2cNp602VxDWJm3tSJo39+Ai+YxmEWfL+T3/Xlkx2DJy7K8bNVW+zndE+wTIUenyxB5DyW79KMhK34nWz1kCQA5+tcatiT8j778SJkBh9o9KmNCM2fkvz42x1ZtBGH+VAjImdqAEoTddx3afVSlDJKTG9DvH656eui7uQFi0dSBeEefk26HiMGlwKGR/m4FOXb4AUv7TLUNBYYzgdIZJeLFACwf46oNpCx85ATQ+TZRiqDj8bQcciFJSy+KnEvSiu7ohgpLf4SkmLZj5zzYFndzzzy1uY1jNX0D+Zj8f5NWh8kqSnBM/VcnYUm0wUNXzt989jM4eXmWKyVoNesieAdQVX5zQMEV9CnKC5PVGBgYsPBOnX1/VYhA=
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|6090799003|461199028|19110799012|8060799015|5072599009|23021999003|39105399006|15080799012|40105399003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZitFN1ljR3dYNDVOK2IwU2NHYktBUjd1bW1zODEwK1NwT3JDTkxYdDRrM2Ew?=
 =?utf-8?B?d3BKaFJweTBhZmU1NDEwcXVvZTlMaFpMZ1Y4aU9XcVpGL2FVM01aNHdNMC9t?=
 =?utf-8?B?MEprL0p4UUkyM0ZRcURKdTVkM3NWak0yT3hZSkJLaml3TlRzSEkvcG9MV2Rt?=
 =?utf-8?B?QnAxb3I2YlNNc0hQMXBvODBDTVA0L3V5blZUUXdwQ3pubDVrSTQyUG5wd292?=
 =?utf-8?B?ZjZXRU8vd3Jxbmt1S1MwZW9vYllrWW9uOHd0SjhjbXNkaEJZcjZYM2ZSbHll?=
 =?utf-8?B?dmRvTVkvOVBzNVRpVnl3blp2cURTV0l6Q2hRTk9hM05rVSsxMVpCdVpHUXN5?=
 =?utf-8?B?OXozTXllVE8rTkYwWmFDZjk2QTVyMkR6a3kxbXpHNGVXZXM0V3VRRHVPTmJi?=
 =?utf-8?B?WEZDdjdnZmw0U1h2VkpDclpGcE5oTEhyeHNhbURXaW1aNzlzdjdyNXFrVlRo?=
 =?utf-8?B?NGZQT3pTT2lDbFRsSk9lSk12dmsxVnRxUlM2UldIditlYnVzZlJoaWg2a0xo?=
 =?utf-8?B?TUN1TVdsSlNtWnEyVVFnbURQZkJHMUlVSEtiemRKR0NhbWdUQ3JDVXI4bEFO?=
 =?utf-8?B?RitkUGdjQmN6d01OQmVnMEtod3NCY1pEWUFuNGRHVFhyQ1VvZEdhdXJBSzBN?=
 =?utf-8?B?bmViRUdqOTUyczBKVDlIY3BWVnEwZlZhVGEwZGgvVVFBUUdTanZtN3RHak1G?=
 =?utf-8?B?VmcwbzVTVFJVaktnLzlSaTdhZEprMlZVSDhadFRhNEZLaUJ0YXFIZWM0Tmc2?=
 =?utf-8?B?MFRXSFlqQlpJRThaL2xVRld1RW4zWDVWTnVWcU1VRk1RT2s5WEtkbnUvQTVP?=
 =?utf-8?B?ZzBMNWhPK2p5STZBT0J4RmpMUk51dTlUSzFRWUdEczF4N0JTUEFFT1FmUFFN?=
 =?utf-8?B?bWQ5b0hUZGlyL0ZKbE9VSTFXTlBrR05ReDlTNi8wWXdLQWhSK09mRG0zTXRz?=
 =?utf-8?B?c2ZkbG1OUGg1NXVndWNiRmh1OW8rSU16VElJYkVCTlAvTkNOM1lBeXUyYUI5?=
 =?utf-8?B?ZFczM2t5MlJEcG5KblhNZ1N5QkNTWlhENDcrelcvYThweGVJME9aN3JETEg0?=
 =?utf-8?B?OWFIbnk3dTVyNDVDOGs1eVErWlA4ODk0dzgwTDdyenRUYzB2Q0o1bUhlL3VT?=
 =?utf-8?B?V0RWcUk0cElUMm5oWWJwVm5uTDI5aWxQUDFpeXFhSFlpejl1MldKRytJTHFo?=
 =?utf-8?B?ODVpVWhvcmFwdHFOSGFkeVRLODEybUl3eEd0TElId3JpVHZTbXVJUzdJbDNE?=
 =?utf-8?B?b0ZaYXBJcDdxS0NWYWsyRlBMQzhxWE13dDJkQTB2eHRQQWwwSzY3eU1yYity?=
 =?utf-8?B?ekFZS09mTVhPdDZyUFF5ais2dmxqWHdQWjdUZG9OcTVDNDZtb200SkF3Sk9R?=
 =?utf-8?B?TkphQzJaZU1CdWpmZXU1WDhBL2lPNER5c0pjSWIwZThGOWNiSFVJRTRpZnF0?=
 =?utf-8?B?WmVzd2lWekQvdHZTUUZpU1pNcm1Ua3czczhTYXFpaGZad3hYOXk4amRKQmsv?=
 =?utf-8?B?QnpNVWtBT2pWaCt1cEIrN0k4NWdrWkhhYWhSTHR2a3h3c2x0ZGNsOER6Q2E0?=
 =?utf-8?B?N2EvTmpWc2lmT0FnSFNHb2dXU3BTcEdrUW40eUo4Z1o2VFpDS0JOcUF0eTly?=
 =?utf-8?B?bjl5cGxnSG9keGc3WU9pRkswVUZvR2c9PQ==?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UzJOY0dHY0ttdHJERXdsQmZkeC9VQTloZWQ3RThIa1pNN0ZVbVhNMExENFh1?=
 =?utf-8?B?a0J1VE5LUWdJd2xtQlZBK0hVMVNGei9xajdGRTJNTVJucnhuNGQyZ2pFU08r?=
 =?utf-8?B?WGd0UHJQbWxRRmN2ZlFPQjVJanFOSEo1U2FyRk5HWk51dHVmVG44NkQvWllo?=
 =?utf-8?B?SkJPcHVheEFZaWJYS29oR2lkbkk3T3Bna1Azd0V5VVhHQ3pDMmZzUmdhZEhh?=
 =?utf-8?B?ZnF1MlpaTFdnZXpENmlxeTdyTk5jOXRMeHRLam1BeUxaeHJnN2Z3bUlSNUtI?=
 =?utf-8?B?eHVOT3VwL1lmSXlUOHoxODhkdS9yd2dCMjlYbnZkY3I4dGFHaVozUmNNdElv?=
 =?utf-8?B?dzBLaklsL2F6VXp5Y0wxbGV0VW9iVFIvNG5hKzJKL0RhVUZ3azByY1ErMFMr?=
 =?utf-8?B?NGplYUtFSUUxbWJjaE4rS0M2YUpTckRETW5tMGQ3MVpENXpqbjBXUHl1OE0v?=
 =?utf-8?B?T2F1c3REckI5K3Z2VDloT3pncG9HaTNJS09VamNBWlArSGZNTzlEbGNINW5u?=
 =?utf-8?B?QkY5RkprL3FYditYNU1HWmpMeW15SmdCdWRPdFlpMGIrVXpzZS9nUGZHVEgr?=
 =?utf-8?B?czVteUlYMDdNQUZncC9tUUd5R3ZFK2c0OFdJTnRqKzZKWHNTRTgwM211R0RO?=
 =?utf-8?B?V1h6WWJLTEtURVQrTXpEZUtFcnBFR0ljejNVOGVxMWtFZXZBU1BPUm9TRG83?=
 =?utf-8?B?UCthdEo5MkRtek1HTFVPOEJ3Vk8ybG5IQTB0TE1aY2h1dHVxRTFjZXRYMXpD?=
 =?utf-8?B?a1hTQzhtdzdoQlRwS0R3cEJ1WE5NeWhHbytBWlRoaVI4Q3RjMHR5NHhWdGhM?=
 =?utf-8?B?c2F5M1EraVZuOCtJZWlRN3hoVU1yVncyWENUMzFFSEhYNGVCWGgycmM0aFBJ?=
 =?utf-8?B?c01La0dVY0hMZlRTaC8vUVBTSEsxSWJiN2U4b3h5R2ZqSWpscWxheUp5dnlW?=
 =?utf-8?B?Yk1QV1lPekFZcnhkRnBqNzNqWlhLcXkxSTc0ZVFZLzEvOGpWTFVrM0JpaDdo?=
 =?utf-8?B?b1V1UG85VG4xMTJtQ05PanVRem9UZjh6WVdTOUZzSnZmakJITWFNcWdpeW1P?=
 =?utf-8?B?WGgvaWRzSHAyZXpXK1RzbUtacUh1Skdrdk5uS3htYk5XcTVaODlWSlVOSStW?=
 =?utf-8?B?d1AyTFNzMlRrdm9jQy9TNFAxWVlkZ0JRYWVaRFZrd2dISGVrOXUrS3pYWm5q?=
 =?utf-8?B?MDJKZDdWUlp0bFAwTjFZVDhWMUt5cjh6eFUwbnN4MjdqNVJ0WnV1MFA5WE9x?=
 =?utf-8?B?cWttY0xpQUZxRW5MRklHV3BQNEdTTFVXYXVlNHBNazRiTjNuMWpRMVhRRi9y?=
 =?utf-8?B?U0tBS1A5SUNwaUMrK0VkMmF5dmNWU0dhaWY2WGFYKzdsTEZsNi9JLzJPeGU5?=
 =?utf-8?B?YUxFTWVNNmhWa0QwNy9TZW9sK0d1alh3NU9jSXpqaUxQTE84YmJxL3BtZTdG?=
 =?utf-8?B?TnJZWjBmdmdxREdhRG9TZ0JyamFPV01zYXFEQ3k5Z25VZ2JhN2NVVEh2cThS?=
 =?utf-8?B?YStRRWYrZ21rU2gvZkh2UmpzUm8zMmRLelRvQXVQdCtMd0tmUmF4aVg1R3pz?=
 =?utf-8?B?QU51bk10ZjNiMUNldXo5MVJZSzF5MlI0N2tnUmE1RVI4a1AyalBGWmk4SGFR?=
 =?utf-8?B?Rm5RQ3RVMnhMbjJvSWpIdG1MZ0lhcFFIandLUk1rWkpqTFJjQS81bXJYaGhk?=
 =?utf-8?B?Z0FORkFQYkNETlBUV1hTYU1uTXNDeEhhNHFhZTJLVllpNis2L3VIWklRPT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0594b4a-c316-4e9b-f02a-08de3136ddab
X-MS-Exchange-CrossTenant-AuthSource: LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 00:08:05.4651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8P221MB0487

Hey all.

I just got interested in kernel development and I want to ask, what is 
the standard way to implement dynamically allocated memory?  I am trying 
to finish a todo and just want to know how the standard way to do it is 
so I don't write a bunch of code completely wrong, get yelled at and 
have to redo it.

Would it be something like this for an array of ints for example? 
(pseudocode)

struct dynarray {

         int *arraypointer;

         int arraysize;

         int used;

}


void cpy_to_dynarray(struct dynarray *dest, int *src, int size)

{

         if (size > dest->arraysize) {

                 dest->arraypointer = realloc(size * 2);

                 dest->arraysize = size * 2;

         }

          memcpy(dest->arraypointer, src, size);

}

