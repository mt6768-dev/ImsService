.class public abstract Lcom/mediatek/wfo/ril/MwiBaseCommands;
.super Ljava/lang/Object;
.source "MwiBaseCommands.java"

# interfaces
.implements Lcom/mediatek/wfo/ril/MwiCommandsInterface;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneId:I

.field protected mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

.field protected mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

.field protected mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mWifiLockRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

.field protected mWifiPingRequestRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    .line 71
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mPhoneId:I

    .line 73
    return-void
.end method


# virtual methods
.method public registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 187
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 189
    return-void
.end method

.method public registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 134
    return-void
.end method

.method public registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 79
    return-void
.end method

.method public registerWfcPdnStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 145
    return-void
.end method

.method public registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 178
    return-void
.end method

.method public registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 90
    return-void
.end method

.method public registerWifiPdnError(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 101
    return-void
.end method

.method public registerWifiPdnHandover(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 112
    return-void
.end method

.method public registerWifiPdnOos(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 167
    return-void
.end method

.method public registerWifiPdnRoveOut(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 123
    return-void
.end method

.method public registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 154
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 156
    return-void
.end method

.method public unregisterRequestGeoLocation(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 138
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 139
    return-void
.end method

.method public unregisterRssiThresholdChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method public unregisterWfcPdnStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 149
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 150
    return-void
.end method

.method public unregisterWifiLock(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 182
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 183
    return-void
.end method

.method public unregisterWifiPdnActivate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 95
    return-void
.end method

.method public unregisterWifiPdnError(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 105
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method public unregisterWifiPdnHandover(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 117
    return-void
.end method

.method public unregisterWifiPdnOos(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 171
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 172
    return-void
.end method

.method public unregisterWifiPdnRoveOut(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 128
    return-void
.end method

.method public unregisterWifiPingRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 160
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 161
    return-void
.end method

.method public unrgisterNattKeepAliveChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 193
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiBaseCommands;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 194
    return-void
.end method
