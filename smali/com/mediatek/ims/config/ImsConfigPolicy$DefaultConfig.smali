.class public Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
.super Ljava/lang/Object;
.source "ImsConfigPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultConfig"
.end annotation


# instance fields
.field configId:I

.field public defVal:Ljava/lang/String;

.field public unitId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->configId:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_configId"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->configId:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 51
    iput p1, p0, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->configId:I

    .line 52
    return-void
.end method
