.class public Lcom/mediatek/ims/ril/RadioResponseImpl;
.super Lcom/mediatek/ims/ril/RadioResponseBase;
.source "RadioResponseImpl.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 18
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioResponseBase;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 20
    iput p2, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mPhoneId:I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRadioResponse, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 297
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 299
    .local v1, "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 300
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 301
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 302
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 303
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 304
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 305
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 306
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 309
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 313
    .end local v1    # "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    return-void
.end method

.method private responseFailCause(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "info"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 369
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 370
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 373
    new-instance v2, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v2}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v2

    .line 374
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 375
    iget-object v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 376
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 380
    .end local v1    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/ims/ril/ImsRILAdapter;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 177
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "ret":[Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 182
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 186
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 188
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 324
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 327
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 331
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 35
    if-eqz p0, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 59
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 68
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 77
    return-void
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 84
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 93
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 102
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 231
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 246
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 282
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 264
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "resp"    # I

    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 202
    return-void
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "failCauseInfo"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseFailCause(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 50
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 111
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 112
    return-void
.end method

.method public responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 349
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 351
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 352
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 355
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 359
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method public varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 341
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 344
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 121
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 122
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 219
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 220
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 253
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 254
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 271
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 272
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retry"    # I

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    .line 212
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "response"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 131
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 140
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 141
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 142
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 151
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioResponseImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 152
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 153
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 161
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/RadioResponseImpl;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 162
    return-void
.end method
