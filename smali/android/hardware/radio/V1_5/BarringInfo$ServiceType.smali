.class public final Landroid/hardware/radio/V1_5/BarringInfo$ServiceType;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceType"
.end annotation


# static fields
.field public static final CS_FALLBACK:I = 0x5

.field public static final CS_SERVICE:I = 0x0

.field public static final CS_VOICE:I = 0x2

.field public static final EMERGENCY:I = 0x8

.field public static final MMTEL_VIDEO:I = 0x7

.field public static final MMTEL_VOICE:I = 0x6

.field public static final MO_DATA:I = 0x4

.field public static final MO_SIGNALLING:I = 0x3

.field public static final OPERATOR_1:I = 0x3e9

.field public static final OPERATOR_10:I = 0x3f2

.field public static final OPERATOR_11:I = 0x3f3

.field public static final OPERATOR_12:I = 0x3f4

.field public static final OPERATOR_13:I = 0x3f5

.field public static final OPERATOR_14:I = 0x3f6

.field public static final OPERATOR_15:I = 0x3f7

.field public static final OPERATOR_16:I = 0x3f8

.field public static final OPERATOR_17:I = 0x3f9

.field public static final OPERATOR_18:I = 0x3fa

.field public static final OPERATOR_19:I = 0x3fb

.field public static final OPERATOR_2:I = 0x3ea

.field public static final OPERATOR_20:I = 0x3fc

.field public static final OPERATOR_21:I = 0x3fd

.field public static final OPERATOR_22:I = 0x3fe

.field public static final OPERATOR_23:I = 0x3ff

.field public static final OPERATOR_24:I = 0x400

.field public static final OPERATOR_25:I = 0x401

.field public static final OPERATOR_26:I = 0x402

.field public static final OPERATOR_27:I = 0x403

.field public static final OPERATOR_28:I = 0x404

.field public static final OPERATOR_29:I = 0x405

.field public static final OPERATOR_3:I = 0x3eb

.field public static final OPERATOR_30:I = 0x406

.field public static final OPERATOR_31:I = 0x407

.field public static final OPERATOR_32:I = 0x408

.field public static final OPERATOR_4:I = 0x3ec

.field public static final OPERATOR_5:I = 0x3ed

.field public static final OPERATOR_6:I = 0x3ee

.field public static final OPERATOR_7:I = 0x3ef

.field public static final OPERATOR_8:I = 0x3f0

.field public static final OPERATOR_9:I = 0x3f1

.field public static final PS_SERVICE:I = 0x1

