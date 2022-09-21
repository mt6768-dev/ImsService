.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1395
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1398
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1399
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContext:Landroid/content/Context;

    .line 1400
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1401
    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->updateResource(II)V

    return-void
.end method

.method private clear()V
    .locals 4

    .line 1404
    const-string v0, "phone_id = ?"

    .line 1405
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1406
    .local v1, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1407
    return-void
.end method

.method private updateResource(II)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1410
    const-string v0, ", value:"

    const-string v1, "ImsConfigStorage"

    const/4 v2, -0x1

    .line 1412
    .local v2, "curValue":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1413
    .local v3, "cv":Landroid/content/ContentValues;
    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "phone_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "feature_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1415
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->getResourceValue(I)I

    move-result v4

    move v2, v4

    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateResource() comparing: curValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const-string v4, "phone_id=? AND feature_id=?"

    .line 1424
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1425
    .local v5, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    nop

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v4

    .line 1428
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateResource() ImsException featureId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1431
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method


# virtual methods
.method getResourceValue(I)I
    .locals 12
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1434
    const-string v0, "Feature "

    const/4 v1, 0x0

    .line 1435
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 1436
    .local v2, "result":I
    const-string v3, "phone_id"

    const-string v4, "feature_id"

    const-string v5, "value"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, "projection":[Ljava/lang/String;
    const/16 v3, 0x65

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;->mPhoneId:I

    .line 1443
    invoke-static {v4, p1}, Lcom/mediatek/ims/config/ImsConfigContract$Resource;->getUriWithFeatureId(II)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1442
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 1446
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1447
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1448
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1449
    .local v4, "valueIndex":I
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v2, v5

    .line 1450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    .end local v4    # "valueIndex":I
    nop

    .line 1460
    if-eqz v1, :cond_0

    .line 1461
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_0
    return v2

    .line 1452
    :cond_1
    :try_start_1
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not assigned with res value!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "result":I
    .end local v8    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .end local p1    # "featureId":I
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v2    # "result":I
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .restart local p1    # "featureId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1455
    :catch_0
    move-exception v4

    .line 1456
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not assigned with res value or something wrong with cursor"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "result":I
    .end local v8    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .end local p1    # "featureId":I
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1460
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v2    # "result":I
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ResourceHelper;
    .restart local p1    # "featureId":I
    :goto_0
    if-eqz v1, :cond_2

    .line 1461
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1463
    :cond_2
    throw v0
.end method
