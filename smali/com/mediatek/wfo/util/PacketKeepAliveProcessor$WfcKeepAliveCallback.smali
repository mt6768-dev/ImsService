.class Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfcKeepAliveCallback"
.end annotation


# instance fields
.field config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

.field mIsStarted:Z

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 143
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 144
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 145
    return-void
.end method

.method private errorToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "error"    # I

    .line 173
    const-string v0, "unknown"

    .line 174
    .local v0, "str":Ljava/lang/String;
    const/16 v1, -0x1f

    if-eq p1, v1, :cond_1

    const/16 v1, -0x1e

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    const-string v0, "ERROR_INVALID_NETWORK"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_1
    const-string v0, "ERROR_INVALID_IP_ADDRESS"

    .line 180
    goto :goto_0

    .line 182
    :pswitch_2
    const-string v0, "ERROR_INVALID_PORT"

    .line 183
    goto :goto_0

    .line 185
    :pswitch_3
    const-string v0, "ERROR_INVALID_LENGTH"

    .line 186
    goto :goto_0

    .line 188
    :pswitch_4
    const-string v0, "ERROR_INVALID_INTERVAL"

    .line 189
    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "ERROR_HARDWARE_UNSUPPORTED"

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "ERROR_HARDWARE_ERROR"

    .line 197
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x18
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    return v0
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAlive is failed, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->errorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 170
    return-void
.end method

.method public onStarted()V
    .locals 5

    .line 153
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is started!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 155
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v0, v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 161
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is stopped!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 163
    return-void
.end method
