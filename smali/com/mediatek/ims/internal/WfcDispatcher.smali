.class public Lcom/mediatek/ims/internal/WfcDispatcher;
.super Ljava/lang/Object;
.source "WfcDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;,
        Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATED_PLMN_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

.field private static final AID_SETTING_URI:Landroid/net/Uri;

.field private static final AID_SETTING_URI_STR:Ljava/lang/String; = "wfc_aid_value"

.field private static final DEBUG:Z = false

.field private static final EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0x2

.field private static final EVENT_MSG_REQUEST_GEO_LOCATION:I = 0x0

.field private static final EVENT_MSG_REQUEST_NETWORK_LOCATION:I = 0x1

.field private static final EVENT_MSG_RESPONSE_GEO_LOCATION:I = 0x4

.field private static final EVENT_MSG_UPDATE_AID_INFORMATION:I = 0x5

.field private static final EXTRA_ISO:Ljava/lang/String; = "iso"

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field private static final NETWORK_LOCATION_UPDATE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Wfc-IMSA"

.field private static final sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mAid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsEnabled:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkLocationTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 73
    const-string v0, "wfc_aid_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->AID_SETTING_URI:Landroid/net/Uri;

    .line 121
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 122
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$1;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/WfcDispatcher$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 128
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/mediatek/ims/internal/WfcDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$2;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    .line 200
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$3;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/WfcDispatcher$4;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    .line 317
    const-string v0, "WfcDispatcher()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 318
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 319
    iput-object p2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 320
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    .line 322
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->access$1300(Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;)V

    .line 324
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->registerForBroadcast()V

    .line 326
    const-string v0, "WfcDispatcher() end"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->cancelNetworkGeoLocationRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->getLastKnownLocation(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleGeoLocationResponse(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleAidInfoUpdate()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .line 67
    sget-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->AID_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handlerEventMsgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->updateGeoLocationFromLatLong(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 67
    sget-object v0, Lcom/mediatek/ims/internal/WfcDispatcher;->sPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    return-object v0
.end method

.method private addPackageInLocationSettingsWhitelist()V
    .locals 7

    .line 587
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 589
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 592
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 591
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "whitelist":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 595
    :cond_0
    if-nez v2, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "outStr":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add WFC in location setting whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 598
    iget-object v5, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 599
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 598
    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 603
    .end local v4    # "outStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private cancelNetworkGeoLocationRequest()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 578
    const-string v0, "cancelNetworkGeoLocationRequest: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 579
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 582
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->removePackageInLocationSettingsWhitelist()V

    .line 583
    const-string v0, "Wfc-IMSA"

    const-string v1, "cancelNetworkGeoLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private getLastKnownLocation(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z
    .locals 6
    .param p1, "locationReq"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 501
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 505
    return v1

    .line 509
    :cond_0
    nop

    .line 510
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 512
    .local v0, "gpsLocation":Landroid/location/Location;
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 513
    const-string v1, "GPS"

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS location: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 519
    return v2

    .line 523
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    .line 524
    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 526
    .local v4, "networkLocation":Landroid/location/Location;
    if-eqz v4, :cond_2

    .line 527
    const-string v1, "Network"

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network location: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 533
    return v2

    .line 536
    :cond_2
    const-string v2, "getLastKnownLocation: no last known location"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 537
    return v1
.end method

.method private handleAidInfoUpdate()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    if-nez v0, :cond_0

    .line 638
    const-string v0, "handleAidInfoUpdate: socket is null, can\'t send AID info."

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 639
    return-void

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xdbd38

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to IMSM: AID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 646
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 647
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 649
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 650
    .local v1, "aid":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 651
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 652
    return-void
.end method

.method private handleGeoLocationRequest(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 401
    new-instance v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher$1;)V

    .line 402
    .local v0, "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->phoneId:I

    .line 403
    iput p1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    .line 404
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    .line 405
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    .line 406
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->accuracy:I

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGeoLocationRequest: get UA\'s request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 409
    iget-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 413
    const-string v1, "GPS"

    iput-object v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EVENT_MSG_REQUEST_NETWORK_LOCATION for transactionId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 419
    const-string v1, "Network"

    iput-object v1, v0, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 422
    :goto_0
    return-void
.end method

.method private handleGeoLocationResponse(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 8
    .param p1, "locationResult"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xdbd37

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to IMSM: result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->phoneId:I

    invoke-direct {v0, v2, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 431
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 432
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 434
    const v1, 0x16396

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 435
    iget-wide v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putDouble(D)I

    .line 436
    iget-wide v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putDouble(D)I

    .line 437
    iget v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->accuracy:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 439
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->method:Ljava/lang/String;

    .line 440
    .local v1, "method":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 442
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 443
    .local v3, "city":Ljava/lang/String;
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 445
    iget-object v5, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "Unknown"

    goto :goto_2

    :cond_2
    iget-object v5, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 446
    .local v5, "state":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v5, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 448
    iget-object v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    iget-object v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    .line 449
    .local v4, "zip":Ljava/lang/String;
    :goto_3
    const/16 v6, 0x8

    invoke-virtual {v0, v4, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 451
    iget-object v7, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 452
    .local v2, "countryCode":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v2, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 454
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 455
    return-void
.end method

.method private handlerEventMsgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventMsg"    # I

    .line 687
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_MSG_ID-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 697
    :cond_0
    const-string v0, "EVENT_MSG_UPDATE_AID_INFORMATION"

    return-object v0

    .line 695
    :cond_1
    const-string v0, "EVENT_MSG_RESPONSE_GEO_LOCATION"

    return-object v0

    .line 693
    :cond_2
    const-string v0, "EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 691
    :cond_3
    const-string v0, "EVENT_MSG_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 689
    :cond_4
    const-string v0, "EVENT_MSG_REQUEST_GEO_LOCATION"

    return-object v0
.end method

.method private imsaMsgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msgId"    # I

    .line 663
    packed-switch p1, :pswitch_data_0

    .line 671
    const-string v0, "Unknown Msg"

    return-object v0

    .line 669
    :pswitch_0
    const-string v0, "MSG_ID_UPDATE_IMCB_AID_INFO"

    return-object v0

    .line 667
    :pswitch_1
    const-string v0, "MSG_ID_RESPONSE_VOWIFI_RELATED_INFO"

    return-object v0

    .line 665
    :pswitch_2
    const-string v0, "MSG_ID_REQUEST_VOWIFI_RELATED_INFO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xdbd36
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRequestDataPayload(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 381
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 382
    .local v0, "transactionId":I
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 383
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    .line 385
    .local v1, "uaMsgId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRequestDataPayload: transaction-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uaMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->uaMsgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 387
    const v2, 0x17709

    if-eq v1, v2, :cond_0

    .line 392
    const-string v2, "parseRequestDataPayload: unknown msgId"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->handleGeoLocationRequest(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 390
    nop

    .line 395
    :goto_0
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    return-void
.end method

.method private removePackageInLocationSettingsWhitelist()V
    .locals 10

    .line 606
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 608
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 610
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "whitelist":Ljava/lang/String;
    const/4 v4, -0x1

    .line 614
    .local v4, "index":I
    const-string v5, ""

    .line 615
    .local v5, "outStr":Ljava/lang/String;
    const/4 v6, -0x1

    if-eqz v2, :cond_1

    .line 616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 617
    const-string v7, ""

    if-eq v4, v6, :cond_0

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 621
    if-eq v4, v6, :cond_1

    .line 622
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 627
    :cond_1
    :goto_0
    if-eq v4, v6, :cond_2

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove WFC in location setting whitelist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 629
    iget-object v6, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    .line 630
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 629
    invoke-static {v6, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 634
    :cond_2
    return-void
.end method

.method private requestGeoLocationFromNetworkLocation()Z
    .locals 6

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "getGeoLocationFromNetworkLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 543
    return v1

    .line 546
    :cond_0
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "optr":Ljava/lang/String;
    const-string v2, "network"

    if-eqz v0, :cond_2

    const-string v3, "OP08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 550
    goto :goto_0

    .line 552
    :cond_1
    const-string v2, "requestGeoLocationFromNetworkLocation:getProvider() is null!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 553
    return v1

    .line 557
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 558
    const-string v2, "requestGeoLocationFromNetworkLocation:this system has no networkProvider implementation!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 560
    return v1

    .line 564
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher;->addPackageInLocationSettingsWhitelist()V

    .line 565
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 568
    .local v1, "request":Landroid/location/LocationRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 569
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 570
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mLocationListener:Landroid/location/LocationListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 571
    const-string v3, "Wfc-IMSA"

    const-string v4, "requestGeoLocationFromNetworkLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v2
.end method

.method private uaMsgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "uaMsgId"    # I

    .line 676
    const v0, 0x16396

    if-eq p1, v0, :cond_1

    const v0, 0x17709

    if-eq p1, v0, :cond_0

    .line 682
    const-string v0, "Unknown Msg"

    return-object v0

    .line 678
    :cond_0
    const-string v0, "MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO"

    return-object v0

    .line 680
    :cond_1
    const-string v0, "MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO"

    return-object v0
.end method

.method private updateGeoLocationFromLatLong(Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 7
    .param p1, "location"    # Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 461
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 463
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    .line 468
    .local v0, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 469
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-wide v2, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    iget-wide v4, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 472
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Wfc-IMSA"

    const-string v3, "geocoder.getFromLocation throw exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 480
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 481
    .local v2, "address":Landroid/location/Address;
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 482
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    :cond_2
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->city:Ljava/lang/String;

    .line 485
    :cond_3
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 486
    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 487
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->state:Ljava/lang/String;

    .line 489
    :cond_5
    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->zip:Ljava/lang/String;

    .line 490
    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 493
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 494
    iget-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    .line 497
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeoLocationFromLatLong: location="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 498
    return-void

    .line 475
    .end local v2    # "address":Landroid/location/Address;
    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLocationFromLatLong: get empty address, fill plmn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->countryCode:Ljava/lang/String;

    .line 477
    return-void
.end method

.method private writeEventToSocket(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 655
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    goto :goto_0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event discarded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wfc-IMSA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 346
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mNetworkLocationTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    return-void
.end method

.method public enableRequest(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 336
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mImsEnabled:Z

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wfc_aid_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trigger AID information update to IMCB, AID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 378
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 356
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    .line 357
    .local v0, "requestId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vaEventCallback: ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->imsaMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 359
    const v1, 0xdbd36

    if-eq v0, v1, :cond_0

    .line 366
    const-string v1, "Unknown request, return directly "

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/WfcDispatcher;->parseRequestDataPayload(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    nop

    .line 371
    .end local v0    # "requestId":I
    :goto_0
    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Wfc-IMSA"

    const-string v2, "Event exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
