.class public Lcom/mediatek/wfo/impl/PingDns;
.super Ljava/lang/Object;
.source "PingDns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;,
        Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;,
        Lcom/mediatek/wfo/impl/PingDns$NetworkTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final STATIC_DNS_IPV4:Ljava/lang/String; = "49.45.0.1"

.field private static final STATIC_DNS_IPV6:Ljava/lang/String; = "2405:200:800:1"

.field private static final TAG:Ljava/lang/String; = "PingDns"

.field private static final VDBG:Z = true

.field private static mInterfaceIndex:Ljava/lang/Integer;


# instance fields
.field private final MAX_PING_COUNT:I

.field private final PACKET_BUFSIZE:I

.field private final PING_TIME_INTERVAL:I

.field private final PORT:I

.field private final SOCKET_TIMEOUT_MS:I

.field private final TIMEOUT_RECV:I

.field private final TIMEOUT_SEND:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDnsAddressIpv4:Ljava/net/InetAddress;

.field private mDnsAddressIpv6:Ljava/net/InetAddress;

.field private mHandler:Landroid/os/Handler;

.field private mPacketLost:I

.field private mPingLatency:D

.field private mRat:I

.field private mSimId:I

.field private mWifiLinkProp:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # I
    .param p3, "rat"    # I
    .param p4, "hdlr"    # Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->PING_TIME_INTERVAL:I

    .line 85
    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->SOCKET_TIMEOUT_MS:I

    .line 86
    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->TIMEOUT_SEND:I

    .line 87
    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->TIMEOUT_RECV:I

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->MAX_PING_COUNT:I

    .line 89
    const/16 v0, 0x28

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->PACKET_BUFSIZE:I

    .line 90
    const/16 v0, 0x270f

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->PORT:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PingDns Construct for sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PingDns"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/mediatek/wfo/impl/PingDns;->mContext:Landroid/content/Context;

    .line 111
    iput-object p4, p0, Lcom/mediatek/wfo/impl/PingDns;->mHandler:Landroid/os/Handler;

    .line 112
    iput p3, p0, Lcom/mediatek/wfo/impl/PingDns;->mRat:I

    .line 113
    iput p2, p0, Lcom/mediatek/wfo/impl/PingDns;->mSimId:I

    .line 114
    nop

    .line 115
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mPingLatency:D

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mPacketLost:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mWifiLinkProp:Landroid/net/LinkProperties;

    .line 119
    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mDnsAddressIpv6:Ljava/net/InetAddress;

    .line 120
    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mDnsAddressIpv4:Ljava/net/InetAddress;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/mediatek/wfo/impl/PingDns;D)D
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p1, "x1"    # D

    .line 77
    iput-wide p1, p0, Lcom/mediatek/wfo/impl/PingDns;->mPingLatency:D

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/mediatek/wfo/impl/PingDns;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/mediatek/wfo/impl/PingDns;->mPacketLost:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/PingDns;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;

    .line 77
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/PingDns;->getImsDnsServer()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/PingDns;->runIcmpCheck(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Integer;
    .locals 1

    .line 77
    sget-object v0, Lcom/mediatek/wfo/impl/PingDns;->mInterfaceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/PingDns;->errorInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/PingDns;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;

    .line 77
    iget v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mSimId:I

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 77
    invoke-static {}, Lcom/mediatek/wfo/impl/PingDns;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/PingDns;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;

    .line 77
    iget v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mRat:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/PingDns;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/PingDns;

    .line 77
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private debugInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PingDns"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method private errorInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PingDns"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method

.method private getActiveLinkProp()Landroid/net/LinkProperties;
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 245
    .local v0, "network":Landroid/net/Network;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return-object v1

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/PingDns;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 250
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 254
    .local v1, "link":Landroid/net/LinkProperties;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveLinkProp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 255
    return-object v1

    .line 251
    .end local v1    # "link":Landroid/net/LinkProperties;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getImsDnsServer()Ljava/net/InetAddress;
    .locals 3

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "dnsAddress":Ljava/net/InetAddress;
    const-string v1, "getImsDnsServer"

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mDnsAddressIpv4:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mDnsAddressIpv6:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/PingDns;->getStaticDnsServer()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mDnsAddressIpv6:Ljava/net/InetAddress;

    .line 219
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dnsAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 220
    return-object v0
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "ifname"    # Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 147
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 148
    .end local v0    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getStaticDnsServer()Ljava/net/InetAddress;
    .locals 4

    .line 154
    const-string v0, "getStaticDnsServer"

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "staticDnsAddr":Ljava/net/InetAddress;
    :try_start_0
    const-string v1, "Fallback to static IPV6 = 2405:200:800:1"

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :try_start_1
    const-string v1, "2405:200:800:1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 164
    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_2
    const-string v2, "Unable to resolve IPV6 host, Fallback to static IPV4 = 49.45.0.1"

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 163
    const-string v2, "49.45.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v2

    .line 168
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_0
    goto :goto_1

    .line 165
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private static final now()J
    .locals 2

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method private runIcmpCheck(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 259
    new-instance v0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;-><init>(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V

    .line 260
    .local v0, "icmpCheck":Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    .local v1, "t":Ljava/lang/Thread;
    const-class v2, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 263
    return-void
.end method


# virtual methods
.method assertEquals(II)V
    .locals 2
    .param p1, "e"    # I
    .param p2, "v"    # I

    .line 522
    if-eq p1, p2, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion failed! Expected: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "> Got: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void
.end method

.method public getPacketLoss()I
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPacketLost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mPacketLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mPacketLost:I

    return v0
.end method

.method public getPingLatency()D
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPingLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/wfo/impl/PingDns;->mPingLatency:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 125
    iget-wide v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mPingLatency:D

    return-wide v0
.end method

.method public pingWifiGateway()V
    .locals 2

    .line 134
    const-string v0, "pingWifiGateway"

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/PingDns;->getActiveLinkProp()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns;->mWifiLinkProp:Landroid/net/LinkProperties;

    .line 136
    if-nez v0, :cond_0

    .line 137
    const-string v0, "No Active network"

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingDns;->debugInfo(Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/wfo/impl/PingDns;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/impl/PingDns;->mInterfaceIndex:Ljava/lang/Integer;

    .line 141
    new-instance v0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;-><init>(Lcom/mediatek/wfo/impl/PingDns;Lcom/mediatek/wfo/impl/PingDns$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method
