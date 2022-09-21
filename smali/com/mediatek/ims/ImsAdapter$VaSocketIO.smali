.class public Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
.super Ljava/lang/Thread;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VaSocketIO"
.end annotation


# instance fields
.field private buf:[B

.field private mDin:Ljava/io/DataInputStream;

.field private mId:I

.field private volatile mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

.field private mOut:Ljava/io/OutputStream;

.field private mPhoneId:I

.field private mSocket:Landroid/net/LocalSocket;

.field private mTyp:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsAdapter;Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsAdapter;
    .param p2, "imsa_proxy"    # Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 397
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mTyp:I

    .line 389
    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mId:I

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 391
    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 392
    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 394
    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 395
    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 399
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    .line 400
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "VaSocketIO(): Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-object p2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 402
    return-void
.end method

.method private byteToArrayList(I[B)Ljava/util/ArrayList;
    .locals 3
    .param p1, "length"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, "myarraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " byteToArrayList, value.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@M_[ImsAdapter]"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 423
    aget-byte v2, p2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpEvent: phone_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",request_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsAdapter;->requestIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data_len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    const-string v1, "@M_[ImsAdapter]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method


# virtual methods
.method public clearImsaProxy()V
    .locals 2

    .line 410
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "VaSocketIO(): clearImsaProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 412
    return-void
.end method

.method public run()V
    .locals 2

    .line 415
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "VaSocketIO(): Run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method public updateImsaProxy(Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V
    .locals 2
    .param p1, "imsa_proxy"    # Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 405
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "VaSocketIO(): updateImsaProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 407
    return-void
.end method

.method public writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I
    .locals 7
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeEvent Enter, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_[ImsAdapter]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, -0x1

    .line 432
    .local v0, "ret":I
    const/4 v1, -0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v2, :cond_2

    .line 434
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 435
    const-string v2, "@M_[ImsAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeEvent event phoneId mismatch, event skipped. (event requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", socket phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    .line 443
    .local v2, "requestId":I
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 445
    const-string v3, "persist.vendor.mims_support"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    .line 447
    .local v3, "phoneId":I
    shl-int/lit8 v4, v3, 0x18

    or-int/2addr v2, v4

    .line 448
    const-string v4, "@M_[ImsAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DUAL IMS request ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v3    # "phoneId":I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v5

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->byteToArrayList(I[B)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->writeEvent(IILjava/util/ArrayList;)V

    .line 451
    const/4 v0, 0x0

    .line 452
    .end local v2    # "requestId":I
    goto :goto_0

    .line 454
    :cond_2
    const-string v2, "@M_[ImsAdapter]"

    const-string v3, "mImsaProxy is null, HIDL is not setup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    monitor-exit p0

    .line 460
    nop

    .line 462
    return v0

    .line 456
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    .end local p1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    .restart local p1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    return v1
.end method
