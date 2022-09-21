.class public Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
.super Ljava/lang/Object;
.source "ImsSSExtPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsSSExtPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSSExtPluginBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 6
    .param p1, "info"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .line 63
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 64
    .local v1, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz p1, :cond_2

    .line 65
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsCallForwardInfo: info["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ImsSSExtPluginBase"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v3, v0, :cond_0

    .line 69
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v0, v1, v4

    .line 70
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v3

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 71
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 72
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 73
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 74
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 75
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 76
    return-object v1

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v2, v1, v4

    .line 85
    aget-object v2, v1, v4

    aget-object v3, p1, v4

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v3

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 86
    aget-object v2, v1, v4

    iput v4, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 87
    aget-object v2, v1, v4

    iput v0, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 88
    aget-object v0, v1, v4

    iput v4, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 89
    aget-object v0, v1, v4

    const-string v2, ""

    iput-object v2, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 90
    aget-object v0, v1, v4

    iput v4, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 92
    :cond_2
    return-object v1
.end method
