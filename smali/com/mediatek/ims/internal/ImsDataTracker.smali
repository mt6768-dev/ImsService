.class public Lcom/mediatek/ims/internal/ImsDataTracker;
.super Ljava/lang/Object;
.source "ImsDataTracker.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mIsBearerNotify:I

.field private mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

.field private mModemEmergencyPdnState:[I

.field private mModemImsPdnState:[I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPdnStateLock:Ljava/lang/Object;

.field private mPhoneNum:I

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

.field private mdHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 123
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$1;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$2;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 44
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 45
    new-array v0, v0, [Lcom/mediatek/ims/internal/DataDispatcher;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v2, Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {v2, p1, p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 50
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 51
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    .line 94
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 123
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$1;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    .line 245
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$2;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 98
    new-array v2, v1, [Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 99
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 100
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 101
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 104
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataTracker;->getImsPdnNotifyRule()V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    new-instance v3, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-direct {v3, p1, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v3, v2, v1

    .line 108
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 115
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 116
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsBearerChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onMdRestart(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsDataInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/ImsDataTracker;)Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 27
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/ImsDataTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 27
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/ImsDataTracker;)[Lcom/mediatek/ims/internal/DataDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 27
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/ImsDataTracker;)[Lcom/mediatek/ims/internal/ImsDataSynchronizer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 27
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    return-object v0
.end method

.method private clearModemPdnState()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 313
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getImsPdnNotifyRule()V
    .locals 2

    .line 150
    const-string v0, "persist.vendor.radio.ims.pdn.notify"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBearerNotify rule set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private onImsBearerChanged(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 155
    const-string v0, "onImsBearerChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 157
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 158
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 159
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 162
    .local v8, "aid":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 163
    .local v9, "action":I
    const/4 v3, 0x3

    aget-object v10, v0, v3

    .line 165
    .local v10, "capability":Ljava/lang/String;
    const/4 v4, -0x1

    .line 166
    .local v4, "event":I
    if-ne v9, v2, :cond_0

    .line 167
    const/4 v4, 0x0

    move v11, v4

    goto :goto_0

    .line 168
    :cond_0
    if-nez v9, :cond_1

    .line 169
    const/4 v4, 0x2

    move v11, v4

    goto :goto_0

    .line 171
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    move v11, v4

    .line 174
    .end local v4    # "event":I
    .local v11, "event":I
    :goto_0
    if-ltz v11, :cond_3

    .line 175
    invoke-direct {p0, v1, v10, v11}, Lcom/mediatek/ims/internal/ImsDataTracker;->updateModemPdnState(ILjava/lang/String;I)V

    .line 176
    iget v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    if-eq v4, v2, :cond_2

    if-ne v4, v3, :cond_3

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v12, v2, v1

    new-instance v13, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    move-object v2, v13

    move v3, v8

    move v4, v9

    move v5, v1

    move v6, v11

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 181
    .end local v1    # "phoneId":I
    .end local v8    # "aid":I
    .end local v9    # "action":I
    .end local v10    # "capability":Ljava/lang/String;
    .end local v11    # "event":I
    :cond_3
    goto :goto_1

    .line 182
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_5
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 187
    :goto_1
    return-void
.end method

.method private onImsDataInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 199
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 200
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 201
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDataInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 206
    .local v2, "capability":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 209
    .local v3, "event":Ljava/lang/String;
    const-string v4, "emergency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    const/16 v4, 0xa

    .local v4, "cap":I
    goto :goto_0

    .line 212
    .end local v4    # "cap":I
    :cond_0
    const/4 v4, 0x4

    .line 216
    .restart local v4    # "cap":I
    :goto_0
    const-string v5, "ClearCodes"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 218
    .local v5, "cause":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5, v4}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyClearCodesEvent(II)V

    .line 220
    .end local v1    # "phoneId":I
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "cap":I
    .end local v5    # "cause":I
    :cond_1
    goto :goto_1

    .line 221
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_3
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 226
    :goto_1
    return-void
.end method

.method private onMdRestart(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 190
    const-string v0, "onMdRestart"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 191
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 192
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMdRestart, reset phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connection state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRestart()V

    .line 194
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataTracker;->clearModemPdnState()V

    .line 195
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 196
    return-void
.end method

.method private setImsBearerNotification(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsBearerNotification enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 243
    return-void
.end method

.method private updateModemPdnState(ILjava/lang/String;I)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # I

    .line 288
    const-string v0, "Not handle the capability: "

    const-string v1, "emergency"

    const-string v2, "ims"

    if-nez p3, :cond_2

    .line 289
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto/16 :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 294
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 297
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 302
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not handle the event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive disableRequest on phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->disableRequest(I)V

    .line 63
    return-void
.end method

.method public enableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive enableRequest on phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->enableRequest(I)V

    .line 58
    return-void
.end method

.method public getImsNetworkState(I)[I
    .locals 3
    .param p1, "capability"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capability/mPhoneNum/imsPdnState/emergencyPdnState are : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 269
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 270
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    monitor-exit v0

    return-object v1

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 275
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    monitor-exit v0

    return-object v1

    .line 278
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 280
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v0, v0, [I

    .line 281
    .local v0, "pdnState":[I
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkState failed becase of invalid capability : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public responseBearerConfirm(IIIII)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .param p5, "phoneId"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to MD, aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p5

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p5

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 233
    nop

    .line 238
    :goto_0
    return-void
.end method

.method public sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 76
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 77
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 73
    return-void
.end method
