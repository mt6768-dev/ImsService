.class public Lcom/mediatek/ims/ImsAdapter;
.super Landroid/os/Handler;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsAdapter$Util;,
        Lcom/mediatek/ims/ImsAdapter$VaSocketIO;,
        Lcom/mediatek/ims/ImsAdapter$ImsaIndication;,
        Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;,
        Lcom/mediatek/ims/ImsAdapter$VaEvent;
    }
.end annotation


# static fields
.field protected static final IIMSA_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field private static final IMSA_RETRY_SOCKET_TIME:I = 0x1f4

.field private static final MSG_IMSA_EVENT_PROXY_DEAD:I = 0x3

.field private static final MSG_IMSA_RETRY_CONNECT_SOCKET:I = 0x1

.field private static final MSG_IMSA_RETRY_IMS_ENABLE:I = 0x2

.field private static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final SOCKET_NAME1:Ljava/lang/String; = "volte_imsm"

.field private static final TAG:Ljava/lang/String; = "[ImsAdapter]"

.field private static mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

.field private static mImsServiceUp:Z

.field private static mInstance:Lcom/mediatek/ims/ImsAdapter;

.field private static mNumOfPhones:I

.field private static misImsAdapterEnabled:[Z


# instance fields
.field private IS_ENG_BUILD:Z

.field private IS_USERDEBUG_BUILD:Z

.field private IS_USER_BUILD:Z

.field private ImsEnabledThreadLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

.field private volatile mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

.field private final mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 488
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    .line 490
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 498
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 483
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ImsAdapter;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    .line 484
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 485
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;-><init>(Lcom/mediatek/ims/ImsAdapter;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    .line 492
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USER_BUILD:Z

    .line 493
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USERDEBUG_BUILD:Z

    .line 494
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_ENG_BUILD:Z

    .line 496
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    .line 500
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    .line 502
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    if-nez v0, :cond_0

    .line 503
    sput-object p0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    .line 506
    :cond_0
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "ImsAdapter(): ImsAdapter Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;-><init>(Lcom/mediatek/ims/ImsAdapter;Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 509
    new-instance v0, Lcom/mediatek/ims/ImsEventDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsEventDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    .line 511
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    .line 513
    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    if-ge v0, v1, :cond_1

    .line 516
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->start()V

    .line 520
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsAdapter;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Lcom/mediatek/ims/ImsAdapter;
    .locals 1

    .line 73
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mediatek/ims/ImsEventDispatcher;
    .locals 1

    .line 73
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    return-object v0
.end method

.method private disableImsStack(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 717
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v1, 0xdbba4

    invoke-direct {v0, p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 718
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 720
    return-void
.end method

.method private enableImsStack(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 708
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v1, 0xdbba3

    invoke-direct {v0, p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 709
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 711
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/ImsAdapter;
    .locals 1

    .line 563
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method public static requestIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "requestId"    # I

    .line 724
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 757
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 754
    :pswitch_0
    const-string v0, "MSG_ID_REJECT_PCSCF_DISCOVERY"

    return-object v0

    .line 753
    :pswitch_1
    const-string v0, "MSG_ID_RESPONSE_PCSCF_DISCOVERY"

    return-object v0

    .line 752
    :pswitch_2
    const-string v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 751
    :pswitch_3
    const-string v0, "MSG_ID_NOTIFY_SS_PROGRESS_INDICATION"

    return-object v0

    .line 749
    :pswitch_4
    const-string v0, "MSG_ID_NOTIFY_XUI_IND"

    return-object v0

    .line 746
    :pswitch_5
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND"

    return-object v0

    .line 744
    :pswitch_6
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP"

    return-object v0

    .line 742
    :pswitch_7
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP"

    return-object v0

    .line 740
    :pswitch_8
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 738
    :pswitch_9
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP"

    return-object v0

    .line 736
    :pswitch_a
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP"

    return-object v0

    .line 734
    :pswitch_b
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 730
    :pswitch_c
    const-string v0, "MSG_ID_IMS_DISABLE_IND"

    return-object v0

    .line 729
    :pswitch_d
    const-string v0, "MSG_ID_IMS_ENABLE_IND"

    return-object v0

    .line 728
    :pswitch_e
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_INFORMATION_REQ"

    return-object v0

    .line 726
    :pswitch_f
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_INFORMATION_IND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xdbba1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xdbba8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xdbd31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 1

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 553
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->clearImsaProxy()V

    .line 555
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 560
    return-void
.end method


# virtual methods
.method public ImsServiceUp()V
    .locals 2

    .line 676
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    .line 677
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "ImsServiceUp, start to ACTION_IMS_SERVICE_UP intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public disableImsAdapter(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableImsAdapter(): misImsAdapterEnabled[phoneId]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNormalDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_[ImsAdapter]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 614
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 616
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsStack(I)V

    .line 618
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v2, 0xdbba4

    invoke-direct {v1, p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 620
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 621
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 622
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 624
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableImsAdapterForAllPhone(Z)V
    .locals 2
    .param p1, "isNormalDisable"    # Z

    .line 629
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 630
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    goto :goto_1

    .line 632
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    if-ge v0, v1, :cond_1

    .line 633
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public enableImsAdapter(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableImsAdapter: misImsAdapterEnabled[phoneId]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_[ImsAdapter]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "@M_[ImsAdapter]"

    const-string v2, "enalbeImsAdapter(): mImsaProxy success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v2, 0xdbba3

    invoke-direct {v1, p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 579
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 580
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 583
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p1

    .line 584
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter;->enableImsStack(I)V

    .line 585
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 586
    :cond_0
    const-string v1, "@M_[ImsAdapter]"

    const-string v2, "enableImsAdapter(): mImsaProxy create fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    :goto_0
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImsAdapterEnable()Z
    .locals 4

    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, "isEnabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 596
    aget-boolean v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 598
    goto :goto_1

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public getImsServiceUp()Z
    .locals 1

    .line 681
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return v0
.end method

.method public getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;
    .locals 5

    .line 523
    const-string v0, "@M_[ImsAdapter]"

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    return-object v0

    .line 527
    :cond_0
    :try_start_0
    const-string v1, "imsa"

    invoke-static {v1}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 528
    const-string v1, "IImsa.getService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 531
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 530
    invoke-interface {v1, v2, v3, v4}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 532
    const-string v1, "setResponseFunctions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    invoke-interface {v1, v2}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->setResponseFunctions(Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication;)V

    goto :goto_0

    .line 535
    :cond_1
    const-string v1, "getImsaProxy: mImsaProxy == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    goto :goto_1

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsaProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-nez v0, :cond_2

    .line 543
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 545
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 544
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ImsAdapter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 543
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 640
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-string v2, "@M_[ImsAdapter]"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage receive unsupported message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_0
    const-string v0, "MSG_IMSA_EVENT_PROXY_DEAD"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 648
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->resetProxyAndRequestList()V

    .line 651
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 652
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->updateImsaProxy(Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V

    goto :goto_0

    .line 642
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RETRY_IMS_ENABLE, phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter(I)V

    .line 644
    nop

    .line 663
    :cond_2
    :goto_0
    return-void
.end method

.method public sendTestEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 672
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 673
    return-void
.end method
