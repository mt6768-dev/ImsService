.class public Lcom/mediatek/ims/ext/OpImsCallSessionProxyBase;
.super Ljava/lang/Object;
.source "OpImsCallSessionProxyBase.java"

# interfaces
.implements Lcom/mediatek/ims/ext/OpImsCallSessionProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastForNotRingingMtIfRequired(ZIILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "sipSessionProgress"    # Z
    .param p2, "state"    # I
    .param p3, "serviceId"    # I
    .param p4, "callNumber"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .line 51
    return-void
.end method

.method public cancelDeviceSwitch(Ljava/lang/Object;)V
    .locals 0
    .param p1, "imsRILAdapter"    # Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public deviceSwitch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsRILAdapter"    # Ljava/lang/Object;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 54
    return-void
.end method

.method public getImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p1, "sipMsg"    # Lcom/mediatek/ims/SipMessage;

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleCallStartFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "imsCallSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "imsRILAdapter"    # Ljava/lang/Object;
    .param p3, "hasHoldingCall"    # Z

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public handleDeviceSwitchResponse(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "imsCallSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 59
    return-void
.end method

.method public handleDeviceSwitchResult(Ljava/lang/String;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "imsCallSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "result"    # Landroid/os/AsyncResult;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public handleHangup()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceSwitching()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isValidVtDialString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public normalizeVtDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 65
    return-object p1
.end method

.method public sendCallEventWithRat(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 72
    return-void
.end method
