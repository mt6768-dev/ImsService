.class public Lcom/mediatek/ims/config/op/DefaultConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "DefaultConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    const-string v0, "DefaultConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 1
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 13
    const/4 v0, 0x0

    return v0
.end method
