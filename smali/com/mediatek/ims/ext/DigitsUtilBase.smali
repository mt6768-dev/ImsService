.class public Lcom/mediatek/ims/ext/DigitsUtilBase;
.super Ljava/lang/Object;
.source "DigitsUtilBase.java"

# interfaces
.implements Lcom/mediatek/ims/ext/DigitsUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelUssiFrom(Ljava/lang/Object;Landroid/telephony/ims/ImsCallProfile;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsRILAdapter"    # Ljava/lang/Object;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "response"    # Landroid/os/Message;

    .line 60
    return-void
.end method

.method public hasDialFrom(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isRejectedByOthers(Lcom/mediatek/ims/SipMessage;)Z
    .locals 1
    .param p1, "msg"    # Lcom/mediatek/ims/SipMessage;

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public putMtToNumber(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "toNumber"    # Ljava/lang/String;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 52
    return-void
.end method

.method public sendUssiFrom(Ljava/lang/Object;Landroid/telephony/ims/ImsCallProfile;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsRILAdapter"    # Ljava/lang/Object;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "action"    # I
    .param p4, "ussi"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 57
    return-void
.end method

.method public startFrom(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZLjava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .param p5, "imsRILAdapter"    # Ljava/lang/Object;
    .param p6, "response"    # Landroid/os/Message;

    .line 49
    return-void
.end method

.method public updateCallExtras(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "destCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "srcCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 63
    return-void
.end method
