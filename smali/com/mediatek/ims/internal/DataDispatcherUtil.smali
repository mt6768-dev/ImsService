.class public Lcom/mediatek/ims/internal/DataDispatcherUtil;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private deCodeNwRelease(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    .locals 12
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 48
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    .line 49
    .local v0, "reqId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 50
    .local v7, "transId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    .line 51
    .local v8, "abortId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 52
    .local v9, "isValid":Z
    if-nez v9, :cond_1

    .line 53
    const v0, 0xc3504

    .line 55
    :cond_1
    const-string v1, "ims"

    .line 56
    .local v1, "capability":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 57
    const-string v1, "emergency"

    move-object v10, v1

    goto :goto_1

    .line 56
    :cond_2
    move-object v10, v1

    .line 60
    .end local v1    # "capability":Ljava/lang/String;
    .local v10, "capability":Ljava/lang/String;
    :goto_1
    new-instance v11, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    const/4 v6, 0x0

    move-object v1, v11

    move-object v2, p0

    move v3, v7

    move v4, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;IILjava/lang/String;Lcom/mediatek/ims/internal/DataDispatcherUtil$1;)V

    return-object v11
.end method

.method private deCodeNwRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    .locals 11
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 36
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v6

    .line 37
    .local v6, "reqId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 38
    .local v7, "transId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    .line 39
    .local v8, "rat_type":I
    const-string v0, "ims"

    .line 40
    .local v0, "capability":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 41
    const-string v0, "emergency"

    move-object v9, v0

    goto :goto_0

    .line 40
    :cond_0
    move-object v9, v0

    .line 44
    .end local v0    # "capability":Ljava/lang/String;
    .local v9, "capability":Ljava/lang/String;
    :goto_0
    new-instance v10, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, v7

    move v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;IILjava/lang/String;Lcom/mediatek/ims/internal/DataDispatcherUtil$1;)V

    return-object v10
.end method

.method private deCodePcscfDiscovery(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    .locals 11
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 70
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v6

    .line 71
    .local v6, "reqId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 72
    .local v7, "transId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    .line 73
    .local v8, "cid":I
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 74
    const-string v9, "ims"

    .line 77
    .local v9, "capability":Ljava/lang/String;
    new-instance v10, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, v7

    move v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;IILjava/lang/String;Lcom/mediatek/ims/internal/DataDispatcherUtil$1;)V

    return-object v10
.end method

.method private enCodeNotifyNetworkHandle(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeNotifyNetworkHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 207
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 211
    .local v2, "networkHandle":J
    new-instance v4, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v5, 0xdbccd

    invoke-direct {v4, v1, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 213
    .local v4, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putLong(J)I

    .line 214
    return-object v4
.end method

.method private enCodeNotifyNwLost(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeNotifyNwLost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 174
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "cause":I
    const-string v3, ""

    .line 178
    .local v3, "ifaceName":Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 179
    aget-object v3, v0, v5

    .line 182
    :cond_0
    new-instance v4, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v5, 0xdbbae

    invoke-direct {v4, v1, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 184
    .local v4, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v4, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 185
    const/4 v5, 0x3

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 186
    const/16 v5, 0x10

    invoke-virtual {v4, v3, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 187
    return-object v4
.end method

.method private enCodeNwReleased(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeNwReleased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 139
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "transId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, "phoneId":I
    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "cause":I
    const-string v5, ""

    .line 144
    .local v5, "ifaceName":Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 145
    aget-object v5, v0, v7

    .line 148
    :cond_0
    new-instance v6, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v7, 0xdbbac

    invoke-direct {v6, v2, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 150
    .local v6, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v6, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 151
    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 152
    new-array v3, v3, [B

    invoke-virtual {v6, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 153
    const/16 v3, 0x10

    invoke-virtual {v6, v5, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 154
    return-object v6
.end method

.method private enCodeNwRequested(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeNwRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 104
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "transId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, "phoneId":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    .local v3, "netId":I
    const-string v4, ""

    .line 109
    .local v4, "ifaceName":Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    .line 110
    aget-object v4, v0, v6

    .line 113
    :cond_0
    new-instance v5, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v7, 0xdbba9

    invoke-direct {v5, v2, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 115
    .local v5, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 116
    new-array v6, v6, [B

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 117
    invoke-virtual {v5, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 118
    const/16 v6, 0x10

    invoke-virtual {v5, v4, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 119
    return-object v5
.end method

.method private enCodeRejectNwReleased(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeRejectNwReleased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 159
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "transId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, "phoneId":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, "cause":I
    new-instance v4, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v5, 0xdbbad

    invoke-direct {v4, v2, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 166
    .local v4, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v4, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 167
    const/4 v5, 0x3

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 168
    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 169
    return-object v4
.end method

.method private enCodeRejectNwRequested(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeRejectNwRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 124
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "transId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "phoneId":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "cause":I
    new-instance v4, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v5, 0xdbbaa

    invoke-direct {v4, v2, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 131
    .local v4, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v4, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 132
    const/4 v5, 0x3

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 133
    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 134
    return-object v4
.end method

.method private enCodeRejectPcscfDiscovery(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enCodeRejectPcscfDiscovery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->logd(Ljava/lang/String;)V

    .line 192
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, "transId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 195
    .local v2, "phoneId":I
    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 197
    .local v4, "cause":I
    new-instance v5, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v6, 0xdbd35

    invoke-direct {v5, v2, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 199
    .local v5, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 200
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 201
    new-array v3, v3, [B

    invoke-virtual {v5, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 202
    return-object v5
.end method


# virtual methods
.method public deCodeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "request":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    const v2, 0xdbba8

    if-eq v1, v2, :cond_2

    const v2, 0xdbbab

    if-eq v1, v2, :cond_1

    const v2, 0xdbd33

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->deCodePcscfDiscovery(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->deCodeNwRelease(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    move-result-object v0

    .line 26
    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->deCodeNwRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    move-result-object v0

    .line 23
    nop

    .line 32
    :goto_0
    return-object v0
.end method

.method public enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 2
    .param p1, "respId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 81
    sparse-switch p1, :sswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->loge(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 93
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeRejectPcscfDiscovery(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeNotifyNetworkHandle(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeNotifyNwLost(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 89
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeRejectNwReleased(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 87
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeNwReleased(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 85
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeRejectNwRequested(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    .line 83
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeNwRequested(Ljava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xdbba9 -> :sswitch_6
        0xdbbaa -> :sswitch_5
        0xdbbac -> :sswitch_4
        0xdbbad -> :sswitch_3
        0xdbbae -> :sswitch_2
        0xdbccd -> :sswitch_1
        0xdbd35 -> :sswitch_0
    .end sparse-switch
.end method

.method public logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
