.class public Lcom/mediatek/ims/config/op/Op08ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op08ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    const-string v0, "Op08ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 2
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 12
    const/4 v0, 0x1

    .line 13
    .local v0, "set":Z
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 18
    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "0"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 16
    nop

    .line 21
    :goto_0
    return v0
.end method
