.class public Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;
.super Ljava/lang/Object;
.source "DefaultConfigPolicyFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultCfgPolicyFactory"


# instance fields
.field private mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

.field private mDefConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    .line 18
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "op"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load defalut policy operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultCfgPolicyFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 48
    new-instance v0, Lcom/mediatek/ims/config/op/DefaultConfigPolicy;

    invoke-direct {v0}, Lcom/mediatek/ims/config/op/DefaultConfigPolicy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/mediatek/ims/config/op/Op12ConfigPolicy;

    invoke-direct {v0}, Lcom/mediatek/ims/config/op/Op12ConfigPolicy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    .line 46
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/mediatek/ims/config/op/Op08ConfigPolicy;

    invoke-direct {v0}, Lcom/mediatek/ims/config/op/Op08ConfigPolicy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    .line 43
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lcom/mediatek/ims/config/op/Op06ConfigPolicy;

    invoke-direct {v0}, Lcom/mediatek/ims/config/op/Op06ConfigPolicy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    .line 40
    nop

    .line 50
    :goto_0
    return-void
.end method

.method public static getInstance(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;
    .locals 4
    .param p0, "phoneId"    # I

    .line 22
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "optr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 25
    .local v1, "opCode":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 28
    :cond_0
    invoke-static {v1}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->getInstanceByOpCode(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceByOpCode(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;
    .locals 1
    .param p0, "opCode"    # I

    .line 32
    new-instance v0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method public hasDefaultValue(I)Z
    .locals 2
    .param p1, "configId"    # I

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load()Ljava/util/HashMap;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mConfigPolicy:Lcom/mediatek/ims/config/ImsConfigPolicy;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;->fetchDefaultValues()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->mDefConfigs:Ljava/util/HashMap;

    return-object v0
.end method
