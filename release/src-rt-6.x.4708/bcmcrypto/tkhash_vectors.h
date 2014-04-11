/*
 * tkhash_vectors.h
 * TKIP Key Hash test vectors
 *
 * Copyright (C) 2014, Broadcom Corporation
 * All Rights Reserved.
 * 
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Broadcom Corporation;
 * the contents of this file may not be disclosed to third parties, copied
 * or duplicated in any form, in whole or in part, without the prior
 * written permission of Broadcom Corporation.
 *
 * $Id: tkhash_vectors.h 241182 2011-02-17 21:50:03Z $
 */

#include <typedefs.h>

/* From 802.11i-D3.0 */
uint8 tk_00[] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
	0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	};

uint8 ta_00[] = { 0x10, 0x22, 0x33, 0x44, 0x55, 0x66 };

uint32 iv32_00  = 0x00000000;

uint16 iv16_00  = 0x0000;

uint16 p1k_00[] = { 0x3DD2, 0x016E, 0x76F4, 0x8697, 0xB2E8 };

uint8 rc4key_00 [] = {
	0x00, 0x20, 0x00, 0x33, 0xEA, 0x8D, 0x2F, 0x60,
	0xCA, 0x6D, 0x13, 0x74, 0x23, 0x4A, 0x66, 0x0B
	};


uint8 tk_01[] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
	0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	};

uint8 ta_01[] = { 0x10, 0x22, 0x33, 0x44, 0x55, 0x66 };

uint32 iv32_01  = 0x00000000;

uint16 iv16_01  = 0x0001;

uint16 p1k_01[] = { 0x3DD2, 0x016E, 0x76F4, 0x8697, 0xB2E8 };

uint8 rc4key_01[] = {
	0x00, 0x20, 0x01, 0x90, 0xFF, 0xDC, 0x31, 0x43,
	0x89, 0xA9, 0xD9, 0xD0, 0x74, 0xFD, 0x20, 0xAA
	};


uint8 tk_02[] = {
	0x63, 0x89, 0x3B, 0x25, 0x08, 0x40, 0xB8, 0xAE,
	0x0B, 0xD0, 0xFA, 0x7E, 0x61, 0xD2, 0x78, 0x3E
	};

uint8 ta_02[] = { 0x64, 0xF2, 0xEA, 0xED, 0xDC, 0x25 };

uint32 iv32_02 = 0x20DCFD43;

uint16 iv16_02 = 0xFFFF;

uint16 p1k_02[] = { 0x7C67, 0x49D7, 0x9724, 0xB5E9, 0xB4F1 };

uint8 rc4key_02[] = {
	0xFF, 0x7F, 0xFF, 0x93, 0x81, 0x0F, 0xC6, 0xE5,
	0x8F, 0x5D, 0xD3, 0x26, 0x25, 0x15, 0x44, 0xCE
	};


uint8 tk_03[] = {
	0x63, 0x89, 0x3B, 0x25, 0x08, 0x40, 0xB8, 0xAE,
	0x0B, 0xD0, 0xFA, 0x7E, 0x61, 0xD2, 0x78, 0x3E
	};

uint8 ta_03[] = { 0x64, 0xF2, 0xEA, 0xED, 0xDC, 0x25 };

uint32 iv32_03 = 0x20DCFD44;

uint16 iv16_03 = 0x0000;

uint16 p1k_03[] = { 0x5A5D, 0x73A8, 0xA859, 0x2EC1, 0xDC8B };

uint8 rc4key_03[] = {
	0x00, 0x20, 0x00, 0x49, 0x8C, 0xA4, 0x71, 0xFC,
	0xFB, 0xFA, 0xA1, 0x6E, 0x36, 0x10, 0xF0, 0x05
	};


uint8 tk_04[] = {
	0x98, 0x3A, 0x16, 0xEF, 0x4F, 0xAC, 0xB3, 0x51,
	0xAA, 0x9E, 0xCC, 0x27, 0x1D, 0x73, 0x09, 0xE2
	};

uint8 ta_04[] = { 0x50, 0x9C, 0x4B, 0x17, 0x27, 0xD9 };

uint32 iv32_04 = 0xF0A410FC;

uint16 iv16_04 = 0x058C;

uint16 p1k_04[] = { 0xF2DF, 0xEBB1, 0x88D3, 0x5923, 0xA07C };

uint8 rc4key_04[] = {
	0x05, 0x25, 0x8C, 0xF4, 0xD8, 0x51, 0x52, 0xF4,
	0xD9, 0xAF, 0x1A, 0x64, 0xF1, 0xD0, 0x70, 0x21
	};


uint8 tk_05[] = {
	0x98, 0x3A, 0x16, 0xEF, 0x4F, 0xAC, 0xB3, 0x51,
	0xAA, 0x9E, 0xCC, 0x27, 0x1D, 0x73, 0x09, 0xE2
	};

uint8 ta_05[] = { 0x50, 0x9C, 0x4B, 0x17, 0x27, 0xD9 };

uint32 iv32_05 = 0xF0A410FC;

uint16 iv16_05 = 0x058D;

uint16 p1k_05[] = { 0xF2DF, 0xEBB1, 0x88D3, 0x5923, 0xA07C };

uint8 rc4key_05[] = {
	0x05, 0x25, 0x8D, 0x09, 0xF8, 0x15, 0x43, 0xB7,
	0x6A, 0x59, 0x6F, 0xC2, 0xC6, 0x73, 0x8B, 0x30
	};


uint8 tk_06[] = {
	0xC8, 0xAD, 0xC1, 0x6A, 0x8B, 0x4D, 0xDA, 0x3B,
	0x4D, 0xD5, 0xB6, 0x54, 0x38, 0x35, 0x9B, 0x05
	};

uint8 ta_06[] = { 0x94, 0x5E, 0x24, 0x4E, 0x4D, 0x6E };

uint32 iv32_06 = 0x8B1573B7;

uint16 iv16_06 = 0x30F8;

uint16 p1k_06[] = { 0xEFF1, 0x3F38, 0xA364, 0x60A9, 0x76F3 };

uint8 rc4key_06[] = {
	0x30, 0x30, 0xF8, 0x65, 0x0D, 0xA0, 0x73, 0xEA,
	0x61, 0x4E, 0xA8, 0xF4, 0x74, 0xEE, 0x03, 0x19
	};

typedef struct {
    uint8 *tk;
    uint8 *ta;
    uint32 *iv32;
    uint16 *iv16;
    uint16 *p1k;
    uint8 *rc4key;
} tkhash_vector_t;

#define TKHASH_VECTOR_ENTRY(x)    \
	{ tk_##x, ta_##x, &iv32_##x, &iv16_##x, p1k_##x, rc4key_##x }

tkhash_vector_t tkhash_vec[] = {
    TKHASH_VECTOR_ENTRY(00),
    TKHASH_VECTOR_ENTRY(01),
    TKHASH_VECTOR_ENTRY(02),
    TKHASH_VECTOR_ENTRY(03),
    TKHASH_VECTOR_ENTRY(04),
    TKHASH_VECTOR_ENTRY(05),
    TKHASH_VECTOR_ENTRY(06)
    };
