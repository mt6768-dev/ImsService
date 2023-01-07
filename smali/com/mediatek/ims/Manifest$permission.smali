.class public final Lcom/mediatek/ims/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final IMS_ERR_NOTIFICATION:Ljava/lang/String; = "com.mediatek.permission.IMS_ERR_NOTIFICATION"

.field public static final READ:Ljava/lang/String; = "com.mediatek.ims.config.provider.PERMISSION.READ"

.field public static final READ_LTE_MESSAGE_WAITING_INDICATION:Ljava/lang/String; = "com.mediatek.permission.READ_LTE_MESSAGE_WAITING_INDICATION"

.field public static final WRITE:Ljava/lang/String; = "com.mediatek.ims.config.provider.PERMISSION.WRITE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
