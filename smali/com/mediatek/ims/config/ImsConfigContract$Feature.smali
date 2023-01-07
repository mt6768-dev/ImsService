.class public Lcom/mediatek/ims/config/ImsConfigContract$Feature;
.super Ljava/lang/Object;
.source "ImsConfigContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_ID:Ljava/lang/String; = "feature_id"

.field public static final NETWORK_ID:Ljava/lang/String; = "network_id"

.field public static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    nop

    .line 202
    const-string v0, "content://com.mediatek.ims.config.provider/tb_feature"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriWithFeatureId(III)Landroid/net/Uri;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "featureId"    # I
    .param p2, "network"    # I

    .line 209
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, "result":Landroid/net/Uri;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 211
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
