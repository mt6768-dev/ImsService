.class public Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConferenceCallMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    }
.end annotation


# static fields
.field public static final CEP_STATE_FULL:I = 0x1

.field public static final CEP_STATE_PARTIAL:I = 0x2

.field public static final CEP_STATE_UNKNOWN:I = 0x0

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field public static final STATUS_ALERTING:Ljava/lang/String; = "alerting"

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_CONNECT_FAIL:Ljava/lang/String; = "connect-fail"

.field public static final STATUS_DIALING_IN:Ljava/lang/String; = "dialing-in"

.field public static final STATUS_DIALING_OUT:Ljava/lang/String; = "dialing-out"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_DISCONNECTING:Ljava/lang/String; = "disconnecting"

.field public static final STATUS_MUTED_VIA_FOCUS:Ljava/lang/String; = "muted-via-focus"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field private static final TAG:Ljava/lang/String; = "ConferenceCallMessageHandler"

.field private static final TELDBG:Z


# instance fields
.field private mCEPState:I

.field private mCallId:I

.field private mHostInfo:Ljava/lang/String;

.field private mIndex:I

.field private mMaxUserCount:I

.field private mParsingHostInfo:Z

.field private mTag:Ljava/lang/String;

.field private mTempVal:Ljava/lang/String;

.field private mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

.field private mUserCount:I

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->SENLOG:Z

    .line 64
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCallId:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mIndex:I

    .line 73
    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUserCount:I

    .line 75
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mParsingHostInfo:Z

    .line 76
    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mVersion:I

    .line 77
    iput v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCEPState:I

    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 450
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setMaxUserCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxUserCount"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mMaxUserCount:I

    .line 260
    return-void
.end method

.method private telLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 445
    sget-boolean v0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->TELDBG:Z

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    const-string v0, "ConferenceCallMessageHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method private updateCEPState(Ljava/lang/String;)I
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 433
    return v0

    .line 435
    :cond_0
    const-string v1, "full"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_1
    const-string v1, "partial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    const/4 v0, 0x2

    return v0

    .line 441
    :cond_2
    return v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v1, "ConferenceCallMessageHandler"

    if-nez v0, :cond_0

    .line 309
    const-string v0, "Parse val failed: tag is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 313
    .local v0, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " val: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->telLog(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v3, "maximum-user-count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->setMaxUserCount(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v3, "user-count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUserCount:I

    goto :goto_0

    .line 319
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mParsingHostInfo:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    iput-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mHostInfo:Ljava/lang/String;

    .line 323
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    if-nez v2, :cond_4

    .line 324
    const-string v2, "Parse val failed: user is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v2, "display-text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setDisplayText(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setStatus(Ljava/lang/String;)V

    .line 332
    :cond_6
    :goto_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 386
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 387
    iget-object v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iput-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    goto :goto_0

    .line 389
    :cond_0
    const-string v0, "host-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mParsingHostInfo:Z

    .line 392
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public getCEPState()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCEPState:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCallId:I

    return v0
.end method

.method public getHostInfo()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mHostInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUserCount()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mMaxUserCount:I

    return v0
.end method

.method public getUserCount()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUserCount:I

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mVersion:I

    return v0
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId"    # I

    .line 277
    iput p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCallId:I

    .line 278
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    .line 296
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 346
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "entity"

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 347
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mIndex:I

    .line 348
    new-instance v0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;-><init>(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 349
    iget v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setIndex(I)V

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-interface {p4, v3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setEntity(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user - entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->telLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 352
    :cond_0
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-interface {p4, v3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setEndPoint(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endpoint - entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->telLog(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    invoke-interface {p4, v3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->setEndPoint(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_2
    const-string v0, "host-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mParsingHostInfo:Z

    goto :goto_1

    .line 359
    :cond_3
    const-string v0, "conference-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const-string v0, "version"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "ver":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 366
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->telLog(Ljava/lang/String;)V

    .line 368
    const-string v1, "state"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "state":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->updateCEPState(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mCEPState:I

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get CEP state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->telLog(Ljava/lang/String;)V

    .line 372
    .end local v0    # "ver":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_4
    :goto_1
    iput-object p3, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->mTag:Ljava/lang/String;

    .line 373
    return-void
.end method
