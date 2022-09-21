.class public Lcom/mediatek/ims/ril/DefaultOpImsRIL;
.super Ljava/lang/Object;
.source "DefaultOpImsRIL.java"

# interfaces
.implements Lcom/mediatek/ims/ril/OpImsCommandsInterface;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public cancelDeviceSwitch(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 76
    return-void
.end method

.method public cancelUssiFrom(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 66
    return-void
.end method

.method public deviceSwitch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 71
    return-void
.end method

.method public dialFrom(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .line 56
    return-void
.end method

.method public sendUssiFrom(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "ussi"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 61
    return-void
.end method
