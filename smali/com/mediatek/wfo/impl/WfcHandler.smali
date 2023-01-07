.class public Lcom/mediatek/wfo/impl/WfcHandler;
.super Landroid/os/Handler;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;
    }
.end annotation


# static fields
.field private static final ACTION_OPERATOR_CONFIG_CHANGED:Ljava/lang/String; = "com.mediatek.common.carrierexpress.operator_config_changed"

.field private static final AID_SETTING_URI:Landroid/net/Uri;

.field private static final AID_SETTING_URI_STR:Ljava/lang/String; = "wfc_aid_value"

.field private static final BASE:I = 0x7d0

.field private static CODE_WFC_EPDG_IPSEC_SETUP_ERROR:I = 0x0

.field private static final EVENT_HANDLE_MODEM_POWER:I = 0x7d0

.field public static final EVENT_HANDLE_WFC_STATE_CHANGED:I = 0x839

.field private static final EVENT_HANDLE_WIFI_STATE_CHANGE:I = 0x7d3

.field private static final EVENT_INITIALIZE:I = 0x7d5

.field private static final EVENT_NOTIFY_EPDG_SCREEN_STATE:I = 0x7d4

.field private static final EVENT_NOTIFY_WIFI_NO_INTERNET:I = 0x7d2

.field private static final EVENT_ON_ALLOW_WIFI_OFF:I = 0x89a

.field private static final EVENT_ON_LOCATION_TIMEOUT:I = 0x899

.field public static final EVENT_ON_PDN_ERROR:I = 0x835

.field public static final EVENT_ON_PDN_HANDOVER:I = 0x834

.field public static final EVENT_ON_ROVE_OUT:I = 0x836

.field public static final EVENT_ON_WFC_PDN_STATE_CHANGED:I = 0x837

.field public static final EVENT_ON_WIFI_PDN_OOS:I = 0x838

.field private static final EVENT_SET_WFC_EMERGENCY_ADDRESS_ID:I = 0x7d1

.field private static final EXTRA_POWER_ON_MODEM_KEY:Ljava/lang/String; = "mediatek:POWER_ON_MODEM"

.field private static final IMS_REG_ERROR_NOTIFICATION:Ljava/lang/String; = "com.android.imsconnection.DISCONNECTED"

.field private static final IMS_REG_ERROR_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.mediatek.permission.IMS_ERR_NOTIFICATION"

.field private static final INTENT_KEY_PROP_KEY:Ljava/lang/String; = "simPropKey"

.field private static final INVALID:I = -0x1

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MTK_KEY_DISABLE_WFC_AFTER_AUTH_FAIL:Ljava/lang/String; = "mtk_carrier_disable_wfc_after_auth_fail_bool"

.field private static final NOT_REGISTERED:I = 0x2

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RADIO_MANAGER_POWER_ON_MODEM:Ljava/lang/String; = "mediatek.intent.action.WFC_POWER_ON_MODEM"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x3

.field private static final RESPONSE_NOTIFY_EPDG_SCREEN_STATE:I = 0x89b

.field private static final RESPONSE_SET_WFC_EMERGENCY_ADDRESS_ID:I = 0x898

.field private static final RETRY_TIMEOUT:I = 0xbb8

.field private static SUB_CAUSE_IKEV2_24:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WfcHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static WIFI_NO_INTERNET_ERROR_CODE:I

.field private static WIFI_NO_INTERNET_TIMEOUT:I

.field private static mInstance:Lcom/mediatek/wfo/impl/WfcHandler;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

.field private mHasWiFiDisabledPending:Z

