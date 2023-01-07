.class public Lcom/mediatek/ims/ril/RadioResponseBase;
.super Landroid/hardware/radio/V1_4/IRadioResponse$Stub;
.source "RadioResponseBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 76
    const-string v0, "No implementation in acceptCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 81
    const-string v0, "No implementation in acknowledgeIncomingGsmSmsWithPduResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 86
    const-string v0, "No implementation in acknowledgeLastIncomingCdmaSmsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 91
    const-string v0, "No implementation in acknowledgeLastIncomingGsmSmsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "info"    # I

    .line 96
    const-string v0, "No implementation in acknowledgeRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 101
    const-string v0, "No implementation in cancelPendingUssdResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 106
    const-string v0, "No implementation in changeIccPin2ForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 111
    const-string v0, "No implementation in changeIccPinForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 116
    const-string v0, "No implementation in conferenceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 121
    const-string v0, "No implementation in deactivateDataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 126
    const-string v0, "No implementation in deleteSmsOnRuimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 131
    const-string v0, "No implementation in deleteSmsOnSimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 136
    const-string v0, "No implementation in dialResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 918
    const-string v0, "No implementation in emergencyDialResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 910
    const-string v0, "No implementation in enableModemResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 141
    const-string v0, "No implementation in exitEmergencyCallbackModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 146
    const-string v0, "No implementation in explicitCallTransferResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;

    .line 153
    const-string v0, "No implementation in getAllowedCarriersResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "carrierRestrictions"    # Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .param p3, "multiSimPolicy"    # I

    .line 968
    const-string v0, "No implementation in getAllowedCarriersResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "No implementation in getAvailableBandModesResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    const-string v0, "No implementation in getAvailableNetworksResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 172
    const-string v0, "No implementation in getBasebandVersionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Ljava/lang/String;

    .line 181
    const-string v0, "No implementation in getCDMASubscriptionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
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

    .line 188
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    const-string v0, "No implementation in getCallForwardStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # I

    .line 195
    const-string v0, "No implementation in getCallWaitingResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    const-string v0, "No implementation in getCdmaBroadcastConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 207
    const-string v0, "No implementation in getCdmaRoamingPreferenceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 212
    const-string v0, "No implementation in getCdmaSubscriptionSourceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    const-string v0, "No implementation in getCellInfoListResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 881
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    const-string v0, "No implementation in getCellInfoListResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    const-string v0, "No implementation in getCellInfoListResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 222
    const-string v0, "No implementation in getClipResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 227
    const-string v0, "No implementation in getClirResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    const-string v0, "No implementation in getCurrentCallsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 841
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    const-string v0, "No implementation in getCurrentCallsResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    const-string v0, "No implementation in getDataCallListResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 953
    .local p2, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    const-string v0, "No implementation in getDataCallListResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/DataRegStateResult;

    .line 248
    const-string v0, "No implementation in getDataRegistrationStateResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 893
    const-string v0, "No implementation in getDataRegistrationStateResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_4/DataRegStateResult;

    .line 933
    const-string v0, "No implementation in getDataRegistrationStateResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .line 255
    const-string v0, "No implementation in getDeviceIdentityResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 260
    const-string v0, "No implementation in getFacilityLockForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    const-string v0, "No implementation in getGsmBroadcastConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    const-string v0, "No implementation in getHardwareConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 279
    const-string v0, "No implementation in getIMSIForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/CardStatus;

    .line 284
    const-string v0, "No implementation in getIccCardStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_2/CardStatus;

    .line 870
    const-string v0, "No implementation in getIccCardStatusResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_4/CardStatus;

    .line 938
    const-string v0, "No implementation in getIccCardStatusResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # I

    .line 291
    const-string v0, "No implementation in getImsRegistrationStateResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    .line 298
    const-string v0, "No implementation in getLastCallFailCauseResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    .line 305
    const-string v0, "No implementation in getModemActivityInfoResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 914
    const-string v0, "No implementation in getModemStackStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z

    .line 311
    const-string v0, "No implementation in getMuteResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p2, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    const-string v0, "No implementation in getNeighboringCidsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z

    .line 325
    const-string v0, "No implementation in getNetworkSelectionModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .line 332
    const-string v0, "No implementation in getOperatorResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "halRadioAccessFamilyBitmap"    # I

    .line 944
    const-string v0, "No implementation in getPreferredNetworkTypeBitmapResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 337
    const-string v0, "No implementation in getPreferredNetworkTypeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Z

    .line 344
    const-string v0, "No implementation in getPreferredVoicePrivacyResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 351
    const-string v0, "No implementation in getRadioCapabilityResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 358
    const-string v0, "No implementation in getSignalStrengthResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 830
    const-string v0, "No implementation in getSignalStrengthResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_4/SignalStrength;

    .line 974
    const-string v0, "No implementation in getSignalStrengthResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 363
    const-string v0, "No implementation in getSmscAddressResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 368
    const-string v0, "No implementation in getTTYModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 373
    const-string v0, "No implementation in getVoiceRadioTechnologyResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 380
    const-string v0, "No implementation in getVoiceRegistrationStateResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "voiceRegStateResult"    # Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 899
    const-string v0, "No implementation in getVoiceRegistrationStateResponse_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 385
    const-string v0, "No implementation in handleStkCallSetupRequestFromSimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 390
    const-string v0, "No implementation in hangupConnectionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 395
    const-string v0, "No implementation in hangupForegroundResumeBackgroundResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 400
    const-string v0, "No implementation in hangupWaitingOrBackgroundResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 405
    const-string v0, "No implementation in iccCloseLogicalChannelResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 410
    const-string v0, "No implementation in iccIOForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p3, "arg2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in iccOpenLogicalChannelResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 424
    const-string v0, "No implementation in iccTransmitApduBasicChannelResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 431
    const-string v0, "No implementation in iccTransmitApduLogicalChannelResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 436
    const-string v0, "No implementation in nvReadItemResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 441
    const-string v0, "No implementation in nvResetConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 446
    const-string v0, "No implementation in nvWriteCdmaPrlResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 451
    const-string v0, "No implementation in nvWriteItemResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 456
    const-string v0, "No implementation in pullLceDataResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 461
    const-string v0, "No implementation in rejectCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 466
    const-string v0, "No implementation in reportSmsMemoryStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 471
    const-string v0, "No implementation in reportStkServiceIsRunningResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 478
    const-string v0, "No implementation in requestIccSimAuthenticationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 485
    const-string v0, "No implementation in requestIsimAuthenticationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 490
    const-string v0, "No implementation in requestShutdownResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 981
    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 495
    const-string v0, "No implementation in sendBurstDtmfResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 500
    const-string v0, "No implementation in sendCDMAFeatureCodeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 505
    const-string v0, "No implementation in sendCdmaSmsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 510
    const-string v0, "No implementation in sendDeviceStateResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 515
    const-string v0, "No implementation in sendDtmfResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Ljava/lang/String;

    .line 520
    const-string v0, "No implementation in sendEnvelopeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/IccIoResult;

    .line 527
    const-string v0, "No implementation in sendEnvelopeWithStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 532
    const-string v0, "No implementation in sendImsSmsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 539
    const-string v0, "No implementation in sendSMSExpectMoreResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 544
    const-string v0, "No implementation in sendSmsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 549
    const-string v0, "No implementation in sendTerminalResponseToSimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 554
    const-string v0, "No implementation in sendUssdResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 559
    const-string v0, "No implementation in separateConnectionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 564
    const-string v0, "No implementation in setAllowedCarriersResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 962
    const-string v0, "No implementation in setAllowedCarriersResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 569
    const-string v0, "No implementation in setBandModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 574
    const-string v0, "No implementation in setBarringPasswordResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 579
    const-string v0, "No implementation in setCallForwardResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 584
    const-string v0, "No implementation in setCallWaitingResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 804
    const-string v0, "No implementation in setCarrierInfoForImsiEncryptionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 589
    const-string v0, "No implementation in setCdmaBroadcastActivationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 594
    const-string v0, "No implementation in setCdmaBroadcastConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 599
    const-string v0, "No implementation in setCdmaRoamingPreferenceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 604
    const-string v0, "No implementation in setCdmaSubscriptionSourceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 609
    const-string v0, "No implementation in setCellInfoListRateResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 614
    const-string v0, "No implementation in setClirResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 619
    const-string v0, "No implementation in setDataAllowedResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 624
    const-string v0, "No implementation in setDataProfileResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 629
    const-string v0, "No implementation in setFacilityLockForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 634
    const-string v0, "No implementation in setGsmBroadcastActivationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 639
    const-string v0, "No implementation in setGsmBroadcastConfigResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 644
    const-string v0, "No implementation in setIndicationFilterResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 649
    const-string v0, "No implementation in setInitialAttachApnResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 850
    const-string v0, "No implementation in setLinkCapacityReportingCriteriaResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 654
    const-string v0, "No implementation in setLocationUpdatesResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 659
    const-string v0, "No implementation in setMuteResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 664
    const-string v0, "No implementation in setNetworkSelectionModeAutomaticResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 669
    const-string v0, "No implementation in setNetworkSelectionModeManualResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 948
    const-string v0, "No implementation in setPreferredNetworkTypeBitmapResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 674
    const-string v0, "No implementation in setPreferredNetworkTypeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 679
    const-string v0, "No implementation in setPreferredVoicePrivacyResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 686
    const-string v0, "No implementation in setRadioCapabilityResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 691
    const-string v0, "No implementation in setRadioPowerResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 859
    const-string v0, "No implementation in setSignalStrengthReportingCriteriaResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 696
    const-string v0, "No implementation in setSimCardPowerResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 814
    const-string v0, "No implementation in setSimCardPowerResponse_1_1"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 701
    const-string v0, "No implementation in setSmscAddressResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 706
    const-string v0, "No implementation in setSuppServiceNotificationsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 906
    const-string v0, "No implementation in setSystemSelectionChannelsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 711
    const-string v0, "No implementation in setTTYModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 716
    const-string v0, "No implementation in setUiccSubscriptionResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 723
    const-string v0, "No implementation in setupDataCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 958
    const-string v0, "No implementation in setupDataCallResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 728
    const-string v0, "No implementation in startDtmfResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;

    .line 819
    const-string v0, "No implementation in startKeepaliveResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .line 735
    const-string v0, "No implementation in startLceServiceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 794
    const-string v0, "No implementation in startNetworkScanResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 922
    const-string v0, "No implementation in startNetworkScanResponse_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 740
    const-string v0, "No implementation in stopDtmfResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 799
    const-string v0, "No implementation in stopKeepaliveResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # Landroid/hardware/radio/V1_0/LceStatusInfo;

    .line 747
    const-string v0, "No implementation in stopLceServiceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 809
    const-string v0, "No implementation in stopNetworkScanResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 752
    const-string v0, "No implementation in supplyIccPin2ForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 757
    const-string v0, "No implementation in supplyIccPinForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 762
    const-string v0, "No implementation in supplyIccPuk2ForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 767
    const-string v0, "No implementation in supplyIccPukForAppResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 774
    const-string v0, "No implementation in supplyNetworkDepersonalizationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 779
    const-string v0, "No implementation in switchWaitingOrHoldingAndActiveResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 784
    const-string v0, "No implementation in writeSmsToRuimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "arg1"    # I

    .line 789
    const-string v0, "No implementation in writeSmsToSimResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 790
    return-void
.end method
