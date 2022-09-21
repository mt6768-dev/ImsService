.class public abstract Lcom/mediatek/ims/config/ImsConfigPolicy;
.super Ljava/lang/Object;
.source "ImsConfigPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    }
.end annotation


# instance fields
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

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy;->mDefConfigs:Ljava/util/HashMap;

    .line 14
    const-string v0, "ImsConfigPolicy"

    iput-object v0, p0, Lcom/mediatek/ims/config/ImsConfigPolicy;->mTag:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/mediatek/ims/config/ImsConfigPolicy;->mTag:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method fetchDefaultValues()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "handled":Z
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v1

    .line 31
    .local v1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 32
    .local v3, "configId":Ljava/lang/Integer;
    new-instance v4, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;-><init>(I)V

    .line 33
    .local v4, "config":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v4}, Lcom/mediatek/ims/config/ImsConfigPolicy;->onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget v5, v4, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    invoke-static {v5}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidUnitId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    iget-object v5, p0, Lcom/mediatek/ims/config/ImsConfigPolicy;->mDefConfigs:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid unitId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    .end local v3    # "configId":Ljava/lang/Integer;
    .end local v4    # "config":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    :cond_1
    :goto_1
    goto :goto_0

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/ImsConfigPolicy;->mDefConfigs:Ljava/util/HashMap;

    return-object v2
.end method

.method public abstract onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
.end method