.field public static final SMS:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 223
    .local v1, "flipped":I
    const-string v2, "CS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 225
    const-string v2, "PS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    or-int/lit8 v1, v1, 0x1

    .line 228
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 229
    const-string v2, "CS_VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v1, v1, 0x2

    .line 232
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 233
    const-string v2, "MO_SIGNALLING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit8 v1, v1, 0x3

    .line 236
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 237
    const-string v2, "MO_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v1, v1, 0x4

    .line 240
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 241
    const-string v2, "CS_FALLBACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v1, v1, 0x5

    .line 244
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 245
    const-string v2, "MMTEL_VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v1, v1, 0x6

    .line 248
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 249
    const-string v2, "MMTEL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v1, v1, 0x7

    .line 252
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 253
    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v1, v1, 0x8

    .line 256
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 257
    const-string v2, "SMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v1, v1, 0x9

    .line 260
    :cond_8
    and-int/lit16 v2, p0, 0x3e9

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_9

    .line 261
    const-string v2, "OPERATOR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit16 v1, v1, 0x3e9

    .line 264
    :cond_9
    and-int/lit16 v2, p0, 0x3ea

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_a

    .line 265
    const-string v2, "OPERATOR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit16 v1, v1, 0x3ea

    .line 268
    :cond_a
    and-int/lit16 v2, p0, 0x3eb

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_b

    .line 269
    const-string v2, "OPERATOR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit16 v1, v1, 0x3eb

    .line 272
    :cond_b
    and-int/lit16 v2, p0, 0x3ec

    const/16 v3, 0x3ec

    if-ne v2, v3, :cond_c

    .line 273
    const-string v2, "OPERATOR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit16 v1, v1, 0x3ec

    .line 276
    :cond_c
    and-int/lit16 v2, p0, 0x3ed

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_d

    .line 277
    const-string v2, "OPERATOR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit16 v1, v1, 0x3ed

    .line 280
    :cond_d
    and-int/lit16 v2, p0, 0x3ee

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_e

    .line 281
    const-string v2, "OPERATOR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit16 v1, v1, 0x3ee

    .line 284
    :cond_e
    and-int/lit16 v2, p0, 0x3ef

    const/16 v3, 0x3ef

    if-ne v2, v3, :cond_f

    .line 285
    const-string v2, "OPERATOR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    or-int/lit16 v1, v1, 0x3ef

    .line 288
    :cond_f
    and-int/lit16 v2, p0, 0x3f0

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_10

    .line 289
    const-string v2, "OPERATOR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit16 v1, v1, 0x3f0

    .line 292
    :cond_10
    and-int/lit16 v2, p0, 0x3f1

    const/16 v3, 0x3f1

    if-ne v2, v3, :cond_11

    .line 293
    const-string v2, "OPERATOR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit16 v1, v1, 0x3f1

    .line 296
    :cond_11
    and-int/lit16 v2, p0, 0x3f2

    const/16 v3, 0x3f2

    if-ne v2, v3, :cond_12

    .line 297
    const-string v2, "OPERATOR_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit16 v1, v1, 0x3f2

    .line 300
    :cond_12
    and-int/lit16 v2, p0, 0x3f3

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_13

    .line 301
    const-string v2, "OPERATOR_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit16 v1, v1, 0x3f3

    .line 304
    :cond_13
    and-int/lit16 v2, p0, 0x3f4

    const/16 v3, 0x3f4

    if-ne v2, v3, :cond_14

    .line 305
    const-string v2, "OPERATOR_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit16 v1, v1, 0x3f4

    .line 308
    :cond_14
    and-int/lit16 v2, p0, 0x3f5

    const/16 v3, 0x3f5

    if-ne v2, v3, :cond_15

    .line 309
    const-string v2, "OPERATOR_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit16 v1, v1, 0x3f5

    .line 312
    :cond_15
    and-int/lit16 v2, p0, 0x3f6

    const/16 v3, 0x3f6

    if-ne v2, v3, :cond_16

    .line 313
    const-string v2, "OPERATOR_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit16 v1, v1, 0x3f6

    .line 316
    :cond_16
    and-int/lit16 v2, p0, 0x3f7

    const/16 v3, 0x3f7

    if-ne v2, v3, :cond_17

    .line 317
    const-string v2, "OPERATOR_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit16 v1, v1, 0x3f7

    .line 320
    :cond_17
    and-int/lit16 v2, p0, 0x3f8

    const/16 v3, 0x3f8

    if-ne v2, v3, :cond_18

    .line 321
    const-string v2, "OPERATOR_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit16 v1, v1, 0x3f8

    .line 324
    :cond_18
    and-int/lit16 v2, p0, 0x3f9

    const/16 v3, 0x3f9

    if-ne v2, v3, :cond_19

    .line 325
    const-string v2, "OPERATOR_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/lit16 v1, v1, 0x3f9

    .line 328
    :cond_19
    and-int/lit16 v2, p0, 0x3fa

    const/16 v3, 0x3fa

    if-ne v2, v3, :cond_1a

    .line 329
    const-string v2, "OPERATOR_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit16 v1, v1, 0x3fa

    .line 332
    :cond_1a
    and-int/lit16 v2, p0, 0x3fb

    const/16 v3, 0x3fb

    if-ne v2, v3, :cond_1b

    .line 333
    const-string v2, "OPERATOR_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit16 v1, v1, 0x3fb

    .line 336
    :cond_1b
    and-int/lit16 v2, p0, 0x3fc

    const/16 v3, 0x3fc

    if-ne v2, v3, :cond_1c

    .line 337
    const-string v2, "OPERATOR_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit16 v1, v1, 0x3fc

    .line 340
    :cond_1c
    and-int/lit16 v2, p0, 0x3fd

    const/16 v3, 0x3fd

    if-ne v2, v3, :cond_1d

    .line 341
    const-string v2, "OPERATOR_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    or-int/lit16 v1, v1, 0x3fd

    .line 344
    :cond_1d
    and-int/lit16 v2, p0, 0x3fe

    const/16 v3, 0x3fe

    if-ne v2, v3, :cond_1e

    .line 345
    const-string v2, "OPERATOR_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    or-int/lit16 v1, v1, 0x3fe

    .line 348
    :cond_1e
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_1f

    .line 349
    const-string v2, "OPERATOR_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    or-int/lit16 v1, v1, 0x3ff

    .line 352
    :cond_1f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_20

    .line 353
    const-string v2, "OPERATOR_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit16 v1, v1, 0x400

    .line 356
    :cond_20
    and-int/lit16 v2, p0, 0x401

    const/16 v3, 0x401

    if-ne v2, v3, :cond_21

    .line 357
    const-string v2, "OPERATOR_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit16 v1, v1, 0x401

    .line 360
    :cond_21
    and-int/lit16 v2, p0, 0x402

    const/16 v3, 0x402

    if-ne v2, v3, :cond_22

    .line 361
    const-string v2, "OPERATOR_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit16 v1, v1, 0x402

    .line 364
    :cond_22
    and-int/lit16 v2, p0, 0x403

    const/16 v3, 0x403

    if-ne v2, v3, :cond_23

    .line 365
    const-string v2, "OPERATOR_27"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit16 v1, v1, 0x403

    .line 368
    :cond_23
    and-int/lit16 v2, p0, 0x404

    const/16 v3, 0x404

    if-ne v2, v3, :cond_24

    .line 369
    const-string v2, "OPERATOR_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit16 v1, v1, 0x404

    .line 372
    :cond_24
    and-int/lit16 v2, p0, 0x405

    const/16 v3, 0x405

    if-ne v2, v3, :cond_25

    .line 373
    const-string v2, "OPERATOR_29"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit16 v1, v1, 0x405

    .line 376
    :cond_25
    and-int/lit16 v2, p0, 0x406

    const/16 v3, 0x406

    if-ne v2, v3, :cond_26

    .line 377
    const-string v2, "OPERATOR_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit16 v1, v1, 0x406

    .line 380
    :cond_26
    and-int/lit16 v2, p0, 0x407

    const/16 v3, 0x407

    if-ne v2, v3, :cond_27

    .line 381
    const-string v2, "OPERATOR_31"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit16 v1, v1, 0x407

    .line 384
    :cond_27
    and-int/lit16 v2, p0, 0x408

    const/16 v3, 0x408

    if-ne v2, v3, :cond_28

    .line 385
    const-string v2, "OPERATOR_32"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit16 v1, v1, 0x408

    .line 388
    :cond_28
    if-eq p0, v1, :cond_29

    .line 389
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

    .line 391
    :cond_29
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string v0, "CS_SERVICE"

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 95
    const-string v0, "PS_SERVICE"

    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 98
    const-string v0, "CS_VOICE"

    return-object v0

    .line 100
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 101
    const-string v0, "MO_SIGNALLING"

    return-object v0

    .line 103
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 104
    const-string v0, "MO_DATA"

    return-object v0

    .line 106
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 107
    const-string v0, "CS_FALLBACK"

    return-object v0

    .line 109
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 110
    const-string v0, "MMTEL_VOICE"

    return-object v0

    .line 112
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 113
    const-string v0, "MMTEL_VIDEO"

    return-object v0

    .line 115
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 116
    const-string v0, "EMERGENCY"

    return-object v0

    .line 118
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 119
    const-string v0, "SMS"

    return-object v0

    .line 121
    :cond_9
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_a

    .line 122
    const-string v0, "OPERATOR_1"

    return-object v0

    .line 124
    :cond_a
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_b

    .line 125
    const-string v0, "OPERATOR_2"

    return-object v0

    .line 127
    :cond_b
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_c

    .line 128
    const-string v0, "OPERATOR_3"

    return-object v0

    .line 130
    :cond_c
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_d

    .line 131
    const-string v0, "OPERATOR_4"

    return-object v0

    .line 133
    :cond_d
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_e

    .line 134
    const-string v0, "OPERATOR_5"

    return-object v0

    .line 136
    :cond_e
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_f

    .line 137
    const-string v0, "OPERATOR_6"

    return-object v0

    .line 139
    :cond_f
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_10

    .line 140
    const-string v0, "OPERATOR_7"

    return-object v0

    .line 142
    :cond_10
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_11

    .line 143
    const-string v0, "OPERATOR_8"

    return-object v0

    .line 145
    :cond_11
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_12

    .line 146
    const-string v0, "OPERATOR_9"

    return-object v0

    .line 148
    :cond_12
    const/16 v0, 0x3f2

    if-ne p0, v0, :cond_13

    .line 149
    const-string v0, "OPERATOR_10"

    return-object v0

    .line 151
    :cond_13
    const/16 v0, 0x3f3

    if-ne p0, v0, :cond_14

    .line 152
    const-string v0, "OPERATOR_11"

    return-object v0

    .line 154
    :cond_14
    const/16 v0, 0x3f4

    if-ne p0, v0, :cond_15

    .line 155
    const-string v0, "OPERATOR_12"

    return-object v0

    .line 157
    :cond_15
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_16

    .line 158
    const-string v0, "OPERATOR_13"

    return-object v0

    .line 160
    :cond_16
    const/16 v0, 0x3f6

    if-ne p0, v0, :cond_17

    .line 161
    const-string v0, "OPERATOR_14"

    return-object v0

    .line 163
    :cond_17
    const/16 v0, 0x3f7

    if-ne p0, v0, :cond_18

    .line 164
    const-string v0, "OPERATOR_15"

    return-object v0

    .line 166
    :cond_18
    const/16 v0, 0x3f8

    if-ne p0, v0, :cond_19

    .line 167
    const-string v0, "OPERATOR_16"

    return-object v0

    .line 169
    :cond_19
    const/16 v0, 0x3f9

    if-ne p0, v0, :cond_1a

    .line 170
    const-string v0, "OPERATOR_17"

    return-object v0

    .line 172
    :cond_1a
    const/16 v0, 0x3fa

    if-ne p0, v0, :cond_1b

    .line 173
    const-string v0, "OPERATOR_18"

    return-object v0

    .line 175
    :cond_1b
    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_1c

    .line 176
    const-string v0, "OPERATOR_19"

    return-object v0

    .line 178
    :cond_1c
    const/16 v0, 0x3fc

    if-ne p0, v0, :cond_1d

    .line 179
    const-string v0, "OPERATOR_20"

    return-object v0

    .line 181
    :cond_1d
    const/16 v0, 0x3fd

    if-ne p0, v0, :cond_1e

    .line 182
    const-string v0, "OPERATOR_21"

    return-object v0

    .line 184
    :cond_1e
    const/16 v0, 0x3fe

    if-ne p0, v0, :cond_1f

    .line 185
    const-string v0, "OPERATOR_22"

    return-object v0

    .line 187
    :cond_1f
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_20

    .line 188
    const-string v0, "OPERATOR_23"

    return-object v0

    .line 190
    :cond_20
    const/16 v0, 0x400

    if-ne p0, v0, :cond_21

    .line 191
    const-string v0, "OPERATOR_24"

    return-object v0

    .line 193
    :cond_21
    const/16 v0, 0x401

    if-ne p0, v0, :cond_22

    .line 194
    const-string v0, "OPERATOR_25"

    return-object v0

    .line 196
    :cond_22
    const/16 v0, 0x402

    if-ne p0, v0, :cond_23

    .line 197
    const-string v0, "OPERATOR_26"

    return-object v0

    .line 199
    :cond_23
    const/16 v0, 0x403

    if-ne p0, v0, :cond_24

    .line 200
    const-string v0, "OPERATOR_27"

    return-object v0

    .line 202
    :cond_24
    const/16 v0, 0x404

    if-ne p0, v0, :cond_25

    .line 203
    const-string v0, "OPERATOR_28"

    return-object v0

    .line 205
    :cond_25
    const/16 v0, 0x405

    if-ne p0, v0, :cond_26

    .line 206
    const-string v0, "OPERATOR_29"

    return-object v0

    .line 208
    :cond_26
    const/16 v0, 0x406

    if-ne p0, v0, :cond_27

    .line 209
    const-string v0, "OPERATOR_30"

    return-object v0

    .line 211
    :cond_27
    const/16 v0, 0x407

    if-ne p0, v0, :cond_28

    .line 212
    const-string v0, "OPERATOR_31"

    return-object v0

    .line 214
    :cond_28
    const/16 v0, 0x408

    if-ne p0, v0, :cond_29

    .line 215
    const-string v0, "OPERATOR_32"

    return-object v0

    .line 217
    :cond_29
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
