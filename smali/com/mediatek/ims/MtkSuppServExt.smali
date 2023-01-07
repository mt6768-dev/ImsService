.class public Lcom/mediatek/ims/MtkSuppServExt;
.super Landroid/os/Handler;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;,
        Lcom/mediatek/ims/MtkSuppServExt$Task;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field private static final EVENT_IMS_UT_EVENT_QUERY_XCAP:I = 0x0

.field private static final EVENT_ON_VOLTE_SUBSCRIPTION:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_OFF:I = 0x3

.field private static final EVENT_RADIO_ON:I = 0x4

.field private static final ICCID_KEY:Ljava/lang/String; = "iccid_key"

.field private static final LOG_TAG:Ljava/lang/String; = "SuppServExt"

.field private static final SDBG:Z

.field private static final SETTING_UT_CAPABILITY:Ljava/lang/String; = "ut_capability"

.field private static final SYS_PROP_QUERY_VOLTE_SUB:Ljava/lang/String; = "persist.vendor.suppserv.query_volte_sub"

.field private static final TASK_QUERY_XCAP:I = 0x0

.field private static final TASK_RESET_AND_QUERY_XCAP:I = 0x1

.field private static final TASK_SET_UT_CAPABILITY:I = 0x3

.field private static final TASK_SET_VOLTE_SUBSCRIPTION_DIRECLY:I = 0x2

.field private static final UT_CAPABILITY_DISABLE:I = 0x2

.field private static final UT_CAPABILITY_ENABLE:I = 0x1

.field private static final UT_CAPABILITY_UNKNOWN:I

.field private static final VDBG:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mOldIccId:Ljava/lang/String;

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

.field private mQueryXcapDone:Z

.field private mRadioState:I

.field private mSimIsChangedAfterBoot:Z

.field private mSimLoaded:Z

.field private mSuppServExt:Lcom/mediatek/ims/MtkSuppServExt;

