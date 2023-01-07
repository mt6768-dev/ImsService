.class public final Landroid/hardware/radio/V1_0/NvItem;
.super Ljava/lang/Object;
.source "NvItem.java"


# static fields
.field public static final CDMA_1X_ADVANCED_ENABLED:I = 0x39

.field public static final CDMA_ACCOLC:I = 0x4

.field public static final CDMA_BC10:I = 0x34

.field public static final CDMA_BC14:I = 0x35

.field public static final CDMA_EHRPD_ENABLED:I = 0x3a

.field public static final CDMA_EHRPD_FORCED:I = 0x3b

.field public static final CDMA_MDN:I = 0x3

.field public static final CDMA_MEID:I = 0x1

.field public static final CDMA_MIN:I = 0x2

.field public static final CDMA_PRL_VERSION:I = 0x33

.field public static final CDMA_SO68:I = 0x36

.field public static final CDMA_SO73_COP0:I = 0x37

.field public static final CDMA_SO73_COP1TO7:I = 0x38

.field public static final DEVICE_MSL:I = 0xb

.field public static final LTE_BAND_ENABLE_25:I = 0x47

.field public static final LTE_BAND_ENABLE_26:I = 0x48

.field public static final LTE_BAND_ENABLE_41:I = 0x49

.field public static final LTE_HIDDEN_BAND_PRIORITY_25:I = 0x4d

.field public static final LTE_HIDDEN_BAND_PRIORITY_26:I = 0x4e

.field public static final LTE_HIDDEN_BAND_PRIORITY_41:I = 0x4f

.field public static final LTE_SCAN_PRIORITY_25:I = 0x4a

.field public static final LTE_SCAN_PRIORITY_26:I = 0x4b

.field public static final LTE_SCAN_PRIORITY_41:I = 0x4c

.field public static final MIP_PROFILE_AAA_AUTH:I = 0x21

.field public static final MIP_PROFILE_AAA_SPI:I = 0x27

.field public static final MIP_PROFILE_HA_AUTH:I = 0x22

.field public static final MIP_PROFILE_HA_SPI:I = 0x26

.field public static final MIP_PROFILE_HOME_ADDRESS:I = 0x20

.field public static final MIP_PROFILE_MN_AAA_SS:I = 0x29

.field public static final MIP_PROFILE_MN_HA_SS:I = 0x28

.field public static final MIP_PROFILE_NAI:I = 0x1f

.field public static final MIP_PROFILE_PRI_HA_ADDR:I = 0x23

.field public static final MIP_PROFILE_REV_TUN_PREF:I = 0x25

.field public static final MIP_PROFILE_SEC_HA_ADDR:I = 0x24

.field public static final OMADM_HFA_LEVEL:I = 0x12

.field public static final RTN_ACTIVATION_DATE:I = 0xd

.field public static final RTN_LIFE_CALLS:I = 0xf

.field public static final RTN_LIFE_DATA_RX:I = 0x11

.field public static final RTN_LIFE_DATA_TX:I = 0x10

.field public static final RTN_LIFE_TIMER:I = 0xe

