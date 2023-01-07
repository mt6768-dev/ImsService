.class public Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
.super Ljava/lang/Object;
.source "ImsSimservsDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static final IMC_MAX_XUI_LEN:I = 0x200

.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "ImsSimservsDispatcher"

.field private static sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mPhone:Landroid/provider/ContactsContract$CommonDataKinds$Phone;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->SENLOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "io"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;-><init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 79
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 81
    sput-object p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
    .locals 1

    .line 86
    sget-object v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->sInstance:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    return-object v0
.end method

.method private handleXuiUpdate(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 136
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v0

    .line 137
    .local v0, "length":I
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    .line 138
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    .line 139
    .local v2, "xui":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    .line 141
    .local v3, "phoneId":I
    if-nez v1, :cond_0

    .line 142
    const-string v4, "handleXuiUpdate event.getBytes() = null"

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 143
    return-void

    .line 147
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "handleXuiUpdate() UnsupportedEncodingException occured"

    invoke-static {v5}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 152
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleXuiUpdate xui="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v4

    .line 155
    .local v4, "xuim":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-virtual {v4, v3, v2}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v5

    .line 158
    .local v5, "imsService":Lcom/mediatek/ims/ImsService;
    if-eqz v5, :cond_1

    .line 159
    invoke-virtual {v5, v3}, Lcom/mediatek/ims/ImsService;->updateSelfIdentity(I)V

    .line 161
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ims] ImsSimservsDispatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_ImsSimservsDispatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSimservsDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 125
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 101
    return-void
.end method

.method public enableRequest(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 94
    return-void
.end method

.method public setSocket(Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 118
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 119
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
