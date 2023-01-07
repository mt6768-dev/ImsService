.class public final Landroid/hardware/radio/V1_5/NgranBands;
.super Ljava/lang/Object;
.source "NgranBands.java"


# static fields
.field public static final BAND_1:I = 0x1

.field public static final BAND_12:I = 0xc

.field public static final BAND_14:I = 0xe

.field public static final BAND_18:I = 0x12

.field public static final BAND_2:I = 0x2

.field public static final BAND_20:I = 0x14

.field public static final BAND_25:I = 0x19

.field public static final BAND_257:I = 0x101

.field public static final BAND_258:I = 0x102

.field public static final BAND_260:I = 0x104

.field public static final BAND_261:I = 0x105

.field public static final BAND_28:I = 0x1c

.field public static final BAND_29:I = 0x1d

.field public static final BAND_3:I = 0x3

.field public static final BAND_30:I = 0x1e

.field public static final BAND_34:I = 0x22

.field public static final BAND_38:I = 0x26

.field public static final BAND_39:I = 0x27

.field public static final BAND_40:I = 0x28

.field public static final BAND_41:I = 0x29

.field public static final BAND_48:I = 0x30

.field public static final BAND_5:I = 0x5

.field public static final BAND_50:I = 0x32

.field public static final BAND_51:I = 0x33

.field public static final BAND_65:I = 0x41

.field public static final BAND_66:I = 0x42

.field public static final BAND_7:I = 0x7

.field public static final BAND_70:I = 0x46

.field public static final BAND_71:I = 0x47

.field public static final BAND_74:I = 0x4a

.field public static final BAND_75:I = 0x4b

.field public static final BAND_76:I = 0x4c

.field public static final BAND_77:I = 0x4d

.field public static final BAND_78:I = 0x4e

.field public static final BAND_79:I = 0x4f

.field public static final BAND_8:I = 0x8

.field public static final BAND_80:I = 0x50

.field public static final BAND_81:I = 0x51

.field public static final BAND_82:I = 0x52

.field public static final BAND_83:I = 0x53

.field public static final BAND_84:I = 0x54

.field public static final BAND_86:I = 0x56

.field public static final BAND_89:I = 0x59

.field public static final BAND_90:I = 0x5a

.field public static final BAND_91:I = 0x5b

.field public static final BAND_92:I = 0x5c

.field public static final BAND_93:I = 0x5d

.field public static final BAND_94:I = 0x5e

