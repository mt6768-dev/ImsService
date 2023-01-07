.class public abstract Lcom/mediatek/wfo/IMwiService$Stub;
.super Landroid/os/Binder;
.source "IMwiService.java"

# interfaces
.implements Lcom/mediatek/wfo/IMwiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IMwiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IMwiService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IMwiService"

.field static final TRANSACTION_getWfcHandlerInterface:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.mediatek.wfo.IMwiService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IMwiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.mediatek.wfo.IMwiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IMwiService;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IMwiService;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IMwiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IMwiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/wfo/IMwiService;
    .locals 1

    .line 123
    sget-object v0, Lcom/mediatek/wfo/IMwiService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IMwiService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/wfo/IMwiService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/wfo/IMwiService;

    .line 113
    sget-object v0, Lcom/mediatek/wfo/IMwiService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IMwiService;

    if-nez v0, :cond_1

    .line 116
    if-eqz p0, :cond_0

    .line 117
    sput-object p0, Lcom/mediatek/wfo/IMwiService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IMwiService;

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "com.mediatek.wfo.IMwiService"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 59
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/mediatek/wfo/IMwiService$Stub;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v2

    .line 61
    .local v2, "_result":Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/mediatek/wfo/IWifiOffloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 63
    return v1
.end method
