.class public Lcom/mediatek/wfo/ril/MwiRadioResponse;
.super Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;
.source "MwiRadioResponse.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p2, "phoneId"    # I

    .line 15
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    .line 17
    iput p2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mPhoneId:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MwiRadioResponse, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 114
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "ret":Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 117
    move-object v1, p2

    .line 118
    iget-object v2, v0, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 122
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 96
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v0

    .line 97
    .local v0, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 100
    iget-object v2, v0, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioResponse;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->processResponseDone(Lcom/mediatek/wfo/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 104
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 32
    if-eqz p0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 86
    return-void
.end method

.method public setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 71
    return-void
.end method

.method public setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 66
    return-void
.end method

.method public setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 76
    return-void
.end method

.method public setWfcConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 51
    return-void
.end method

.method public setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 46
    return-void
.end method

.method public setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 41
    return-void
.end method

.method public setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 61
    return-void
.end method

.method public setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 81
    return-void
.end method

.method public setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/ril/MwiRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 56
    return-void
.end method
