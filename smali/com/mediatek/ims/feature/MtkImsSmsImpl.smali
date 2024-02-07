.class public Lcom/mediatek/ims/feature/MtkImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "MtkImsSmsImpl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final ENG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsSmsImpl"

.field private static sMtkImsSmsImpltances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/feature/MtkImsSmsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneId:I

.field private mToken:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->ENG:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 103
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    invoke-virtual {p0, v0, p1, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "service"    # Lcom/mediatek/ims/ImsService;

    .line 99
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    .line 101
    return-void
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 90
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    .line 92
    .local v0, "m":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    return-object v0

    .line 94
    .end local v0    # "m":Lcom/mediatek/ims/feature/MtkImsSmsImpl;
    :cond_0
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->sMtkImsSmsImpltances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsSmsImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsSmsImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private static resultToCauseForCdma(I)I
    .locals 1
    .param p0, "rc"    # I

    .line 284
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 294
    const/16 v0, 0x27

    return v0

    .line 291
    :cond_0
    return v0

    .line 289
    :cond_1
    const/16 v0, 0x23

    return v0

    .line 287
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static resultToCauseForGsm(I)I
    .locals 1
    .param p0, "rc"    # I

    .line 299
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 307
    const/16 v0, 0xff

    return v0

    .line 304
    :cond_0
    const/16 v0, 0xd3

    return v0

    .line 302
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 219
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 224
    .local v1, "ok":Z
    :goto_0
    const-string v2, "3gpp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-static {p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->resultToCauseForGsm(I)I

    move-result v2

    .line 226
    .local v2, "cause":I
    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 227
    .end local v2    # "cause":I
    goto :goto_1

    :cond_1
    const-string v2, "3gpp2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-static {p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->resultToCauseForCdma(I)I

    move-result v2

    .line 229
    .restart local v2    # "cause":I
    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    .line 231
    .end local v2    # "cause":I
    goto :goto_1

    .line 232
    :cond_2
    const-string v2, "SMS format error."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 234
    :goto_1
    return-void

    .line 220
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "ok":Z
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 206
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport toke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->acknowledgeSms(III)V

    .line 215
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configure(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "service"    # Lcom/mediatek/ims/ImsService;

    .line 108
    iput-object p3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 109
    iput p2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    .line 110
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configure phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 4

    .line 244
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP236:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 248
    .local v0, "is3GPP2Format":Z
    const-string v1, "persist.vendor.radio.smsformat"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "smsFormat":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",is3GPP2Format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 250
    const-string v2, "3gpp2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const-string v1, "3gpp2"

    goto :goto_0

    .line 252
    :cond_0
    const-string v2, "3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    const-string v1, "3gpp"

    goto :goto_0

    .line 255
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 256
    const-string v1, "3gpp2"

    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "3gpp"

    .line 261
    :goto_0
    return-object v1

    .line 245
    .end local v0    # "is3GPP2Format":Z
    .end local v1    # "smsFormat":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newImsSmsInd([BLjava/lang/String;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 189
    .local v0, "token":I
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p0, v0, p2, p1}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V

    .line 191
    return-void
.end method

.method public newStatusReportInd([BLjava/lang/String;)V
    .locals 8
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    const-string v1, "3gpp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "3gpp2"

    if-eqz v2, :cond_0

    .line 152
    nop

    .line 153
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    nop

    .line 156
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 158
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 159
    .local v2, "mayAckHere":Z
    if-eqz v0, :cond_3

    .line 160
    iget v4, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 162
    .local v4, "messageRef":I
    iget-object v5, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 163
    .local v5, "token":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newStatusReportInd token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", messageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pdu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-direct {p0, v6}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 165
    if-ltz v5, :cond_2

    .line 166
    const/4 v2, 0x0

    .line 167
    iget-object v6, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mInboundSmsFormat:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, v5, v4, p2, p1}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSmsStatusReportReceived(IILjava/lang/String;[B)V

    goto :goto_1

    .line 170
    :cond_2
    const-string v6, "newStatusReportInd, token < 0, shouldn\'t be here"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 172
    .end local v4    # "messageRef":I
    .end local v5    # "token":I
    :goto_1
    goto :goto_2

    .line 173
    :cond_3
    const-string v4, "newStatusReportInd, sms is null, shouldn\'t be here"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 175
    :goto_2
    if-eqz v2, :cond_6

    .line 176
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingGsmSms(IZI)V

    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v3, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    const/4 v5, 0x2

    .line 180
    invoke-virtual {v1, v3, v4, v5}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto :goto_3

    .line 182
    :cond_5
    const-string v1, "SMS format error."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->loge(Ljava/lang/String;)V

    .line 185
    :cond_6
    :goto_3
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    .line 272
    const-string v0, "onReady"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mPhoneId:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/ImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 135
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onReady is not called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendSmsRsp(IIII)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSmsRsp toke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->log(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->mToken:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->onSendSmsResult(IIII)V

    .line 147
    return-void
.end method