.field private mIsWfcSettingsOn:[Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mIsWifiL2Connected:Z

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/mediatek/wfo/IWifiOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mPartialScanCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenState:I

.field private mSimCount:I

.field private mWfcEccAid:Ljava/lang/String;

.field private mWfcState:[I

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

.field mWosExt:Lcom/mediatek/wfo/op/IWosExt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 104
    const-string v0, "wfc_aid_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 188
    const/16 v0, 0x439

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_ERROR_CODE:I

    .line 189
    const/16 v0, 0x1f40

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_TIMEOUT:I

    .line 192
    const/16 v0, 0x43a

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->CODE_WFC_EPDG_IPSEC_SETUP_ERROR:I

    .line 193
    const/16 v0, 0x18

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->SUB_CAUSE_IKEV2_24:I

    .line 197
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 198
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->USR_BUILD:Z

    .line 199
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WfcHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p3, "simCount"    # I
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 444
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 159
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 326
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcHandler$1;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 792
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler$2;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 864
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcHandler$3;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 445
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 446
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 447
    if-eqz p2, :cond_0

    .line 448
    invoke-virtual {p2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V

    .line 450
    :cond_0
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    move v0, p3

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    .line 451
    iput-object p5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 453
    new-array v1, v0, [Lcom/mediatek/wfo/DisconnectCause;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    .line 455
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    .line 457
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WfcHandler;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WfcHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->checkIfShowNoInternetError(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/wfo/impl/WfcHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I

    .line 99
    iput p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyEPDGScreenState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WfcHandler;)[Lcom/mediatek/wfo/DisconnectCause;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    return p1
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 99
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WfcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/wfo/impl/WfcHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleModemPower()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->createWosExt()V

    return-void
.end method

.method private checkIfShowNoInternetError(Z)V
    .locals 7
    .param p1, "showImmediately"    # Z

    .line 1014
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1015
    .local v0, "mainCapabilityPhoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v1

    .line 1017
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    .line 1018
    .local v2, "isImsReg":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    .line 1020
    .local v3, "isWifiConnected":Z
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v4, v4, v0

    const/16 v5, 0x7d2

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    sget v5, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_ERROR_CODE:I

    invoke-interface {v4, v5}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 1025
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1029
    const-string v4, "checkIfShowNoInternetError(): start 8s timeout"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1030
    nop

    .line 1031
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    sget v5, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_TIMEOUT:I

    int-to-long v5, v5

    .line 1030
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1036
    :cond_1
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1037
    const-string v4, "checkIfShowNoInternetError(): cancel 8s timeout"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->removeMessages(I)V

    .line 1041
    :cond_2
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 730
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x1

    return v0
.end method

.method private createWosExt()V
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    if-eqz v0, :cond_0

    .line 1051
    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->dispose()V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    move-result-object v0

    .line 1055
    .local v0, "wosFactory":Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;->makeWosExt(Landroid/content/Context;)Lcom/mediatek/wfo/op/IWosExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 1056
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/mediatek/wfo/op/IWosExt;->initialize(Landroid/content/Context;)V

    .line 1057
    return-void
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 1142
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1144
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 1145
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1150
    :cond_0
    if-eqz v1, :cond_1

    .line 1151
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "ret":Z
    goto :goto_0

    .line 1154
    .end local v2    # "ret":Z
    :cond_1
    const-string v2, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1155
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1158
    .restart local v2    # "ret":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanCarrierConfig sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1159
    return v2
.end method

.method private getCurrentAssociatedApCount()I
    .locals 12

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "count":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1091
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "WfcHandler"

    if-eqz v1, :cond_5

    .line 1093
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1095
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 1096
    .local v4, "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1099
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 1100
    .local v5, "appInfo":Landroid/net/wifi/ScanResult;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 1101
    .local v7, "configuredAP":Landroid/net/wifi/WifiConfiguration;
    const-string v8, ""

    .line 1102
    .local v8, "strTrimmed":Ljava/lang/String;
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1103
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1105
    :cond_0
    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1107
    add-int/lit8 v0, v0, 0x1

    .line 1109
    .end local v7    # "configuredAP":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "strTrimmed":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1110
    .end local v5    # "appInfo":Landroid/net/wifi/ScanResult;
    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_2

    .line 1112
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentAssociatedApCount() scanResults = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", wifiConfigList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_2
    goto :goto_3

    .line 1116
    :cond_5
    const-string v3, "getCurrentAssociatedApCount() wifiManager null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAssociatedApCount(): count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1120
    return v0
.end method

.method public static getInstance()Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 1

    .line 428
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 434
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/wfo/impl/WfcHandler;-><init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 437
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object v0
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 995
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 996
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 997
    :cond_0
    const/4 v0, -0x1

    .line 999
    :cond_1
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1003
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1005
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1006
    const/4 v1, 0x0

    return-object v1

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSubIdBySlot(I)I
    .locals 2
    .param p1, "slot"    # I

    .line 1044
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1045
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleModemPower()V
    .locals 2

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleModemPower() mIsWifiEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWfcSettingsOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->isWfcSettingsEnabledAny()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 756
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->isWfcSettingsEnabledAny()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyPowerOnModem(Z)V

    goto :goto_0

    .line 759
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyPowerOnModem(Z)V

    .line 761
    :goto_0
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 273
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 278
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 463
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    .line 466
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    .line 468
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->createWosExt()V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    .line 473
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    .line 475
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerForBroadcast()V

    .line 476
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerIndication()V

    .line 479
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerForWfcAidObserver()V

    .line 480
    return-void
.end method

.method private isWfcSettingsEnabledAny()Z
    .locals 3

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfcSettingsEnabledAny: found Wfc settings enabled on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 785
    const/4 v1, 0x1

    return v1

    .line 781
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 318
    const-string v0, "UNKNOWN"

    return-object v0

    .line 312
    :pswitch_0
    const-string v0, "RESPONSE_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 310
    :pswitch_1
    const-string v0, "EVENT_ON_ALLOW_WIFI_OFF"

    return-object v0

    .line 306
    :pswitch_2
    const-string v0, "EVENT_ON_LOCATION_TIMEOUT"

    return-object v0

    .line 302
    :pswitch_3
    const-string v0, "RESPONSE_SET_WFC_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 314
    :pswitch_4
    const-string v0, "EVENT_HANDLE_WFC_STATE_CHANGED"

    return-object v0

    .line 304
    :pswitch_5
    const-string v0, "EVENT_ON_WIFI_PDN_OOS"

    return-object v0

    .line 300
    :pswitch_6
    const-string v0, "EVENT_ON_WFC_PDN_STATE_CHANGED"

    return-object v0

    .line 298
    :pswitch_7
    const-string v0, "EVENT_ON_ROVE_OUT"

    return-object v0

    .line 296
    :pswitch_8
    const-string v0, "EVENT_ON_PDN_ERROR"

    return-object v0

    .line 294
    :pswitch_9
    const-string v0, "EVENT_ON_PDN_HANDOVER"

    return-object v0

    .line 316
    :pswitch_a
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    .line 290
    :pswitch_b
    const-string v0, "EVENT_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 308
    :pswitch_c
    const-string v0, "EVENT_HANDLE_WIFI_STATE_CHANGE"

    return-object v0

    .line 292
    :pswitch_d
    const-string v0, "EVENT_NOTIFY_WIFI_NO_INTERNET"

    return-object v0

    .line 288
    :pswitch_e
    const-string v0, "EVENT_SET_WFC_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 286
    :pswitch_f
    const-string v0, "EVENT_HANDLE_MODEM_POWER"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x834
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x898
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyEPDGScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEPDGScreenState(), state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 932
    const/16 v0, 0x89b

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 933
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->notifyEPDGScreenState(ILandroid/os/Message;)V

    .line 934
    return-void
.end method

.method private notifyLocationTimeout()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    if-eqz v0, :cond_0

    .line 1072
    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->showLocationTimeoutMessage()V

    goto :goto_0

    .line 1074
    :cond_0
    const-string v0, "WfcHandler"

    const-string v1, "notifyLocationTimeout: mWosExt null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :goto_0
    return-void
.end method

.method private notifyOnAllowWifiOff()V
    .locals 3

    .line 410
    const-string v0, "notifyOnAllowWifiOff"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 412
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 413
    add-int/lit8 v0, v0, -0x1

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1}, Lcom/mediatek/wfo/IWifiOffloadListener;->onAllowWifiOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "onHandover: IllegalStateException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 416
    :catch_1
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onHandover: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 422
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 425
    return-void
.end method

.method private notifyOnHandover(III)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandover simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 939
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 940
    add-int/lit8 v0, v0, -0x1

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onHandover(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "onHandover: IllegalStateException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 943
    :catch_1
    move-exception v1

    .line 946
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onHandover: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 949
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 952
    return-void
.end method

.method private notifyOnRoveOut(IZI)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoveOut simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roveOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 957
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 958
    add-int/lit8 v0, v0, -0x1

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onRoveOut(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 961
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onRoveOut: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 963
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 966
    return-void
.end method

.method private notifyOnWifiPdnOOS(Ljava/lang/String;III)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "oosState"    # I
    .param p4, "simId"    # I

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiPdnOOS apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " oosState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 973
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 974
    add-int/lit8 v0, v0, -0x1

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p4, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onWifiPdnOOSStateChanged(II)V

    .line 977
    const-string v1, "onWifiPdnOOSStateChanged"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 978
    :catch_0
    move-exception v1

    .line 979
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onRoveOut: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 980
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 983
    return-void
.end method

.method private notifyPowerOnModem(Z)V
    .locals 2
    .param p1, "isModemOn"    # Z

    .line 764
    const-string v0, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    const-string v0, "modem always on, no need to control it!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 766
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 770
    const-string v0, "context is null, can\'t control modem!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 771
    return-void

    .line 774
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v1, "mediatek:POWER_ON_MODEM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method private onPdnHandover(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 527
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 528
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 530
    .local v1, "result":[I
    const-string v2, "WfcHandler"

    if-nez v1, :cond_0

    .line 531
    const-string v3, "onPdnHandover(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 534
    :cond_0
    array-length v3, v1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 535
    const-string v3, "onPdnHandover(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 538
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 539
    .local v2, "pdnType":I
    if-eqz v2, :cond_2

    .line 540
    const-string v3, "onPdnHandover(): Not IMS PDN, ignore"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 541
    return-void

    .line 544
    :cond_2
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 545
    .local v4, "stage":I
    const/4 v5, 0x2

    aget v6, v1, v5

    .line 546
    .local v6, "srcRat":I
    const/4 v7, 0x3

    aget v7, v1, v7

    .line 547
    .local v7, "desRat":I
    const/4 v8, 0x4

    aget v8, v1, v8

    .line 548
    .local v8, "simIdx":I
    invoke-direct {p0, v8, v4, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnHandover(III)V

    .line 550
    if-ne v4, v3, :cond_3

    if-eq v7, v5, :cond_3

    .line 552
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v3}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 554
    :cond_3
    return-void
.end method

.method private onWfcPdnError(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 558
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 560
    .local v3, "result":[I
    const-string v4, "WfcHandler"

    if-nez v3, :cond_0

    .line 561
    const-string v5, "onWfcPdnError(): result is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 564
    :cond_0
    const/4 v5, 0x0

    aget v6, v3, v5

    .line 565
    .local v6, "errCount":I
    const/4 v7, 0x1

    aget v7, v3, v7

    .line 566
    .local v7, "mainErr":I
    const/4 v8, 0x2

    aget v9, v3, v8

    .line 567
    .local v9, "subErr":I
    const/4 v10, 0x3

    aget v10, v3, v10

    .line 568
    .local v10, "simIdx":I
    iget-object v11, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    new-instance v12, Lcom/mediatek/wfo/DisconnectCause;

    invoke-direct {v12, v7, v9}, Lcom/mediatek/wfo/DisconnectCause;-><init>(II)V

    aput-object v12, v11, v10

    .line 570
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onWfcPdnError(): errCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mainErr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", subErr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", simIdx = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz v7, :cond_2

    .line 575
    iget-object v11, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v11

    .line 576
    .local v11, "mgr":Lcom/android/ims/ImsManager;
    move-object v12, v11

    check-cast v12, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v12, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->setWfcRegErrorCode(I)V

    .line 579
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v12, "intent":Landroid/content/Intent;
    const-string v13, "wfcErrorCode"

    invoke-virtual {v12, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    sget v13, Lcom/mediatek/wfo/impl/WfcHandler;->CODE_WFC_EPDG_IPSEC_SETUP_ERROR:I

    if-ne v7, v13, :cond_1

    sget v13, Lcom/mediatek/wfo/impl/WfcHandler;->SUB_CAUSE_IKEV2_24:I

    if-ne v9, v13, :cond_1

    .line 585
    new-instance v13, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v14, 0x578

    const/16 v15, 0x580

    const-string v5, "WiFi_Error09-Unable to connect"

    invoke-direct {v13, v14, v15, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v5, v13

    .line 589
    .local v5, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const-string v13, "result"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    const-string v13, "stateChanged"

    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const/16 v8, 0x12

    const-string v13, "imsRat"

    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    nop

    .line 594
    invoke-direct {v0, v10}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v8

    .line 592
    const-string v13, "mtk_carrier_disable_wfc_after_auth_fail_bool"

    invoke-direct {v0, v13, v8}, Lcom/mediatek/wfo/impl/WfcHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v8

    .line 595
    .local v8, "bVal":Z
    if-eqz v8, :cond_1

    .line 596
    const-string v13, "Set WFC setting OFF."

    invoke-static {v4, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 600
    .end local v5    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v8    # "bVal":Z
    :cond_1
    iget-object v4, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v5, "com.mediatek.permission.IMS_ERR_NOTIFICATION"

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 603
    .end local v11    # "mgr":Lcom/android/ims/ImsManager;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    if-nez v6, :cond_3

    .line 604
    iget-object v4, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v4}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 605
    return-void

    .line 607
    :cond_3
    iget-object v4, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v4, v7}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 608
    return-void
.end method

.method private onWfcPdnStateChanged(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 663
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 664
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 666
    .local v1, "result":[I
    if-nez v1, :cond_0

    .line 667
    const-string v2, "WfcHandler"

    const-string v3, "onWfcPdnStateChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 670
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 671
    .local v2, "state":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 673
    .local v4, "simIdx":I
    iget v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v4, v5, :cond_1

    .line 674
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aput v2, v5, v4

    .line 677
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWfcPdnStateChanged() state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " simIdx:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 678
    if-ne v3, v2, :cond_2

    .line 679
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v3}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 682
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 683
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_3

    .line 684
    add-int/lit8 v3, v3, -0x1

    .line 686
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v5, v4, v2}, Lcom/mediatek/wfo/IWifiOffloadListener;->onWfcStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 691
    :catch_0
    move-exception v5

    .line 692
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v6, "onWfcStateChanged: IllegalStateException occurs!"

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 687
    :catch_1
    move-exception v5

    .line 690
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "onWfcStateChanged: RemoteException occurs!"

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 693
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 695
    :cond_3
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 696
    return-void
.end method

.method private onWfcStatusChanged()V
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_0

    .line 1164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    .line 1165
    const/16 v0, 0x89a

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    :cond_0
    return-void
.end method

.method private onWifiPdnOOS(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 705
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 706
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 708
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WfcHandler"

    if-nez v1, :cond_0

    .line 709
    const-string v3, "onWifiPdnOOS(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 712
    :cond_0
    array-length v3, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 713
    const-string v3, "onWifiPdnOOS(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 718
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    aget-object v7, v1, v6

    .line 719
    .local v7, "apn":Ljava/lang/String;
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 720
    .local v8, "callId":I
    aget-object v9, v1, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 721
    .local v9, "oosState":I
    aget-object v10, v1, v3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 722
    .local v10, "simIdx":I
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnWifiPdnOOS(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v7    # "apn":Ljava/lang/String;
    .end local v8    # "callId":I
    .end local v9    # "oosState":I
    .end local v10    # "simIdx":I
    goto :goto_0

    .line 723
    :catch_0
    move-exception v7

    .line 724
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onWifiPdnOOS["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " e:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onWifiRoveout(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 613
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 614
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    .line 616
    .local v4, "result":[Ljava/lang/String;
    const-string v5, "WfcHandler"

    if-nez v4, :cond_0

    .line 617
    const-string v0, "onWifiRoveout(): result is null"

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 621
    :cond_0
    array-length v0, v4

    const/4 v6, 0x4

    const-string v7, "] "

    const-string v8, "onWifiRoveout()["

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, " "

    const/4 v13, 0x1

    if-ne v0, v9, :cond_1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_1
    array-length v0, v4

    if-ne v0, v6, :cond_8

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 633
    :goto_0
    :try_start_0
    aget-object v0, v4, v11

    .line 634
    .local v0, "ifname":Ljava/lang/String;
    aget-object v7, v4, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_2

    move v7, v13

    goto :goto_1

    :cond_2
    move v7, v11

    .line 635
    .local v7, "roveOut":Z
    :goto_1
    array-length v14, v4

    if-ne v14, v6, :cond_3

    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v13, :cond_3

    move v6, v13

    goto :goto_2

    :cond_3
    move v6, v11

    .line 636
    .local v6, "mobike_ind":Z
    :goto_2
    array-length v14, v4

    sub-int/2addr v14, v13

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 637
    .local v14, "simIdx":I
    if-eqz v7, :cond_4

    .line 638
    iget-object v15, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v15}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getLastRssi()I

    move-result v15

    invoke-direct {v1, v14, v7, v15}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnRoveOut(IZI)V

    .line 640
    :cond_4
    if-eqz v6, :cond_7

    .line 641
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiRoveout(): mobike_ind=1. count = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", connected = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 643
    iget-boolean v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    if-eqz v10, :cond_6

    iget v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    if-lt v10, v9, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getCurrentAssociatedApCount()I

    move-result v9

    if-gt v9, v13, :cond_5

    goto :goto_3

    .line 646
    :cond_5
    const-string v9, "Mobike disconnect+startscan"

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 647
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    .line 648
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 649
    .local v9, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 650
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 651
    iput v11, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    goto :goto_4

    .line 644
    .end local v9    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :cond_6
    :goto_3
    const-string v9, "No need to partial scan."

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 654
    :cond_7
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiRoveout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v6    # "mobike_ind":Z
    .end local v7    # "roveOut":Z
    .end local v14    # "simIdx":I
    goto :goto_5

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 628
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWifiRoveout(): Bad params ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 492
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    return-void
.end method

.method private registerForWfcAidObserver()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 488
    const-string v0, "registerForWfcAidObserver()"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x834

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnHandover(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x835

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 515
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x836

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnRoveOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x837

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWfcPdnStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x838

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnOos(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setEmergencyAddressId()V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "Current AID is empty"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 740
    return-void

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmergencyAddressId(), mWfcEccAid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 743
    const/16 v0, 0x898

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setEmergencyAddressId(Ljava/lang/String;Landroid/os/Message;)V

    .line 745
    return-void
.end method

.method private updateWfcUISetting()Z
    .locals 11

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "ret":Z
    const-string v1, "persist.vendor.mims_support"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, " enabled: "

    const-string v4, "WfcSetting simId: "

    const-string v5, "carrier_default_wfc_ims_enabled_bool"

    if-le v1, v2, :cond_3

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v1, v2, :cond_2

    .line 823
    const-string v2, "wfc_ims_enabled"

    .line 824
    .local v2, "key":Ljava/lang/String;
    nop

    .line 826
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v6

    .line 824
    invoke-direct {p0, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v6

    .line 827
    .local v6, "defValue":Z
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v8, v7, v1

    .line 828
    .local v8, "oldValue":Z
    nop

    .line 829
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 828
    invoke-static {v9, v2, v6, v10}, Landroid/telephony/SubscriptionManager;->getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z

    move-result v9

    aput-boolean v9, v7, v1

    .line 831
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 832
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v9, v7, v1

    if-ne v8, v9, :cond_1

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_0

    goto :goto_1

    .line 822
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "defValue":Z
    .end local v8    # "oldValue":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v6    # "defValue":Z
    .restart local v8    # "oldValue":Z
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 822
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "defValue":Z
    .end local v8    # "oldValue":Z
    :cond_2
    goto :goto_2

    .line 838
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v1

    .line 839
    .local v1, "mainCapabilityPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mainCapabilityPhoneId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 840
    if-ltz v1, :cond_6

    iget v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v1, v2, :cond_6

    .line 841
    const-string v2, "wfc_ims_enabled"

    .line 842
    .restart local v2    # "key":Ljava/lang/String;
    nop

    .line 844
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v6

    .line 842
    invoke-direct {p0, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v5

    .line 845
    .local v5, "defValue":Z
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v7, v6, v1

    .line 846
    .local v7, "oldValue":Z
    nop

    .line 848
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 847
    invoke-static {v8, v2, v5, v9}, Landroid/telephony/SubscriptionManager;->getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z

    move-result v8

    aput-boolean v8, v6, v1

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v4, v3, v1

    if-ne v7, v4, :cond_4

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5

    .line 854
    :cond_4
    const/4 v0, 0x1

    .line 856
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "defValue":Z
    .end local v7    # "oldValue":Z
    :cond_5
    goto :goto_2

    .line 857
    :cond_6
    const-string v2, "WfcHandler"

    const-string v3, "updateWfcUISetting(): mainCapabilityPhoneId invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v1    # "mainCapabilityPhoneId":I
    :goto_2
    return v0
.end method

.method private updateWifiEnabled()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "WfcHandler"

    if-nez v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 1127
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1128
    .local v0, "wifiMngr":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    goto :goto_0

    .line 1131
    :cond_0
    const-string v3, "updateWifiEnabled: WifiManager null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    .line 1134
    .end local v0    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :goto_0
    goto :goto_1

    .line 1135
    :cond_1
    const-string v0, "updateWifiEnabled: inCryptKeeperBounce"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    .line 1138
    :goto_1
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 323
    return-object p0
.end method

.method public getWfcState(I)I
    .locals 2
    .param p1, "simIdx"    # I

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWfcState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWfoInterface()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 258
    :pswitch_0
    const/16 v0, 0x7d4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 259
    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnAllowWifiOff()V

    .line 255
    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyLocationTimeout()V

    .line 249
    goto :goto_0

    .line 244
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 245
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x7d1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 246
    goto :goto_0

    .line 261
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcStatusChanged()V

    .line 262
    goto :goto_0

    .line 240
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWifiPdnOOS(Landroid/os/Message;)V

    .line 241
    goto :goto_0

    .line 237
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcPdnStateChanged(Landroid/os/Message;)V

    .line 238
    goto :goto_0

    .line 234
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWifiRoveout(Landroid/os/Message;)V

    .line 235
    goto :goto_0

    .line 231
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcPdnError(Landroid/os/Message;)V

    .line 232
    goto :goto_0

    .line 228
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onPdnHandover(Landroid/os/Message;)V

    .line 229
    goto :goto_0

    .line 264
    :pswitch_a
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->initialize()V

    .line 265
    goto :goto_0

    .line 223
    :pswitch_b
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyEPDGScreenState(I)V

    .line 224
    goto :goto_0

    .line 251
    :pswitch_c
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWifiEnabled()V

    .line 252
    goto :goto_0

    .line 219
    :pswitch_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->checkIfShowNoInternetError(Z)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->setEmergencyAddressId()V

    .line 217
    goto :goto_0

    .line 213
    :pswitch_f
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleModemPower()V

    .line 214
    nop

    .line 270
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x834
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x898
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1060
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 1061
    :cond_0
    const-string v0, "WfcHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_1
    return-void
.end method

.method public onLocationTimeout()V
    .locals 1

    .line 1066
    const/16 v0, 0x899

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1067
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    return-void
.end method

.method public updatedWifiConnectedStatus(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatedWifiConnectedStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1080
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    .line 1081
    if-nez p1, :cond_0

    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    .line 1084
    :cond_0
    return-void
.end method
