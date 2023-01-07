.class public Lcom/mediatek/wfo/impl/WfoService;
.super Ljava/lang/Object;
.source "WfoService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WfoService"

.field public static mInstance:Lcom/mediatek/wfo/impl/WfoService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMwiService:Lcom/mediatek/wfo/impl/MwiService;

.field private mService:Lcom/mediatek/wfo/IWifiOffloadService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/WfoService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/mediatek/wfo/impl/WfoService;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfoService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    .line 84
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    return-object v0
.end method


# virtual methods
.method public makeWfoService()V
    .locals 4

    .line 92
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WfoService"

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "WfoService new MWIService"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/MwiService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfoService;->mMwiService:Lcom/mediatek/wfo/impl/MwiService;

    .line 96
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/MwiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "mwis"

    invoke-static {v2, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "WfoService new WifiOffloadService"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    move-result-object v0

    .line 100
    .local v0, "factory":Lcom/mediatek/wfo/plugin/LegacyComponentFactory;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/mediatek/wfo/plugin/LegacyComponentFactory;->makeWifiOffloadService(Landroid/content/Context;)Lcom/mediatek/wfo/IWifiOffloadService$Stub;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WfoService;->mService:Lcom/mediatek/wfo/IWifiOffloadService$Stub;

    .line 101
    if-nez v3, :cond_1

    .line 102
    const-string v1, "WfoService cannot be found"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "wfo"

    invoke-static {v3, v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 108
    .end local v0    # "factory":Lcom/mediatek/wfo/plugin/LegacyComponentFactory;
    :goto_0
    return-void
.end method
