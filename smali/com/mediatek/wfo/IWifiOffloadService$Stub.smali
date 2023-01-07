.class public abstract Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadService.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IWifiOffloadService"

.field static final TRANSACTION_factoryReset:I = 0xb

.field static final TRANSACTION_getDisconnectCause:I = 0x4

.field static final TRANSACTION_getMccMncAllowList:I = 0xa

.field static final TRANSACTION_getRatType:I = 0x3

.field static final TRANSACTION_isWifiConnected:I = 0x7

.field static final TRANSACTION_registerForHandoverEvent:I = 0x1

.field static final TRANSACTION_setEpdgFqdn:I = 0x5

.field static final TRANSACTION_setMccMncAllowList:I = 0x9

.field static final TRANSACTION_setWifiOff:I = 0xc

.field static final TRANSACTION_unregisterForHandoverEvent:I = 0x2

.field static final TRANSACTION_updateCallState:I = 0x6

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 518
    sget-object v0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/wfo/IWifiOffloadService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 508
    sget-object v0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_1

    .line 511
    if-eqz p0, :cond_0

    .line 512
    sput-object p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 513
    const/4 v0, 0x1

    return v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 215
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setWifiOff()Z

    move-result v1

    .line 217
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v2

    .line 208
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->factoryReset()V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v2

    .line 198
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getMccMncAllowList(I)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 204
    return v2

    .line 188
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setMccMncAllowList([Ljava/lang/String;)Z

    move-result v3

    .line 192
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return v2

    .line 177
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateRadioState(II)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v2

    .line 169
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->isWifiConnected()Z

    move-result v1

    .line 171
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return v2

    .line 154
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateCallState(IIII)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v2

    .line 141
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 148
    .local v1, "_arg2":Z
    :cond_0
    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setEpdgFqdn(ILjava/lang/String;Z)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    return v2

    .line 125
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v4

    .line 129
    .local v4, "_result":Lcom/mediatek/wfo/DisconnectCause;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v4, p3, v2}, Lcom/mediatek/wfo/DisconnectCause;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_0
    return v2

    .line 115
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getRatType(I)I

    move-result v3

    .line 119
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v2

    .line 106
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v1

    .line 109
    .local v1, "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v2

    .line 97
    .end local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v2

    .line 92
    .end local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
