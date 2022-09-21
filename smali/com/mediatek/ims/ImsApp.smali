.class public Lcom/mediatek/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsApp"


# instance fields
.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNumOfPhones:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsApp;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsApp;->mNumOfPhones:I

    .line 105
    new-instance v0, Lcom/mediatek/ims/ImsApp$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsApp$1;-><init>(Lcom/mediatek/ims/ImsApp;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsApp;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsApp;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsApp;

    .line 63
    iget v0, p0, Lcom/mediatek/ims/ImsApp;->mNumOfPhones:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsApp;)Lcom/mediatek/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsApp;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/ImsApp;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 74
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsApp"

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "IMS not support, do not init ImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "ImsApp onCreate begin"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsApp;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 85
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setContextAndInitRefVTP(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/mediatek/ims/MtkImsService;

    iget-object v2, p0, Lcom/mediatek/ims/ImsApp;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/ims/MtkImsService;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V

    .line 88
    .local v0, "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "mtkIms"

    invoke-static {v4, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 91
    const-string v2, "ImsApp onCreate end"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/ImsApp;->mNumOfPhones:I

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v2, "multiSimConfigChanged":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/mediatek/ims/ImsApp;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/ims/ImsApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    .end local v0    # "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "multiSimConfigChanged":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method
