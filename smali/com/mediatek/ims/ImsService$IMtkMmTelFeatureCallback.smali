.class public interface abstract Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMtkMmTelFeatureCallback"
.end annotation


# virtual methods
.method public abstract newImsSmsInd([BLjava/lang/String;)V
.end method

.method public abstract newStatusReportInd([BLjava/lang/String;)V
.end method

.method public abstract notifyCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
.end method

.method public abstract notifyContextChanged(Landroid/content/Context;)V
.end method

.method public abstract notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
.end method

.method public abstract notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
.end method

.method public abstract sendSmsRsp(IIII)V
.end method

.method public abstract updateCapbilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
.end method
