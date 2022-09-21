.class public Lcom/mediatek/wfo/impl/PingData;
.super Ljava/lang/Object;
.source "PingData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PingData"


# instance fields
.field private mLatencyData:D

.field private mPacketLostData:I

.field private mSimId:I


# direct methods
.method public constructor <init>(IDI)V
    .locals 0
    .param p1, "simId"    # I
    .param p2, "latency"    # D
    .param p4, "lostData"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/mediatek/wfo/impl/PingData;->mSimId:I

    .line 48
    iput-wide p2, p0, Lcom/mediatek/wfo/impl/PingData;->mLatencyData:D

    .line 49
    iput p4, p0, Lcom/mediatek/wfo/impl/PingData;->mPacketLostData:I

    .line 50
    return-void
.end method

.method private debugInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingData;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PingData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public getPacketLoss()I
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPacketLost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingData;->mPacketLostData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingData;->debugInfo(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/mediatek/wfo/impl/PingData;->mPacketLostData:I

    return v0
.end method

.method public getPingLatency()D
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPingLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/wfo/impl/PingData;->mLatencyData:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/PingData;->debugInfo(Ljava/lang/String;)V

    .line 54
    iget-wide v0, p0, Lcom/mediatek/wfo/impl/PingData;->mLatencyData:D

    return-wide v0
.end method
