.class public Lcom/mediatek/ims/MtkImsCallSessionProxy;
.super Ljava/lang/Object;
.source "MtkImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsCallSessionProxy"


# instance fields
.field private mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

.field private mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 147
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsCallSessionProxy() : RILAdapter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    move-object v3, p0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;-><init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 141
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 404
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 405
    const-string v0, "logWithCallId with mAospImsCallSessionProxy = null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "mCallId":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "] "

    const-string v4, "[callId = "

    if-ne v2, p2, :cond_1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    :cond_3
    const/4 v2, 0x4

    if-ne v2, p2, :cond_4

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_4
    const/4 v2, 0x5

    if-ne v2, p2, :cond_5

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .locals 2
    .param p1, "isAprroved"    # Z

    .line 223
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->approveEccRedial(Z)V

    .line 229
    return-void

    .line 224
    :cond_1
    :goto_0
    const/4 v0, 0x5

    const-string v1, "approveEccRedial() : mCallSessionImpl is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method public callTerminated()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x5

    const-string v1, "callTerminated() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 271
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 275
    return-void
.end method

.method public close()V
    .locals 2

    .line 154
    const-string v0, "close() : MtkImsCallSessionProxy is going to be closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 159
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 161
    :cond_0
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 162
    return-void
.end method

.method public getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, ""

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallId() : RemoteException getCallId()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 174
    return-object v1

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallId() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 167
    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallProfile() : RemoteException getCallProfile()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 189
    return-object v1

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallProfile() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 181
    return-object v1
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x5

    const-string v1, "ConferenceEventListener() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHeaderCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x5

    const-string v1, "getIImsCallSession() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0

    .line 215
    :cond_1
    :goto_0
    const/4 v0, 0x5

    const-string v1, "isIncomingCallMultiparty() : mCallSessionImpl is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallSessionBusy()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionBusy() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 358
    return-void

    .line 361
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionBusy() : RemoteException notifyCallSessionBusy()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionCalling()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionCalling() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 346
    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionCalling() : RemoteException notifyCallSessionCalling()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 306
    const-string v0, "notifyCallSessionMergeComplete() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 308
    return-void

    .line 311
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeComplete() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 291
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 292
    const-string v0, "notifyCallSessionMergeStarted() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 294
    return-void

    .line 297
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeStarted() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 332
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x2

    const-string v1, "notifyCallSessionRinging() : mMtkListener is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 334
    return-void

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x5

    const-string v2, "notifyCallSessionRinging() : RemoteException notifyCallSessionRinging()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyRedialEcc(Z)V
    .locals 3
    .param p1, "isNeedUserConfirm"    # Z

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 320
    const-string v0, "notifyRedialEcc() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 321
    return-void

    .line 324
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyRedialEcc() : RemoteException callSessionRedialEcc()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyRttECCRedialEvent()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 248
    const-string v0, "notifyRttECCRedialEvent() listener is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    const/16 v3, 0x89

    invoke-interface {v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException callSessionRttEventReceived()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyTextCapabilityChanged(IIII)V
    .locals 7
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteCapability"    # I

    .line 233
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v6, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 234
    const-string v0, "notifyTextCapabilityChanged() listener is null"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException callSessionTextCapabilityChanged()"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeLastParticipant()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeLastParticipant()V

    .line 283
    return-void
.end method

.method public resume()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x5

    const-string v1, "resume() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 261
    return-void

    .line 264
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 265
    return-void
.end method

.method public setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 397
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 398
    return-void
.end method

.method setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 211
    :cond_0
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setImsCallMode(I)V

    .line 279
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 195
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 196
    return-void
.end method

.method public setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 0
    .param p1, "serviceImpl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 389
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 390
    return-void
.end method

.method terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x5

    const-string v1, "terminate() : mAospImsCallSessionProxy is null"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 379
    return-void

    .line 381
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 382
    return-void
.end method
