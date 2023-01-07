.class public Lcom/mediatek/ims/ImsEcbmProxy;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmProxy.java"


# static fields
.field protected static final EVENT_ON_ENTER_ECBM:I = 0x1

.field protected static final EVENT_ON_EXIT_ECBM:I = 0x2

.field protected static final EVENT_ON_NO_ECBM:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEcbmProxy"

.field private static final MTK_VZW_SUPPORT:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandleExitEcbmInd:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsEcbmProxy;->MTK_VZW_SUPPORT:Z

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 96
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/ims/ImsEcbmProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy$1;-><init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    .line 97
    const-string v0, "new EcbmProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 100
    iput p3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    .line 101
    invoke-static {p3}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 58
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsEcbmProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsEcbmProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 58
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->tryTurnOffVolteAfterE911()V

    return-void
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEcbmProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private tryTurnOffVolteAfterE911()V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 129
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    .line 130
    .local v1, "volteEnabledByPlatform":Z
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 131
    .local v2, "volteEnabledByUser":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v5, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V

    .line 134
    iget-object v3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "request exit ECBM"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->requestExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 122
    :cond_0
    const-string v0, "request exit ECBM failed"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void
.end method
