.class public interface abstract Lcom/mediatek/wfo/ril/MwiCommandsInterface;
.super Ljava/lang/Object;
.source "MwiCommandsInterface.java"


# virtual methods
.method public abstract notifyEPDGScreenState(ILandroid/os/Message;)V
.end method

.method public abstract registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWfcPdnStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPdnError(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPdnHandover(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPdnOos(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPdnRoveOut(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setEmergencyAddressId(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setWifiPingResult(IIILandroid/os/Message;)V
.end method

.method public abstract setWifiSignalLevel(IILandroid/os/Message;)V
.end method

.method public abstract unregisterRequestGeoLocation(Landroid/os/Handler;)V
.end method

.method public abstract unregisterRssiThresholdChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWfcPdnStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiLock(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPdnActivate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPdnError(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPdnHandover(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPdnOos(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPdnRoveOut(Landroid/os/Handler;)V
.end method

.method public abstract unregisterWifiPingRequest(Landroid/os/Handler;)V
.end method

.method public abstract unrgisterNattKeepAliveChanged(Landroid/os/Handler;)V
.end method
