.class public Lcom/mediatek/ims/ril/ImsRadioResponseBase;
.super Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse$Stub;
.source "ImsRadioResponseBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 59
    const-string v0, "No implementation in acknowledgeLastIncomingCdmaSmsExResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 54
    const-string v0, "No implementation in acknowledgeLastIncomingGsmSmsExResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public cancelUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 71
    const-string v0, "No implementation in cancelUssiResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public conferenceDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 91
    const-string v0, "No implementation in conferenceDialResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public controlCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 121
    const-string v0, "No implementation in controlCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public controlImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 141
    const-string v0, "No implementation in controlImsConferenceCallMemberResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public dialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 101
    const-string v0, "No implementation in dialWithSipUriResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public eccRedialApproveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 236
    const-string v0, "No implementation in eccRedialApproveResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public forceReleaseCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 106
    const-string v0, "No implementation in forceReleaseCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 303
    const-string v0, "No implementation in getColpResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I

    .line 298
    const-string v0, "No implementation in getColrResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public getImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 201
    const-string v0, "No implementation in getImsCfgFeatureValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public getImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # Ljava/lang/String;

    .line 211
    const-string v0, "No implementation in getImsCfgProvisionValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public getImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # I

    .line 216
    const-string v0, "No implementation in getImsCfgResourceCapValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public getProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 111
    const-string v0, "No implementation in getProvisionValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "vdp"    # I

    .line 261
    const-string v0, "No implementation in getImsVoiceDomainPreferenceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public getXcapStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 76
    const-string v0, "No implementation in getXcapStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 116
    const-string v0, "No implementation in hangupAllResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 316
    const-string v0, "No implementation in hangupWithReasonResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public imsBearerStateConfirmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 126
    const-string v0, "No implementation in imsBearerStateConfirm"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public imsDeregNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 96
    const-string v0, "No implementation in deregisterImsResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public imsEctCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 136
    const-string v0, "No implementation in imsEctCommandResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public pullCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 186
    const-string v0, "No implementation in pullCallResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    const-string v0, "No implementation in queryCallForwardInTimeSlotStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public querySsacStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
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

    .line 365
    .local p2, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "No implementation in querySsacStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public queryVopsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "vops"    # I

    .line 342
    const-string v0, "No implementation in queryVopsStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public resetSuppServResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 81
    const-string v0, "No implementation in resetSuppServResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 381
    return-void
.end method

.method public rttModifyRequestResponseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 327
    const-string v0, "No implementation in rttModifyRequestResponseResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "No implementation in runGbaAuthenticationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public sendImsSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;

    .line 66
    const-string v0, "No implementation in sendImsSmsExResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public sendRttModifyRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 337
    const-string v0, "No implementation in sendRttModifyRequestResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public sendRttTextResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 332
    const-string v0, "No implementation in sendRttTextResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public sendUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 146
    const-string v0, "No implementation in sendUssiResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setCallAdditionalInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 375
    const-string v0, "No implementation in setCallAdditionalInfoResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 266
    const-string v0, "No implementation in setCallForwardInTimeSlotResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 151
    const-string v0, "No implementation in setCallIndicationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 311
    const-string v0, "No implementation in setClipResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 288
    const-string v0, "No implementation in setColpResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 283
    const-string v0, "No implementation in setColrResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setImsBearerNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 131
    const-string v0, "No implementation in setImsBearerNotificationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setImsCallModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 357
    const-string v0, "No implementation in setImsCallModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public setImsCallStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 156
    const-string v0, "No implementation in setImsCallStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 196
    const-string v0, "No implementation in setImsCfgFeatureValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 206
    const-string v0, "No implementation in setImsCfgProvisionValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setImsEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 161
    const-string v0, "No implementation in setImsEnableResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setImsRegistrationReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 251
    const-string v0, "No implementation in setImsRegistrationReportResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setImsRtpReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 166
    const-string v0, "No implementation in setImsRtpReportResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setImsVideoEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 171
    const-string v0, "No implementation in setImsVideoEnableResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setImscfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 176
    const-string v0, "No implementation in setImscfgResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setModemImsCfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "results"    # Ljava/lang/String;

    .line 181
    const-string v0, "No implementation in setModemImsCfgResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 191
    const-string v0, "No implementation in setProvisionValueResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setRttModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 322
    const-string v0, "No implementation in setRttModeResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public setSipHeaderReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 352
    const-string v0, "No implementation in setSipHeaderReportResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setSipHeaderResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 347
    const-string v0, "No implementation in setSipHeaderResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 362
    return-void
.end method

.method public setVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 256
    const-string v0, "No implementation in setImsVoiceDomainPreferenceResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setWfcProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 221
    const-string v0, "No implementation in setWfcProfileResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setupXcapUserAgentStringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 86
    const-string v0, "No implementation in setupXcapUserAgentStringResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public toggleRttAudioIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 370
    const-string v0, "No implementation in toggleRttAudioIndicationResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public updateImsRegistrationStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 226
    const-string v0, "No implementation in updateImsRegistrationStatusResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public videoCallAcceptResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 231
    const-string v0, "No implementation in videoCallAcceptResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public vtDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 241
    const-string v0, "No implementation in vtDialResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public vtDialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 246
    const-string v0, "No implementation in vtDialWithSipUriResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRadioResponseBase;->riljLoge(Ljava/lang/String;)V

    .line 247
    return-void
.end method
