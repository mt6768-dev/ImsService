.class public final Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.super Landroid/content/ContentProvider;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigProvider$OperationMode;,
        Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.mediatek.ims.config.provider"

.field private static final DEBUG:Z

.field static ECCAllowBroadcast:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static ECCAllowSendCmd:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static LatestSimState:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigProvider"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 46
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowSendCmd:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    .line 61
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    .line 42
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private notifyChange(Landroid/net/Uri;Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;Landroid/content/ContentValues;)V
    .locals 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    .param p3, "cv"    # Landroid/content/ContentValues;

    .line 222
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, -0x1

    .line 223
    .local v3, "value":I
    const/4 v4, 0x0

    .line 224
    .local v4, "isECCBroadcastFlag":Z
    const/4 v5, 0x0

    .line 225
    .local v5, "isFeatureEnabled":Z
    const/4 v6, 0x0

    .line 226
    .local v6, "isSimStateAllow":Z
    const-string v7, ""

    .line 229
    .local v7, "valueStr":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v14, 0x0

    .line 296
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 229
    sparse-switch v9, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v9, "tb_default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string v9, "tb_master"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "tb_provision"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "tb_resource"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_4
    const-string v9, "tb_feature"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "tb_config_setting"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :goto_0
    const/4 v8, -0x1

    :goto_1
    const-string v9, "item"

    const-string v10, "phone_id"

    const-string v11, " value: "

    const-string v12, "Update uri "

    const-string v13, "value"

    const-string v14, " on phone "

    move/from16 v21, v3

    .end local v3    # "value":I
    .local v21, "value":I
    const-string v3, "ImsConfigProvider"

    move/from16 v22, v4

    if-eqz v8, :cond_12

    const/4 v4, 0x1

    .end local v4    # "isECCBroadcastFlag":Z
    .local v22, "isECCBroadcastFlag":Z
    if-eq v8, v4, :cond_11

    const/4 v4, 0x2

    if-eq v8, v4, :cond_11

    const/4 v4, 0x3

    if-eq v8, v4, :cond_10

    const/4 v4, 0x4

    if-eq v8, v4, :cond_2

    const/4 v4, 0x5

    if-eq v8, v4, :cond_1

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid table "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 339
    :cond_1
    move-object v5, v2

    goto/16 :goto_e

    .line 275
    :cond_2
    sget-object v4, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    .local v4, "simState":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    .end local v5    # "isFeatureEnabled":Z
    .local v17, "isFeatureEnabled":Z
    const-string v5, "getSimState() for checking whether broadcast phoneId: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Sim state: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 280
    .local v5, "itemId":I
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 282
    .end local v21    # "value":I
    .local v8, "value":I
    if-nez v4, :cond_3

    .line 283
    const-string v4, ""

    .line 288
    :cond_3
    move/from16 v18, v6

    .end local v6    # "isSimStateAllow":Z
    .local v18, "isSimStateAllow":Z
    sget-object v6, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    move-object/from16 v19, v7

    .end local v7    # "valueStr":Ljava/lang/String;
    .local v19, "valueStr":Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 289
    const/4 v6, 0x0

    .end local v22    # "isECCBroadcastFlag":Z
    .local v6, "isECCBroadcastFlag":Z
    goto :goto_5

    .line 291
    .end local v6    # "isECCBroadcastFlag":Z
    .restart local v22    # "isECCBroadcastFlag":Z
    :cond_4
    const-string v6, "ABSENT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 294
    .end local v22    # "isECCBroadcastFlag":Z
    .restart local v6    # "isECCBroadcastFlag":Z
    :goto_2
    const/4 v7, 0x1

    if-ne v8, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 295
    .end local v17    # "isFeatureEnabled":Z
    .local v7, "isFeatureEnabled":Z
    :goto_3
    if-eqz v6, :cond_7

    if-nez v7, :cond_7

    .line 296
    move/from16 v20, v6

    .end local v6    # "isECCBroadcastFlag":Z
    .local v20, "isECCBroadcastFlag":Z
    sget-object v6, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    move/from16 v17, v7

    .end local v7    # "isFeatureEnabled":Z
    .restart local v17    # "isFeatureEnabled":Z
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v6, "Sim absent but the calculated VoLTE is false, so no need broadcast"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 295
    .end local v17    # "isFeatureEnabled":Z
    .end local v20    # "isECCBroadcastFlag":Z
    .restart local v6    # "isECCBroadcastFlag":Z
    .restart local v7    # "isFeatureEnabled":Z
    :cond_7
    move/from16 v20, v6

    move/from16 v17, v7

    .line 303
    .end local v6    # "isECCBroadcastFlag":Z
    .end local v7    # "isFeatureEnabled":Z
    .restart local v17    # "isFeatureEnabled":Z
    .restart local v20    # "isECCBroadcastFlag":Z
    :goto_4
    move/from16 v6, v20

    .end local v20    # "isECCBroadcastFlag":Z
    .restart local v6    # "isECCBroadcastFlag":Z
    :goto_5
    if-nez v5, :cond_8

    .line 305
    const-string v7, "vendor.ril.imsconfig.force.notify"

    const/4 v2, 0x0

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    const/16 v16, 0x1

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    move/from16 v2, v16

    .line 306
    .local v2, "isForceNotify":Z
    sget-boolean v7, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v11

    const-string v11, "isForceNotify "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    move-object/from16 v16, v11

    .line 310
    :goto_7
    const-string v7, "READY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 311
    const-string v7, "IMSI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 312
    const-string v7, "LOADED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 313
    const-string v7, "LOCKED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_8

    .line 316
    :cond_a
    const/4 v7, 0x0

    .end local v18    # "isSimStateAllow":Z
    .local v7, "isSimStateAllow":Z
    goto :goto_9

    .line 314
    .end local v7    # "isSimStateAllow":Z
    .restart local v18    # "isSimStateAllow":Z
    :cond_b
    :goto_8
    const/4 v7, 0x1

    .line 319
    .end local v18    # "isSimStateAllow":Z
    .restart local v7    # "isSimStateAllow":Z
    :goto_9
    if-nez v7, :cond_e

    if-eqz v6, :cond_c

    if-nez v17, :cond_e

    :cond_c
    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v5, p3

    goto/16 :goto_e

    .line 322
    :cond_e
    :goto_a
    new-instance v11, Landroid/content/Intent;

    move/from16 v20, v2

    .end local v2    # "isForceNotify":Z
    .local v20, "isForceNotify":Z
    const-string v2, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v11

    .line 323
    .local v2, "intent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    invoke-virtual {v2, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 331
    sget-object v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_f

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p3

    goto/16 :goto_e

    .line 332
    :cond_f
    move-object/from16 v5, p3

    goto/16 :goto_e

    .line 270
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "simState":Ljava/lang/String;
    .end local v8    # "value":I
    .end local v17    # "isFeatureEnabled":Z
    .end local v19    # "valueStr":Ljava/lang/String;
    .end local v20    # "isForceNotify":Z
    .local v5, "isFeatureEnabled":Z
    .local v6, "isSimStateAllow":Z
    .local v7, "valueStr":Ljava/lang/String;
    .restart local v21    # "value":I
    .restart local v22    # "isECCBroadcastFlag":Z
    :cond_10
    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    .end local v5    # "isFeatureEnabled":Z
    .end local v6    # "isSimStateAllow":Z
    .end local v7    # "valueStr":Ljava/lang/String;
    .restart local v17    # "isFeatureEnabled":Z
    .restart local v18    # "isSimStateAllow":Z
    .restart local v19    # "valueStr":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, "itemId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t Update uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for CONFIG_SETTING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v5, p3

    goto/16 :goto_e

    .line 229
    .end local v2    # "itemId":I
    .end local v17    # "isFeatureEnabled":Z
    .end local v18    # "isSimStateAllow":Z
    .end local v19    # "valueStr":Ljava/lang/String;
    .restart local v5    # "isFeatureEnabled":Z
    .restart local v6    # "isSimStateAllow":Z
    .restart local v7    # "valueStr":Ljava/lang/String;
    :cond_11
    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    .end local v5    # "isFeatureEnabled":Z
    .end local v6    # "isSimStateAllow":Z
    .end local v7    # "valueStr":Ljava/lang/String;
    .restart local v17    # "isFeatureEnabled":Z
    .restart local v18    # "isSimStateAllow":Z
    .restart local v19    # "valueStr":Ljava/lang/String;
    goto :goto_b

    .end local v17    # "isFeatureEnabled":Z
    .end local v18    # "isSimStateAllow":Z
    .end local v19    # "valueStr":Ljava/lang/String;
    .end local v22    # "isECCBroadcastFlag":Z
    .local v4, "isECCBroadcastFlag":Z
    .restart local v5    # "isFeatureEnabled":Z
    .restart local v6    # "isSimStateAllow":Z
    .restart local v7    # "valueStr":Ljava/lang/String;
    :cond_12
    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 233
    .end local v4    # "isECCBroadcastFlag":Z
    .end local v5    # "isFeatureEnabled":Z
    .end local v6    # "isSimStateAllow":Z
    .end local v7    # "valueStr":Ljava/lang/String;
    .restart local v17    # "isFeatureEnabled":Z
    .restart local v18    # "isSimStateAllow":Z
    .restart local v19    # "valueStr":Ljava/lang/String;
    .restart local v22    # "isECCBroadcastFlag":Z
    :goto_b
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/ims/config/ImsConfigContract;->configNameToId(Ljava/lang/String;)I

    move-result v2

    .line 236
    .restart local v2    # "itemId":I
    const-string v4, "mimetype_id"

    move-object/from16 v5, p3

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 237
    .local v4, "mimeType":I
    const-string v6, "data"

    if-nez v4, :cond_13

    .line 238
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, v19

    .end local v21    # "value":I
    .local v6, "value":I
    goto :goto_c

    .line 239
    .end local v6    # "value":I
    .restart local v21    # "value":I
    :cond_13
    const/4 v7, 0x1

    if-ne v4, v7, :cond_17

    .line 240
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v6, v21

    .line 246
    .end local v19    # "valueStr":Ljava/lang/String;
    .end local v21    # "value":I
    .restart local v6    # "value":I
    .restart local v7    # "valueStr":Ljava/lang/String;
    :goto_c
    new-instance v8, Landroid/content/Intent;

    const-string v15, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v8, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v8, "intent":Landroid/content/Intent;
    iget-object v15, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    if-nez v4, :cond_14

    .line 252
    invoke-virtual {v8, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_d

    .line 253
    :cond_14
    if-ne v4, v9, :cond_15

    .line 254
    invoke-virtual {v8, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_15
    :goto_d
    const-string v9, "mimetype"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 261
    if-nez v4, :cond_16

    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_16

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 264
    :cond_16
    const/4 v9, 0x1

    if-ne v4, v9, :cond_18

    sget-boolean v9, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->DEBUG:Z

    if-eqz v9, :cond_18

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 242
    .end local v6    # "value":I
    .end local v7    # "valueStr":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v19    # "valueStr":Ljava/lang/String;
    .restart local v21    # "value":I
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not String or Integer, mimeType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    nop

    .line 348
    .end local v2    # "itemId":I
    .end local v4    # "mimeType":I
    .end local v17    # "isFeatureEnabled":Z
    .end local v18    # "isSimStateAllow":Z
    .end local v19    # "valueStr":Ljava/lang/String;
    .end local v21    # "value":I
    .end local v22    # "isECCBroadcastFlag":Z
    :cond_18
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_5
        -0x3a541ddb -> :sswitch_4
        -0x1330bd41 -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2
    .param p1, "e"    # Landroid/database/sqlite/SQLiteFullException;

    .line 597
    const-string v0, "ImsConfigProvider"

    const-string v1, "Disk full, all write operations will be ignored"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    return-void
.end method

.method private prepareResultUri(Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;J)Landroid/net/Uri;
    .locals 6
    .param p1, "args"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    .param p2, "newId"    # J

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.mediatek.ims.config.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->phoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, "result":Landroid/net/Uri;
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2aff044

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x5432a153    # 3.068843E12f

    if-eq v2, v3, :cond_2

    const v3, 0x5c1d3d70

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "tb_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "tb_master"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v2, "tb_provision"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    .line 146
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_4
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->itemId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    nop

    .line 149
    :goto_2
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    iget-object v1, p1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->param:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 152
    :cond_5
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":I
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 114
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 117
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 118
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 104
    const-string v0, "vnd.android.cursor.item/imsconfig"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Landroid/net/Uri;
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/content/ContentValues;Landroid/net/Uri;)V

    .line 125
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    const-wide/16 v2, 0x0

    .line 128
    .local v2, "newId":J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 129
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 133
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 134
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->prepareResultUri(Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public onCreate()Z
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "deviceContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    const-string v3, "ImsConfigProvider"

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "imsconfig.db"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "[onCreate] Failed to move database"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    const-string v2, "[onCreate] Move database successfully"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "[onCreate] User locked, register receiver for BOOT_COMPLETED"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :goto_0
    new-instance v2, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-direct {v2, v1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mContext:Landroid/content/Context;

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    .line 178
    .local v10, "result":Landroid/database/Cursor;
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;)V

    move-object v11, v1

    .line 179
    .local v11, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v1}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 181
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v14, 0x40

    .line 182
    .local v14, "MAX_COLUMN_NAME_LENGTH":I
    const-string v1, "[\\W]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 184
    .local v15, "pattern":Ljava/util/regex/Pattern;
    array-length v1, v9

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v9, v2

    .line 185
    .local v3, "projectionArg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    const/4 v6, 0x0

    const-string v7, "ImsConfigProvider"

    if-le v4, v5, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found column name that was too long ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v6

    .line 191
    :cond_0
    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 192
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found invalid character in column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v6

    .line 184
    .end local v3    # "projectionArg":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v11, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v13

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 206
    .end local v10    # "result":Landroid/database/Cursor;
    .local v1, "result":Landroid/database/Cursor;
    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->close()V

    .line 215
    :cond_0
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "count":I
    new-instance v7, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;

    const/4 v2, 0x2

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;-><init>(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    .local v1, "args":Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 164
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->table:Ljava/lang/String;

    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selection:Ljava/lang/String;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 165
    if-lez v0, :cond_0

    .line 166
    invoke-direct {p0, p1, v1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->notifyChange(Landroid/net/Uri;Lcom/mediatek/ims/config/internal/ImsConfigProvider$Arguments;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    .line 171
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_0
    return v0
.end method
