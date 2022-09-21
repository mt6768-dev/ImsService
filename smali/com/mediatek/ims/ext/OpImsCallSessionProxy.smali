.class public interface abstract Lcom/mediatek/ims/ext/OpImsCallSessionProxy;
.super Ljava/lang/Object;
.source "OpImsCallSessionProxy.java"


# virtual methods
.method public abstract broadcastForNotRingingMtIfRequired(ZIILjava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract cancelDeviceSwitch(Ljava/lang/Object;)V
.end method

.method public abstract deviceSwitch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
.end method

.method public abstract handleCallStartFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/Object;Z)Z
.end method

.method public abstract handleDeviceSwitchResponse(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)V
.end method

.method public abstract handleDeviceSwitchResult(Ljava/lang/String;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)Z
.end method

.method public abstract handleHangup()Z
.end method

.method public abstract isDeviceSwitching()Z
.end method

.method public abstract isValidVtDialString(Ljava/lang/String;)Z
.end method

.method public abstract normalizeVtDialString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendCallEventWithRat(Landroid/os/Bundle;)V
.end method