.field public static final BAND_95:I = 0x5f


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

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 215
    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    or-int/lit8 v1, v1, 0x1

    .line 218
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 219
    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    or-int/lit8 v1, v1, 0x2

    .line 222
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 223
    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    or-int/lit8 v1, v1, 0x3

    .line 226
    :cond_2
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 227
    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    or-int/lit8 v1, v1, 0x5

    .line 230
    :cond_3
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 231
    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    or-int/lit8 v1, v1, 0x7

    .line 234
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 235
    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    or-int/lit8 v1, v1, 0x8

    .line 238
    :cond_5
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    .line 239
    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    or-int/lit8 v1, v1, 0xc

    .line 242
    :cond_6
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_7

    .line 243
    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    or-int/lit8 v1, v1, 0xe

    .line 246
    :cond_7
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_8

    .line 247
    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    or-int/lit8 v1, v1, 0x12

    .line 250
    :cond_8
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_9

    .line 251
    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    or-int/lit8 v1, v1, 0x14

    .line 254
    :cond_9
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_a

    .line 255
    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    or-int/lit8 v1, v1, 0x19

    .line 258
    :cond_a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_b

    .line 259
    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    or-int/lit8 v1, v1, 0x1c

    .line 262
    :cond_b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_c

    .line 263
    const-string v2, "BAND_29"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    or-int/lit8 v1, v1, 0x1d

    .line 266
    :cond_c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_d

    .line 267
    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    or-int/lit8 v1, v1, 0x1e

    .line 270
    :cond_d
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    .line 271
    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    or-int/lit8 v1, v1, 0x22

    .line 274
    :cond_e
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_f

    .line 275
    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    or-int/lit8 v1, v1, 0x26

    .line 278
    :cond_f
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_10

    .line 279
    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    or-int/lit8 v1, v1, 0x27

    .line 282
    :cond_10
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_11

    .line 283
    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    or-int/lit8 v1, v1, 0x28

    .line 286
    :cond_11
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_12

    .line 287
    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    or-int/lit8 v1, v1, 0x29

    .line 290
    :cond_12
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_13

    .line 291
    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    or-int/lit8 v1, v1, 0x30

    .line 294
    :cond_13
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_14

    .line 295
    const-string v2, "BAND_50"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    or-int/lit8 v1, v1, 0x32

    .line 298
    :cond_14
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_15

    .line 299
    const-string v2, "BAND_51"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    or-int/lit8 v1, v1, 0x33

    .line 302
    :cond_15
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_16

    .line 303
    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    or-int/lit8 v1, v1, 0x41

    .line 306
    :cond_16
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_17

    .line 307
    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    or-int/lit8 v1, v1, 0x42

    .line 310
    :cond_17
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_18

    .line 311
    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    or-int/lit8 v1, v1, 0x46

    .line 314
    :cond_18
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_19

    .line 315
    const-string v2, "BAND_71"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    or-int/lit8 v1, v1, 0x47

    .line 318
    :cond_19
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_1a

    .line 319
    const-string v2, "BAND_74"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    or-int/lit8 v1, v1, 0x4a

    .line 322
    :cond_1a
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_1b

    .line 323
    const-string v2, "BAND_75"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    or-int/lit8 v1, v1, 0x4b

    .line 326
    :cond_1b
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1c

    .line 327
    const-string v2, "BAND_76"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    or-int/lit8 v1, v1, 0x4c

    .line 330
    :cond_1c
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1d

    .line 331
    const-string v2, "BAND_77"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    or-int/lit8 v1, v1, 0x4d

    .line 334
    :cond_1d
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_1e

    .line 335
    const-string v2, "BAND_78"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    or-int/lit8 v1, v1, 0x4e

    .line 338
    :cond_1e
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1f

    .line 339
    const-string v2, "BAND_79"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    or-int/lit8 v1, v1, 0x4f

    .line 342
    :cond_1f
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_20

    .line 343
    const-string v2, "BAND_80"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    or-int/lit8 v1, v1, 0x50

    .line 346
    :cond_20
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_21

    .line 347
    const-string v2, "BAND_81"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    or-int/lit8 v1, v1, 0x51

    .line 350
    :cond_21
    and-int/lit8 v2, p0, 0x52

    const/16 v3, 0x52

    if-ne v2, v3, :cond_22

    .line 351
    const-string v2, "BAND_82"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    or-int/lit8 v1, v1, 0x52

    .line 354
    :cond_22
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_23

    .line 355
    const-string v2, "BAND_83"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    or-int/lit8 v1, v1, 0x53

    .line 358
    :cond_23
    and-int/lit8 v2, p0, 0x54

    const/16 v3, 0x54

    if-ne v2, v3, :cond_24

    .line 359
    const-string v2, "BAND_84"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    or-int/lit8 v1, v1, 0x54

    .line 362
    :cond_24
    and-int/lit8 v2, p0, 0x56

    const/16 v3, 0x56

    if-ne v2, v3, :cond_25

    .line 363
    const-string v2, "BAND_86"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    or-int/lit8 v1, v1, 0x56

    .line 366
    :cond_25
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_26

    .line 367
    const-string v2, "BAND_89"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    or-int/lit8 v1, v1, 0x59

    .line 370
    :cond_26
    and-int/lit8 v2, p0, 0x5a

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_27

    .line 371
    const-string v2, "BAND_90"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    or-int/lit8 v1, v1, 0x5a

    .line 374
    :cond_27
    and-int/lit8 v2, p0, 0x5b

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_28

    .line 375
    const-string v2, "BAND_91"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    or-int/lit8 v1, v1, 0x5b

    .line 378
    :cond_28
    and-int/lit8 v2, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_29

    .line 379
    const-string v2, "BAND_92"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    or-int/lit8 v1, v1, 0x5c

    .line 382
    :cond_29
    and-int/lit8 v2, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2a

    .line 383
    const-string v2, "BAND_93"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    or-int/lit8 v1, v1, 0x5d

    .line 386
    :cond_2a
    and-int/lit8 v2, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2b

    .line 387
    const-string v2, "BAND_94"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    or-int/lit8 v1, v1, 0x5e

    .line 390
    :cond_2b
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_2c

    .line 391
    const-string v2, "BAND_95"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    or-int/lit8 v1, v1, 0x5f

    .line 394
    :cond_2c
    and-int/lit16 v2, p0, 0x101

    const/16 v3, 0x101

    if-ne v2, v3, :cond_2d

    .line 395
    const-string v2, "BAND_257"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    or-int/lit16 v1, v1, 0x101

    .line 398
    :cond_2d
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_2e

    .line 399
    const-string v2, "BAND_258"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    or-int/lit16 v1, v1, 0x102

    .line 402
    :cond_2e
    and-int/lit16 v2, p0, 0x104

    const/16 v3, 0x104

    if-ne v2, v3, :cond_2f

    .line 403
    const-string v2, "BAND_260"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    or-int/lit16 v1, v1, 0x104

    .line 406
    :cond_2f
    and-int/lit16 v2, p0, 0x105

    const/16 v3, 0x105

    if-ne v2, v3, :cond_30

    .line 407
    const-string v2, "BAND_261"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    or-int/lit16 v1, v1, 0x105

    .line 410
    :cond_30
    if-eq p0, v1, :cond_31

    .line 411
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

    .line 413
    :cond_31
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 61
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 62
    const-string v0, "BAND_1"

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 65
    const-string v0, "BAND_2"

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 68
    const-string v0, "BAND_3"

    return-object v0

    .line 70
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    .line 71
    const-string v0, "BAND_5"

    return-object v0

    .line 73
    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    .line 74
    const-string v0, "BAND_7"

    return-object v0

    .line 76
    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    .line 77
    const-string v0, "BAND_8"

    return-object v0

    .line 79
    :cond_5
    const/16 v0, 0xc

    if-ne p0, v0, :cond_6

    .line 80
    const-string v0, "BAND_12"

    return-object v0

    .line 82
    :cond_6
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    .line 83
    const-string v0, "BAND_14"

    return-object v0

    .line 85
    :cond_7
    const/16 v0, 0x12

    if-ne p0, v0, :cond_8

    .line 86
    const-string v0, "BAND_18"

    return-object v0

    .line 88
    :cond_8
    const/16 v0, 0x14

    if-ne p0, v0, :cond_9

    .line 89
    const-string v0, "BAND_20"

    return-object v0

    .line 91
    :cond_9
    const/16 v0, 0x19

    if-ne p0, v0, :cond_a

    .line 92
    const-string v0, "BAND_25"

    return-object v0

    .line 94
    :cond_a
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_b

    .line 95
    const-string v0, "BAND_28"

    return-object v0

    .line 97
    :cond_b
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_c

    .line 98
    const-string v0, "BAND_29"

    return-object v0

    .line 100
    :cond_c
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_d

    .line 101
    const-string v0, "BAND_30"

    return-object v0

    .line 103
    :cond_d
    const/16 v0, 0x22

    if-ne p0, v0, :cond_e

    .line 104
    const-string v0, "BAND_34"

    return-object v0

    .line 106
    :cond_e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_f

    .line 107
    const-string v0, "BAND_38"

    return-object v0

    .line 109
    :cond_f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10

    .line 110
    const-string v0, "BAND_39"

    return-object v0

    .line 112
    :cond_10
    const/16 v0, 0x28

    if-ne p0, v0, :cond_11

    .line 113
    const-string v0, "BAND_40"

    return-object v0

    .line 115
    :cond_11
    const/16 v0, 0x29

    if-ne p0, v0, :cond_12

    .line 116
    const-string v0, "BAND_41"

    return-object v0

    .line 118
    :cond_12
    const/16 v0, 0x30

    if-ne p0, v0, :cond_13

    .line 119
    const-string v0, "BAND_48"

    return-object v0

    .line 121
    :cond_13
    const/16 v0, 0x32

    if-ne p0, v0, :cond_14

    .line 122
    const-string v0, "BAND_50"

    return-object v0

    .line 124
    :cond_14
    const/16 v0, 0x33

    if-ne p0, v0, :cond_15

    .line 125
    const-string v0, "BAND_51"

    return-object v0

    .line 127
    :cond_15
    const/16 v0, 0x41

    if-ne p0, v0, :cond_16

    .line 128
    const-string v0, "BAND_65"

    return-object v0

    .line 130
    :cond_16
    const/16 v0, 0x42

    if-ne p0, v0, :cond_17

    .line 131
    const-string v0, "BAND_66"

    return-object v0

    .line 133
    :cond_17
    const/16 v0, 0x46

    if-ne p0, v0, :cond_18

    .line 134
    const-string v0, "BAND_70"

    return-object v0

    .line 136
    :cond_18
    const/16 v0, 0x47

    if-ne p0, v0, :cond_19

    .line 137
    const-string v0, "BAND_71"

    return-object v0

    .line 139
    :cond_19
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_1a

    .line 140
    const-string v0, "BAND_74"

    return-object v0

    .line 142
    :cond_1a
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_1b

    .line 143
    const-string v0, "BAND_75"

    return-object v0

    .line 145
    :cond_1b
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_1c

    .line 146
    const-string v0, "BAND_76"

    return-object v0

    .line 148
    :cond_1c
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1d

    .line 149
    const-string v0, "BAND_77"

    return-object v0

    .line 151
    :cond_1d
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1e

    .line 152
    const-string v0, "BAND_78"

    return-object v0

    .line 154
    :cond_1e
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_1f

    .line 155
    const-string v0, "BAND_79"

    return-object v0

    .line 157
    :cond_1f
    const/16 v0, 0x50

    if-ne p0, v0, :cond_20

    .line 158
    const-string v0, "BAND_80"

    return-object v0

    .line 160
    :cond_20
    const/16 v0, 0x51

    if-ne p0, v0, :cond_21

    .line 161
    const-string v0, "BAND_81"

    return-object v0

    .line 163
    :cond_21
    const/16 v0, 0x52

    if-ne p0, v0, :cond_22

    .line 164
    const-string v0, "BAND_82"

    return-object v0

    .line 166
    :cond_22
    const/16 v0, 0x53

    if-ne p0, v0, :cond_23

    .line 167
    const-string v0, "BAND_83"

    return-object v0

    .line 169
    :cond_23
    const/16 v0, 0x54

    if-ne p0, v0, :cond_24

    .line 170
    const-string v0, "BAND_84"

    return-object v0

    .line 172
    :cond_24
    const/16 v0, 0x56

    if-ne p0, v0, :cond_25

    .line 173
    const-string v0, "BAND_86"

    return-object v0

    .line 175
    :cond_25
    const/16 v0, 0x59

    if-ne p0, v0, :cond_26

    .line 176
    const-string v0, "BAND_89"

    return-object v0

    .line 178
    :cond_26
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_27

    .line 179
    const-string v0, "BAND_90"

    return-object v0

    .line 181
    :cond_27
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_28

    .line 182
    const-string v0, "BAND_91"

    return-object v0

    .line 184
    :cond_28
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_29

    .line 185
    const-string v0, "BAND_92"

    return-object v0

    .line 187
    :cond_29
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_2a

    .line 188
    const-string v0, "BAND_93"

    return-object v0

    .line 190
    :cond_2a
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_2b

    .line 191
    const-string v0, "BAND_94"

    return-object v0

    .line 193
    :cond_2b
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2c

    .line 194
    const-string v0, "BAND_95"

    return-object v0

    .line 196
    :cond_2c
    const/16 v0, 0x101

    if-ne p0, v0, :cond_2d

    .line 197
    const-string v0, "BAND_257"

    return-object v0

    .line 199
    :cond_2d
    const/16 v0, 0x102

    if-ne p0, v0, :cond_2e

    .line 200
    const-string v0, "BAND_258"

    return-object v0

    .line 202
    :cond_2e
    const/16 v0, 0x104

    if-ne p0, v0, :cond_2f

    .line 203
    const-string v0, "BAND_260"

    return-object v0

    .line 205
    :cond_2f
    const/16 v0, 0x105

    if-ne p0, v0, :cond_30

    .line 206
    const-string v0, "BAND_261"

    return-object v0

    .line 208
    :cond_30
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
