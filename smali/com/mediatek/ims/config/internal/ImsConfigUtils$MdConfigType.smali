.class public Lcom/mediatek/ims/config/internal/ImsConfigUtils$MdConfigType;
.super Ljava/lang/Object;
.source "ImsConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MdConfigType"
.end annotation


# static fields
.field public static final TYPE_IMSCFG:I = 0x0

.field public static final TYPE_IMSIWLANCFG:I = 0x2

.field public static final TYPE_IMSWOCFG:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