.field public static final RTN_RECONDITIONED_STATUS:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 176
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 177
    const-string v2, "CDMA_MEID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 181
    const-string v2, "CDMA_MIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x2

    .line 184
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 185
    const-string v2, "CDMA_MDN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x3

    .line 188
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 189
    const-string v2, "CDMA_ACCOLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x4

    .line 192
    :cond_3
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 193
    const-string v2, "DEVICE_MSL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0xb

    .line 196
    :cond_4
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    .line 197
    const-string v2, "RTN_RECONDITIONED_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0xc

    .line 200
    :cond_5
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_6

    .line 201
    const-string v2, "RTN_ACTIVATION_DATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0xd

    .line 204
    :cond_6
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_7

    .line 205
    const-string v2, "RTN_LIFE_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0xe

    .line 208
    :cond_7
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_8

    .line 209
    const-string v2, "RTN_LIFE_CALLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0xf

    .line 212
    :cond_8
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9

    .line 213
    const-string v2, "RTN_LIFE_DATA_TX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v1, v1, 0x10

    .line 216
    :cond_9
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_a

    .line 217
    const-string v2, "RTN_LIFE_DATA_RX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit8 v1, v1, 0x11

    .line 220
    :cond_a
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_b

    .line 221
    const-string v2, "OMADM_HFA_LEVEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit8 v1, v1, 0x12

    .line 224
    :cond_b
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_c

    .line 225
    const-string v2, "MIP_PROFILE_NAI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    or-int/lit8 v1, v1, 0x1f

    .line 228
    :cond_c
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    .line 229
    const-string v2, "MIP_PROFILE_HOME_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v1, v1, 0x20

    .line 232
    :cond_d
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_e

    .line 233
    const-string v2, "MIP_PROFILE_AAA_AUTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit8 v1, v1, 0x21

    .line 236
    :cond_e
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_f

    .line 237
    const-string v2, "MIP_PROFILE_HA_AUTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v1, v1, 0x22

    .line 240
    :cond_f
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_10

    .line 241
    const-string v2, "MIP_PROFILE_PRI_HA_ADDR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v1, v1, 0x23

    .line 244
    :cond_10
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_11

    .line 245
    const-string v2, "MIP_PROFILE_SEC_HA_ADDR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v1, v1, 0x24

    .line 248
    :cond_11
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_12

    .line 249
    const-string v2, "MIP_PROFILE_REV_TUN_PREF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v1, v1, 0x25

    .line 252
    :cond_12
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_13

    .line 253
    const-string v2, "MIP_PROFILE_HA_SPI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v1, v1, 0x26

    .line 256
    :cond_13
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_14

    .line 257
    const-string v2, "MIP_PROFILE_AAA_SPI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v1, v1, 0x27

    .line 260
    :cond_14
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_15

    .line 261
    const-string v2, "MIP_PROFILE_MN_HA_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit8 v1, v1, 0x28

    .line 264
    :cond_15
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_16

    .line 265
    const-string v2, "MIP_PROFILE_MN_AAA_SS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit8 v1, v1, 0x29

    .line 268
    :cond_16
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_17

    .line 269
    const-string v2, "CDMA_PRL_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit8 v1, v1, 0x33

    .line 272
    :cond_17
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_18

    .line 273
    const-string v2, "CDMA_BC10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit8 v1, v1, 0x34

    .line 276
    :cond_18
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_19

    .line 277
    const-string v2, "CDMA_BC14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit8 v1, v1, 0x35

    .line 280
    :cond_19
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1a

    .line 281
    const-string v2, "CDMA_SO68"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit8 v1, v1, 0x36

    .line 284
    :cond_1a
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_1b

    .line 285
    const-string v2, "CDMA_SO73_COP0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    or-int/lit8 v1, v1, 0x37

    .line 288
    :cond_1b
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1c

    .line 289
    const-string v2, "CDMA_SO73_COP1TO7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit8 v1, v1, 0x38

    .line 292
    :cond_1c
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1d

    .line 293
    const-string v2, "CDMA_1X_ADVANCED_ENABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit8 v1, v1, 0x39

    .line 296
    :cond_1d
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1e

    .line 297
    const-string v2, "CDMA_EHRPD_ENABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit8 v1, v1, 0x3a

    .line 300
    :cond_1e
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1f

    .line 301
    const-string v2, "CDMA_EHRPD_FORCED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit8 v1, v1, 0x3b

    .line 304
    :cond_1f
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_20

    .line 305
    const-string v2, "LTE_BAND_ENABLE_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit8 v1, v1, 0x47

    .line 308
    :cond_20
    and-int/lit8 v2, p0, 0x48

    const/16 v3, 0x48

    if-ne v2, v3, :cond_21

    .line 309
    const-string v2, "LTE_BAND_ENABLE_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit8 v1, v1, 0x48

    .line 312
    :cond_21
    and-int/lit8 v2, p0, 0x49

    const/16 v3, 0x49

    if-ne v2, v3, :cond_22

    .line 313
    const-string v2, "LTE_BAND_ENABLE_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit8 v1, v1, 0x49

    .line 316
    :cond_22
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_23

    .line 317
    const-string v2, "LTE_SCAN_PRIORITY_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit8 v1, v1, 0x4a

    .line 320
    :cond_23
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_24

    .line 321
    const-string v2, "LTE_SCAN_PRIORITY_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit8 v1, v1, 0x4b

    .line 324
    :cond_24
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_25

    .line 325
    const-string v2, "LTE_SCAN_PRIORITY_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/lit8 v1, v1, 0x4c

    .line 328
    :cond_25
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_26

    .line 329
    const-string v2, "LTE_HIDDEN_BAND_PRIORITY_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit8 v1, v1, 0x4d

    .line 332
    :cond_26
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_27

    .line 333
    const-string v2, "LTE_HIDDEN_BAND_PRIORITY_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit8 v1, v1, 0x4e

    .line 336
    :cond_27
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_28

    .line 337
    const-string v2, "LTE_HIDDEN_BAND_PRIORITY_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit8 v1, v1, 0x4f

    .line 340
    :cond_28
    if-eq p0, v1, :cond_29

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_29
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 47
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 48
    const-string v0, "CDMA_MEID"

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 51
    const-string v0, "CDMA_MIN"

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 54
    const-string v0, "CDMA_MDN"

    return-object v0

    .line 56
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 57
    const-string v0, "CDMA_ACCOLC"

    return-object v0

    .line 59
    :cond_3
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4

    .line 60
    const-string v0, "DEVICE_MSL"

    return-object v0

    .line 62
    :cond_4
    const/16 v0, 0xc

    if-ne p0, v0, :cond_5

    .line 63
    const-string v0, "RTN_RECONDITIONED_STATUS"

    return-object v0

    .line 65
    :cond_5
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    .line 66
    const-string v0, "RTN_ACTIVATION_DATE"

    return-object v0

    .line 68
    :cond_6
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    .line 69
    const-string v0, "RTN_LIFE_TIMER"

    return-object v0

    .line 71
    :cond_7
    const/16 v0, 0xf

    if-ne p0, v0, :cond_8

    .line 72
    const-string v0, "RTN_LIFE_CALLS"

    return-object v0

    .line 74
    :cond_8
    const/16 v0, 0x10

    if-ne p0, v0, :cond_9

    .line 75
    const-string v0, "RTN_LIFE_DATA_TX"

    return-object v0

    .line 77
    :cond_9
    const/16 v0, 0x11

    if-ne p0, v0, :cond_a

    .line 78
    const-string v0, "RTN_LIFE_DATA_RX"

    return-object v0

    .line 80
    :cond_a
    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    .line 81
    const-string v0, "OMADM_HFA_LEVEL"

    return-object v0

    .line 83
    :cond_b
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_c

    .line 84
    const-string v0, "MIP_PROFILE_NAI"

    return-object v0

    .line 86
    :cond_c
    const/16 v0, 0x20

    if-ne p0, v0, :cond_d

    .line 87
    const-string v0, "MIP_PROFILE_HOME_ADDRESS"

    return-object v0

    .line 89
    :cond_d
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e

    .line 90
    const-string v0, "MIP_PROFILE_AAA_AUTH"

    return-object v0

    .line 92
    :cond_e
    const/16 v0, 0x22

    if-ne p0, v0, :cond_f

    .line 93
    const-string v0, "MIP_PROFILE_HA_AUTH"

    return-object v0

    .line 95
    :cond_f
    const/16 v0, 0x23

    if-ne p0, v0, :cond_10

    .line 96
    const-string v0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object v0

    .line 98
    :cond_10
    const/16 v0, 0x24

    if-ne p0, v0, :cond_11

    .line 99
    const-string v0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object v0

    .line 101
    :cond_11
    const/16 v0, 0x25

    if-ne p0, v0, :cond_12

    .line 102
    const-string v0, "MIP_PROFILE_REV_TUN_PREF"

    return-object v0

    .line 104
    :cond_12
    const/16 v0, 0x26

    if-ne p0, v0, :cond_13

    .line 105
    const-string v0, "MIP_PROFILE_HA_SPI"

    return-object v0

    .line 107
    :cond_13
    const/16 v0, 0x27

    if-ne p0, v0, :cond_14

    .line 108
    const-string v0, "MIP_PROFILE_AAA_SPI"

    return-object v0

    .line 110
    :cond_14
    const/16 v0, 0x28

    if-ne p0, v0, :cond_15

    .line 111
    const-string v0, "MIP_PROFILE_MN_HA_SS"

    return-object v0

    .line 113
    :cond_15
    const/16 v0, 0x29

    if-ne p0, v0, :cond_16

    .line 114
    const-string v0, "MIP_PROFILE_MN_AAA_SS"

    return-object v0

    .line 116
    :cond_16
    const/16 v0, 0x33

    if-ne p0, v0, :cond_17

    .line 117
    const-string v0, "CDMA_PRL_VERSION"

    return-object v0

    .line 119
    :cond_17
    const/16 v0, 0x34

    if-ne p0, v0, :cond_18

    .line 120
    const-string v0, "CDMA_BC10"

    return-object v0

    .line 122
    :cond_18
    const/16 v0, 0x35

    if-ne p0, v0, :cond_19

    .line 123
    const-string v0, "CDMA_BC14"

    return-object v0

    .line 125
    :cond_19
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1a

    .line 126
    const-string v0, "CDMA_SO68"

    return-object v0

    .line 128
    :cond_1a
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1b

    .line 129
    const-string v0, "CDMA_SO73_COP0"

    return-object v0

    .line 131
    :cond_1b
    const/16 v0, 0x38

    if-ne p0, v0, :cond_1c

    .line 132
    const-string v0, "CDMA_SO73_COP1TO7"

    return-object v0

    .line 134
    :cond_1c
    const/16 v0, 0x39

    if-ne p0, v0, :cond_1d

    .line 135
    const-string v0, "CDMA_1X_ADVANCED_ENABLED"

    return-object v0

    .line 137
    :cond_1d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1e

    .line 138
    const-string v0, "CDMA_EHRPD_ENABLED"

    return-object v0

    .line 140
    :cond_1e
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1f

    .line 141
    const-string v0, "CDMA_EHRPD_FORCED"

    return-object v0

    .line 143
    :cond_1f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_20

    .line 144
    const-string v0, "LTE_BAND_ENABLE_25"

    return-object v0

    .line 146
    :cond_20
    const/16 v0, 0x48

    if-ne p0, v0, :cond_21

    .line 147
    const-string v0, "LTE_BAND_ENABLE_26"

    return-object v0

    .line 149
    :cond_21
    const/16 v0, 0x49

    if-ne p0, v0, :cond_22

    .line 150
    const-string v0, "LTE_BAND_ENABLE_41"

    return-object v0

    .line 152
    :cond_22
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_23

    .line 153
    const-string v0, "LTE_SCAN_PRIORITY_25"

    return-object v0

    .line 155
    :cond_23
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_24

    .line 156
    const-string v0, "LTE_SCAN_PRIORITY_26"

    return-object v0

    .line 158
    :cond_24
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_25

    .line 159
    const-string v0, "LTE_SCAN_PRIORITY_41"

    return-object v0

    .line 161
    :cond_25
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_26

    .line 162
    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object v0

    .line 164
    :cond_26
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 165
    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object v0

    .line 167
    :cond_27
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_28

    .line 168
    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object v0

    .line 170
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
