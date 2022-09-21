.class Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
.super Ljava/lang/Object;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arguments"
.end annotation


# static fields
.field private static final INDEX_ITEM_ID:I = 0x2

.field private static final INDEX_PARAM_ID:I = 0x3

.field private static final INDEX_PHONE_ID:I = 0x1

.field private static final INDEX_TABLE:I


# instance fields
.field public itemId:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public phoneId:Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public table:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 471
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 474
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cv"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    .line 353
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 354
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 355
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 356
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 357
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 365
    const/4 v6, 0x0

    .line 367
    .local v6, "args":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidUri(Landroid/net/Uri;)V

    .line 368
    invoke-direct {v0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->getValidTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    .line 369
    invoke-direct {v0, v2, v7, v1, v3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->parseContentValue(Landroid/net/Uri;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 370
    invoke-static/range {p1 .. p5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceOpMode(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 373
    .local v7, "urlArgSize":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v7, v9, :cond_f

    const-string v10, " AND "

    const/4 v11, 0x0

    if-eq v7, v8, :cond_d

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v7, v14, :cond_5

    const-string v15, "Invalid URI: "

    if-ne v7, v13, :cond_4

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 442
    new-array v6, v14, [Ljava/lang/String;

    .line 443
    iget-object v14, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    aput-object v14, v6, v11

    .line 444
    iget-object v14, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v14, v6, v9

    .line 445
    aput-object v13, v6, v8

    .line 446
    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v12, -0x3a541ddb

    if-eq v14, v12, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v12, "tb_feature"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v11

    goto :goto_1

    :goto_0
    const/4 v12, -0x1

    :goto_1
    if-nez v12, :cond_3

    .line 449
    const-string v12, "phone_id = ? AND feature_id = ? AND network_id = ?"

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 452
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 454
    new-array v8, v8, [[Ljava/lang/String;

    aput-object v6, v8, v11

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_2

    .line 456
    :cond_2
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 458
    nop

    .line 462
    :goto_2
    goto/16 :goto_6

    .line 460
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 464
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 395
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 397
    new-array v6, v8, [Ljava/lang/String;

    .line 398
    iget-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    aput-object v12, v6, v11

    .line 399
    iget-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_6
    goto :goto_3

    :sswitch_0
    const-string v15, "tb_default"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v9

    goto :goto_4

    :sswitch_1
    const-string v15, "tb_master"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v14

    goto :goto_4

    :sswitch_2
    const-string v15, "tb_provision"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_4

    :sswitch_3
    const-string v15, "tb_resource"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v13

    goto :goto_4

    :sswitch_4
    const-string v15, "tb_config_setting"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v12, v11

    goto :goto_4

    :goto_3
    const/4 v12, -0x1

    :goto_4
    if-eqz v12, :cond_b

    if-eq v12, v9, :cond_9

    if-eq v12, v8, :cond_9

    if-eq v12, v14, :cond_9

    if-eq v12, v13, :cond_7

    goto/16 :goto_5

    .line 426
    :cond_7
    const-string v12, "phone_id=? AND feature_id=?"

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 428
    iget-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v12, v6, v9

    .line 429
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 430
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 431
    new-array v8, v8, [[Ljava/lang/String;

    aput-object v6, v8, v11

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_5

    .line 433
    :cond_8
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_5

    .line 415
    :cond_9
    iget-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v12}, Lcom/mediatek/ims/config/ImsConfigContract;->configNameToId(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v9

    .line 416
    const-string v12, "phone_id = ? AND config_id = ?"

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 418
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 419
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 420
    new-array v8, v8, [[Ljava/lang/String;

    aput-object v6, v8, v11

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_5

    .line 422
    :cond_a
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 424
    goto :goto_5

    .line 401
    :cond_b
    iget-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    aput-object v12, v6, v9

    .line 402
    const-string v12, "phone_id = ? AND setting_id = ?"

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 404
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 405
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 406
    new-array v8, v8, [[Ljava/lang/String;

    aput-object v6, v8, v11

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_5

    .line 408
    :cond_c
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 410
    nop

    .line 437
    :goto_5
    goto :goto_6

    .line 383
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 384
    new-array v6, v9, [Ljava/lang/String;

    .line 385
    aput-object v12, v6, v11

    .line 386
    const-string v12, "phone_id = ?"

    iput-object v12, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 387
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 388
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 389
    new-array v8, v8, [[Ljava/lang/String;

    aput-object v6, v8, v11

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->join([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    goto :goto_6

    .line 391
    :cond_e
    iput-object v6, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 393
    goto :goto_6

    .line 375
    :cond_f
    iput-object v4, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    .line 376
    iput-object v5, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    .line 377
    if-eq v1, v8, :cond_10

    if-ne v1, v9, :cond_11

    .line 379
    :cond_10
    const-string v8, "phone_id"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 466
    :cond_11
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_4
        -0x1330bd41 -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch
.end method

.method constructor <init>(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "opMode"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 468
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private static enforceOpMode(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "opMode"    # I
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 495
    return-void
.end method

.method private static enforceValidTable(Ljava/lang/String;)V
    .locals 3
    .param p0, "table"    # Ljava/lang/String;

    .line 498
    invoke-static {p0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    return-void

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static enforceValidUri(Landroid/net/Uri;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 504
    if-eqz p0, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operate on entire database is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad request: null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValidTable(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 487
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, "table":Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidTable(Ljava/lang/String;)V

    .line 489
    return-object v0
.end method

.method private static varargs join([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "arrays"    # [[Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 481
    .local v3, "array":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    .end local v3    # "array":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private parseContentValue(Landroid/net/Uri;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "opMode"    # I
    .param p4, "cv"    # Landroid/content/ContentValues;

    .line 514
    if-eqz p3, :cond_10

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto/16 :goto_3

    .line 517
    :cond_0
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->enforceValidTable(Ljava/lang/String;)V

    .line 519
    nop

    .line 520
    const-string v1, "phone_id"

    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 519
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 521
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "configId":I
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "tb_default"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_1
    const-string v3, "tb_master"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "tb_provision"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "tb_feature"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_4
    const-string v3, "tb_config_setting"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    const-string v3, " with "

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_9

    const-string v6, "Invalid config id in cv: "

    const-string v7, "config_id"

    if-eq v2, v5, :cond_2

    if-eq v2, v0, :cond_5

    if-eq v2, v4, :cond_5

    goto/16 :goto_2

    .line 557
    :cond_2
    const-string v0, "unit_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 558
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 559
    .local v0, "timeUnitId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidUnitId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 560
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid time unit in cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    .end local v0    # "timeUnitId":I
    :cond_4
    :goto_1
    invoke-virtual {p4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 565
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 569
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract;->configIdToName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 572
    :cond_5
    const-string v0, "mimetype_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 574
    .local v0, "mimeTypeId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidMimeTypeId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 578
    invoke-virtual {p4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 579
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 583
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract;->configIdToName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    goto/16 :goto_2

    .line 580
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mime type in cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    .end local v0    # "mimeTypeId":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_9
    const-string v0, "feature_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 538
    .local v0, "featureId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidFeatureId(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 542
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 543
    const-string v2, "network_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    .local v2, "network":I
    invoke-static {v2}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 548
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    .line 550
    const-string v4, "value"

    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 551
    .local v4, "value":I
    invoke-static {v4}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidFeatureValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 552
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value in cv: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 545
    .end local v4    # "value":I
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid network in cv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 539
    .end local v2    # "network":I
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid feature id in cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    .end local v0    # "featureId":I
    :cond_d
    const-string v0, "setting_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 530
    .local v0, "settingId":I
    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidSettingId(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 534
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    .line 535
    nop

    .line 586
    .end local v0    # "settingId":I
    :goto_2
    return-void

    .line 531
    .restart local v0    # "settingId":I
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid setting id in cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    .end local v0    # "settingId":I
    .end local v1    # "configId":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expect phone id in cv with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_10
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_4
        -0x3a541ddb -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch
.end method