.field private mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    nop

    .line 98
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    .line 101
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->SDBG:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 403
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsManager:Lcom/android/ims/ImsManager;

    .line 117
    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServExt:Lcom/mediatek/ims/MtkSuppServExt;

    .line 119
    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    .line 125
    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 127
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 129
    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 152
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 604
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkSuppServExt$2;-><init>(Lcom/mediatek/ims/MtkSuppServExt;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 408
    iput p2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 409
    iput-object p3, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 410
    invoke-virtual {p3, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 412
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-direct {v0, p0, p4}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;-><init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    .line 414
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsManager:Lcom/android/ims/ImsManager;

    .line 416
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsSSOemPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 418
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->checkImsInService()V

    .line 420
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->registerBroadcastReceiver()V

    .line 421
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->registerEvent()V

    .line 423
    const-string v0, "MtkSuppServExt init done."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/MtkSuppServExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1100(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 94
    invoke-static {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/MtkSuppServExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setSimLoaded(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/MtkSuppServExt;Lcom/mediatek/ims/OperatorUtils$OPID;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/MtkSuppServExt;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt;->startHandleXcapQueryProcess(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/MtkSuppServExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getVolteSubscriptionFromSettings()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/MtkSuppServExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionToSettings(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/MtkSuppServExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityToSettings(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->handleSubinfoUpdate()V

    return-void
.end method

.method private checkImsInService()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 429
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubEnableConstant()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionToSettings(I)V

    .line 431
    :cond_0
    return-void
.end method

.method private checkInitCriteria(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "criteriaFailReason"    # Ljava/lang/StringBuilder;

    .line 489
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->checkNeedQueryXcap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    const-string v0, "No need to support for this operator OR carrier config not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    return v1

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isDataEnabled()Z

    move-result v0

    const-string v2, "Data is not enabled, "

    if-nez v0, :cond_1

    .line 496
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    return v1

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    return v1

    .line 505
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 506
    const-string v0, "SubInfo not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    return v1

    .line 510
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getSimLoaded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 511
    const-string v0, "Sim not loaded, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    return v1

    .line 515
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isDataRegStateInService()Z

    move-result v0

    if-nez v0, :cond_5

    .line 516
    const-string v0, "Data reg state is not in service, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    return v1

    .line 520
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    if-eqz v0, :cond_6

    .line 521
    const-string v0, "No need query, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    return v1

    .line 525
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    if-nez v0, :cond_7

    .line 526
    const-string v0, "Sim not changed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    return v1

    .line 530
    :cond_7
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    sget-object v2, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 531
    const-string v0, "radio not available, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    return v1

    .line 535
    :cond_8
    const-string v0, "All Criteria ready."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method private checkNeedQueryXcap()Z
    .locals 6

    .line 373
    const-string v0, "persist.vendor.suppserv.query_volte_sub"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 374
    return v1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 381
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v2}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 383
    .local v2, "subId":I
    const/4 v3, 0x0

    .line 384
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 388
    :cond_1
    if-eqz v3, :cond_2

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNeedQueryXcap: carrier config is ready, config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 390
    invoke-interface {v5}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getXcapQueryCarrierConfigKey()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-virtual {v3, v5, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getXcapQueryCarrierConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 393
    :cond_2
    const-string v4, "checkNeedQueryXcap: carrier config not ready, return false"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 394
    return v1
.end method

.method private commandExceptionToVolteServiceStatus(Lcom/android/internal/telephony/CommandException;)I
    .locals 4
    .param p1, "commandException"    # Lcom/android/internal/telephony/CommandException;

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v1}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubUnknownConstant()I

    move-result v1

    .line 807
    .local v1, "status":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 811
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_0

    .line 812
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubDisableConstant()I

    move-result v1

    goto :goto_0

    .line 813
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 814
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubEnableConstant()I

    move-result v1

    goto :goto_0

    .line 815
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 816
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubEnableConstant()I

    move-result v1

    goto :goto_0

    .line 817
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 818
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubDisableConstant()I

    move-result v1

    .line 821
    :cond_3
    :goto_0
    return v1
.end method

.method private getIccIdFromSp()Ljava/lang/String;
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 889
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccid_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "iccid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccIdFromSp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 891
    return-object v1
.end method

.method private getSimLoaded()Z
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logi(Ljava/lang/String;)V

    .line 671
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    return v0
.end method

.method private static getSubIdUsingPhoneId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 878
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 879
    .local v0, "values":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 880
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    return v1
.end method

.method private getVolteSubscriptionFromSettings()I
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 847
    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubscriptionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 848
    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubUnknownConstant()I

    move-result v2

    .line 845
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 849
    .local v0, "status":I
    return v0
.end method

.method private handleSubinfoUpdate()V
    .locals 1

    .line 680
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    return-void

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->handleSuppServInit()V

    .line 686
    return-void
.end method

.method private handleSuppServInit()V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 690
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 692
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 693
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    return-void

    .line 700
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->handleXcapQueryIfSimChangedOrBootup(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private handleXcapQueryIfSimChangedOrBootup(Ljava/lang/String;)V
    .locals 4
    .param p1, "iccid"    # Ljava/lang/String;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleXcapQueryIfSimChangedOrBootup mySubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 705
    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old iccid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 706
    const-string v2, "SuppServExt"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new iccid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logw(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    sget-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "handleXcapQueryIfSimChangedOrBootup: Same SIM."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 715
    :cond_0
    return-void

    .line 718
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 722
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->clearPendingTask()V

    .line 725
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v1}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubUnknownConstant()I

    move-result v1

    const-string v2, "Reset VoLTE subscription status"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 726
    const/4 v1, 0x0

    const-string v2, "Reset Ut capabatility status"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    .line 727
    new-instance v2, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const-string v3, "Sim Changed or Bootup"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    move-object v0, v2

    .line 728
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 729
    return-void
.end method

.method private initPhoneStateListener(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 434
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 435
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 436
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/mediatek/ims/MtkSuppServExt$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/MtkSuppServExt$1;-><init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 450
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 451
    return-void
.end method

.method private isDataEnabled()Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 577
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 579
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 581
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v2

    return v2
.end method

.method private isDataRegStateInService()Z
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 586
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 588
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 589
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 591
    .local v2, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z
    .locals 1
    .param p1, "id"    # Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 399
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/ims/OperatorUtils;->isOperator(Ljava/lang/String;Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method private isSubInfoReady()Z
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 563
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 565
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 566
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    const/4 v3, 0x1

    return v3

    .line 572
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    return-void
.end method

.method private registerEvent()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVolteSubscription(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 469
    return-void
.end method

.method private setSimLoaded(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mSimLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logi(Ljava/lang/String;)V

    .line 676
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    .line 677
    return-void
.end method

.method private setUtCapabilityDirectly(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msgStr"    # Ljava/lang/String;

    .line 737
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IILjava/lang/String;)V

    .line 738
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 739
    return-void
.end method

.method private setUtCapabilityToSettings(I)V
    .locals 3
    .param p1, "status"    # I

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUtCapabilityToSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 871
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ut_capability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->notifyUtCapabilityChange(I)V

    .line 875
    return-void
.end method

.method private setVolteSubscriptionDirectly(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msgStr"    # Ljava/lang/String;

    .line 732
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IILjava/lang/String;)V

    .line 733
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 734
    return-void
.end method

.method private setVolteSubscriptionToSettings(I)V
    .locals 3
    .param p1, "status"    # I

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolteSubscriptionToSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 855
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 856
    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubscriptionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 858
    return-void
.end method

.method private startHandleXcapQueryProcess(ZLjava/lang/String;)V
    .locals 4
    .param p1, "forceQuery"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, "criteriaFailReason":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->checkInitCriteria(Ljava/lang/StringBuilder;)Z

    move-result v1

    .line 542
    .local v1, "checkCriteria":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHandleXcapQueryProcess(), forceQuery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", checkCriteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", criteriaFailReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 546
    if-nez v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 548
    return-void

    .line 551
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 553
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->startXcapQuery()V

    .line 554
    return-void
.end method

.method private startXcapQuery()V
    .locals 2

    .line 596
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getXcapStatus(Landroid/os/Message;)V

    .line 599
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 602
    :goto_0
    return-void
.end method

.method private taskDone()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, "ssmsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void
.end method

.method private toEventString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 895
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 910
    const-string v0, "UNKNOWN_IMS_EVENT_ID"

    return-object v0

    .line 907
    :cond_0
    const-string v0, "EVENT_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 903
    :cond_1
    const-string v0, "EVENT_RADIO_ON"

    return-object v0

    .line 905
    :cond_2
    const-string v0, "EVENT_RADIO_OFF"

    return-object v0

    .line 901
    :cond_3
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 899
    :cond_4
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    .line 897
    :cond_5
    const-string v0, "EVENT_IMS_UT_EVENT_QUERY_XCAP"

    return-object v0
.end method

.method private unRegisterBroadReceiver()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    return-void
.end method

.method private unRegisterEvent()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRegistrationInfo(Landroid/os/Handler;)V

    .line 474
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 476
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 477
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVolteSubscription(Landroid/os/Handler;)V

    .line 478
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->unRegisterBroadReceiver()V

    .line 486
    return-void
.end method

.method public getUtCapabilityFromSettings()I
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 862
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ut_capability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 865
    .local v0, "status":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->toEventString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 744
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 745
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v3

    .line 781
    .local v1, "volteSubstatus":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EVENT_ON_VOLTE_SUBSCRIPTION, volteSubstatus = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 782
    const-string v3, "Receive VoLTE Subscription URC"

    if-ne v1, v2, :cond_1

    .line 783
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubEnableConstant()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 785
    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_1
    if-ne v1, v4, :cond_7

    .line 788
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubDisableConstant()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 790
    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    goto :goto_0

    .line 772
    .end local v1    # "volteSubstatus":I
    :cond_2
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 773
    new-instance v1, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const-string v2, "Radio on"

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    .line 774
    .local v1, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 775
    goto :goto_0

    .line 767
    .end local v1    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    :cond_3
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 768
    goto :goto_0

    .line 762
    :cond_4
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 763
    goto :goto_0

    .line 753
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v3

    .line 754
    .local v1, "status":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_IMS_REGISTRATION_INFO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 755
    if-ne v1, v2, :cond_7

    .line 756
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->getVolteSubEnableConstant()I

    move-result v2

    const-string v3, "Ims registered."

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    goto :goto_0

    .line 747
    .end local v1    # "status":I
    :cond_6
    iput-boolean v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 748
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 749
    nop

    .line 801
    :cond_7
    :goto_0
    return-void
.end method

.method public isSupportCFT()Z
    .locals 4

    .line 825
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getVolteSubscriptionFromSettings()I

    move-result v0

    .line 826
    .local v0, "status":I
    const/4 v1, 0x0

    .line 828
    .local v1, "bStatus":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCFT: getVolteSubscriptionFromSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 830
    sget-object v2, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    const/4 v1, 0x1

    .line 841
    :cond_0
    return v1
.end method
