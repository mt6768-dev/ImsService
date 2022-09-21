.class public interface abstract Lcom/mediatek/ims/ril/ImsCommandsInterface;
.super Ljava/lang/Object;
.source "ImsCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    }
.end annotation


# virtual methods
.method public abstract accept()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract accept(Landroid/os/Message;)V
.end method

.method public abstract acceptVideoCall(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract acceptVideoCall(IILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract approveEccRedial(IILandroid/os/Message;)V
.end method

.method public abstract cancelPendingUssi(Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
.end method

.method public abstract deregisterIms(Landroid/os/Message;)V
.end method

.method public abstract deregisterImsWithCause(ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract forceHangup(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract forceHangup(II)V
.end method

.method public abstract forceHangup(ILandroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCOLP(Landroid/os/Message;)V
.end method

.method public abstract getCOLR(Landroid/os/Message;)V
.end method

.method public abstract getImsCfgFeatureValue(IILandroid/os/Message;)V
.end method

.method public abstract getImsCfgProvisionValue(ILandroid/os/Message;)V
.end method

.method public abstract getImsCfgResourceCapValue(ILandroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(ILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;
.end method

.method public abstract getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getXcapStatus(Landroid/os/Message;)V
.end method

.method public abstract hangup(IILandroid/os/Message;)V
.end method

.method public abstract hangup(ILandroid/os/Message;)V
.end method

.method public abstract hangupAllCall(Landroid/os/Message;)V
.end method

.method public abstract hold(ILandroid/os/Message;)V
.end method

.method public abstract inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
.end method

.method public abstract merge(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract notifyImsServiceReady()V
.end method

.method public abstract pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract querySsacStatus(Landroid/os/Message;)V
.end method

.method public abstract queryVopsStatus(Landroid/os/Message;)V
.end method

.method public abstract registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForBearerState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallRatIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGetProvisionComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsCfgConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsCfgConfigLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsCfgFeatureChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDialog(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsEventPackage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteMsgWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMultiImsCount(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttAudioIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSipHeaderInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSsacStateInd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVolteSubscription(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract reject(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract reject(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestExitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract resetSuppServ(Landroid/os/Message;)V
.end method

.method public abstract responseBearerStateConfirm(IIII)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract responseBearerStateConfirm(IIILandroid/os/Message;)V
.end method

.method public abstract resume(ILandroid/os/Message;)V
.end method

.method public abstract runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendRttModifyRequest(IILandroid/os/Message;)V
.end method

.method public abstract sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
.end method

.method public abstract sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendWfcProfileInfo(IILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendWfcProfileInfo(ILandroid/os/Message;)V
.end method

.method public abstract setCLIP(ILandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCOLP(ILandroid/os/Message;)V
.end method

.method public abstract setCOLR(ILandroid/os/Message;)V
.end method

.method public abstract setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
.end method

.method public abstract setCallIndication(IIII)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setCallIndication(IIIILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setImsBearerNotification(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setImsBearerNotification(ILandroid/os/Message;)V
.end method

.method public abstract setImsCallMode(ILandroid/os/Message;)V
.end method

.method public abstract setImsCfg([IILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setImsCfg([ILandroid/os/Message;)V
.end method

.method public abstract setImsCfgFeatureValue(IIIILandroid/os/Message;)V
.end method

.method public abstract setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setImsRegistrationReport(ILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setImsRegistrationReport(Landroid/os/Message;)V
.end method

.method public abstract setImsRtpInfo(IIILandroid/os/Message;)V
.end method

.method public abstract setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setRttMode(ILandroid/os/Message;)V
.end method

.method public abstract setRttModifyRequestResponse(IILandroid/os/Message;)V
.end method

.method public abstract setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceDomainPreference(ILandroid/os/Message;)V
.end method

.method public abstract setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V
.end method

.method public abstract startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startConference([Ljava/lang/String;IZLandroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract swap(Landroid/os/Message;)V
.end method

.method public abstract terminate(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract terminate(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toggleRttAudioIndication(IILandroid/os/Message;)V
.end method

.method public abstract turnOffIms(ILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract turnOffIms(Landroid/os/Message;)V
.end method

.method public abstract turnOffImsVideo(Landroid/os/Message;)V
.end method

.method public abstract turnOffRcsUa(Landroid/os/Message;)V
.end method

.method public abstract turnOffVilte(Landroid/os/Message;)V
.end method

.method public abstract turnOffViwifi(Landroid/os/Message;)V
.end method

.method public abstract turnOffVolte(Landroid/os/Message;)V
.end method

.method public abstract turnOffWfc(Landroid/os/Message;)V
.end method

.method public abstract turnOnIms(ILandroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract turnOnIms(Landroid/os/Message;)V
.end method

.method public abstract turnOnImsVideo(Landroid/os/Message;)V
.end method

.method public abstract turnOnRcsUa(Landroid/os/Message;)V
.end method

.method public abstract turnOnVilte(Landroid/os/Message;)V
.end method

.method public abstract turnOnViwifi(Landroid/os/Message;)V
.end method

.method public abstract turnOnVolte(Landroid/os/Message;)V
.end method

.method public abstract turnOnWfc(Landroid/os/Message;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSI(Landroid/os/Handler;)V
.end method

.method public abstract unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract unregisterForBearerInit(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForBearerState(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallAdditionalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallProgressIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallRatIndication(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEconfResult(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEctResult(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForGetProvisionComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsCfgConfigChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsCfgConfigLoaded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsCfgFeatureChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDataInfoNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDeregisterComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDialog(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDisableComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDisableStart(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsEnableComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsEnableStart(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsEventPackage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsRTPInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsRedialEccInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteMsgWaiting(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMultiImsCount(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOnEnterECBM(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOnExitECBM(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOnNoECBM(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttAudioIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttCapabilityIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttModifyResponse(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttTextReceive(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSipHeaderInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSpeechCodecInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSsacStateInd(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVolteSettingChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVolteSubscription(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForXuiInfo(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIncomingCallIndication(Landroid/os/Handler;)V
.end method

.method public abstract vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method
