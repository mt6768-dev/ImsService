.class public Lcom/mediatek/ims/config/ImsConfigContract$Provision;
.super Lcom/mediatek/ims/config/ImsConfigContract$BasicConfigTable;
.source "ImsConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provision"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATETIME:Ljava/lang/String; = "datetime"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    nop

    .line 230
    const-string v0, "content://com.mediatek.ims.config.provider/tb_provision"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/mediatek/ims/config/ImsConfigContract$BasicConfigTable;-><init>()V

    return-void
.end method

.method public static getUriWithConfigId(II)Landroid/net/Uri;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "configId"    # I

    .line 233
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 234
    .local v0, "result":Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->configIdToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
