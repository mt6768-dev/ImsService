.class public Lcom/mediatek/ims/ril/RadioIndicationBase;
.super Landroid/hardware/radio/V1_4/IRadioIndication$Stub;
.source "RadioIndicationBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z
    .param p3, "arg2"    # Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 69
    const-string v0, "No implementation in callRing"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public callStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 74
    const-string v0, "No implementation in callStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public carrierInfoForImsiEncryption(I)V
    .locals 1
    .param p1, "type"    # I

    .line 303
    const-string v0, "No implementation in carrierInfoForImsiEncryption"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    .line 79
    const-string v0, "No implementation in cdmaCallWaiting"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    .line 84
    const-string v0, "No implementation in cdmaInfoRec"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 89
    const-string v0, "No implementation in cdmaNewSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 94
    const-string v0, "No implementation in cdmaOtaProvisionStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 99
    const-string v0, "No implementation in cdmaPrlChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public cdmaRuimSmsStorageFull(I)V
    .locals 1
    .param p1, "type"    # I

    .line 104
    const-string v0, "No implementation in cdmaRuimSmsStorageFull"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 109
    const-string v0, "No implementation in cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public cellInfoList(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    const-string v0, "No implementation in cellInfoList"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public cellInfoList_1_2(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    const-string v0, "No implementation in cellInfoList_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public cellInfoList_1_4(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    const-string v0, "No implementation in cellInfoList_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public currentEmergencyNumberList(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p2, "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    const-string v0, "No implementation in currentEmergencyNumberList"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lce"    # Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 345
    const-string v0, "No implementation in currentLinkCapacityEstimate"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    const-string v0, "No implementation in currentPhysicalChannelConfigs"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    const-string v0, "No implementation in currentPhysicalChannelConfigs_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 119
    const-string v0, "No implementation in currentSignalStrength"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 321
    const-string v0, "No implementation in currentSignalStrength_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 1
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_4/SignalStrength;

    .line 399
    const-string v0, "No implementation in currentSignalStrength_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public dataCallListChanged(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    const-string v0, "No implementation in dataCallListChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public dataCallListChanged_1_4(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    const-string v0, "No implementation in dataCallListChanged_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 131
    const-string v0, "No implementation in enterEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "type"    # I

    .line 136
    const-string v0, "No implementation in exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public hardwareConfigChanged(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    const-string v0, "No implementation in hardwareConfigChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 146
    const-string v0, "No implementation in imsNetworkStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public indicateRingbackTone(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z

    .line 151
    const-string v0, "No implementation in indicateRingbackTone"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "status"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;

    .line 298
    const-string v0, "No implementation in keepaliveStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 156
    const-string v0, "No implementation in lceData"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 161
    const-string v0, "No implementation in modemReset"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_1/NetworkScanResult;

    .line 308
    const-string v0, "No implementation in networkScanResult"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 369
    const-string v0, "No implementation in networkScanResult_1_2"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .locals 1
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_4/NetworkScanResult;

    .line 384
    const-string v0, "No implementation in networkScanResult_1_4"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public networkStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 166
    const-string v0, "No implementation in networkStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public newBroadcastSms(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newBroadcastSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public newSms(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSms"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public newSmsOnSim(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 181
    const-string v0, "No implementation in newSmsOnSim"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public newSmsStatusReport(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "No implementation in newSmsStatusReport"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;J)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "arg2"    # J

    .line 191
    const-string v0, "No implementation in nitzTimeReceived"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    .line 198
    const-string v0, "No implementation in onSupplementaryServiceIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .line 203
    const-string v0, "No implementation in onUssd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/PcoDataInfo;

    .line 208
    const-string v0, "No implementation in pcoData"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 213
    const-string v0, "No implementation in radioCapabilityIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 218
    const-string v0, "No implementation in radioStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 1
    .param p1, "type"    # I

    .line 223
    const-string v0, "No implementation in resendIncallMute"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 228
    const-string v0, "No implementation in restrictedStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public rilConnected(I)V
    .locals 1
    .param p1, "type"    # I

    .line 233
    const-string v0, "No implementation in rilConnected"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 406
    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SimRefreshResult;

    .line 238
    const-string v0, "No implementation in simRefresh"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public simSmsStorageFull(I)V
    .locals 1
    .param p1, "type"    # I

    .line 243
    const-string v0, "No implementation in simSmsStorageFull"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 248
    const-string v0, "No implementation in simStatusChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 253
    const-string v0, "No implementation in srvccStateNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 258
    const-string v0, "No implementation in stkCallControlAlphaNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # J

    .line 263
    const-string v0, "No implementation in stkCallSetup"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 268
    const-string v0, "No implementation in stkEventNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 273
    const-string v0, "No implementation in stkProactiveCommand"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 1
    .param p1, "type"    # I

    .line 278
    const-string v0, "No implementation in stkSessionEnd"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Z

    .line 283
    const-string v0, "No implementation in subscriptionStatusChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 288
    const-string v0, "No implementation in suppSvcNotify"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # I

    .line 293
    const-string v0, "No implementation in voiceRadioTechChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/RadioIndicationBase;->riljLoge(Ljava/lang/String;)V

    .line 294
    return-void
.end method
