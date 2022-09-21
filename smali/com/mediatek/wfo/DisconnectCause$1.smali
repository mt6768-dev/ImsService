.class Lcom/mediatek/wfo/DisconnectCause$1;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/DisconnectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/wfo/DisconnectCause;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/wfo/DisconnectCause;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    .local v0, "error":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 38
    .local v1, "subError":I
    new-instance v2, Lcom/mediatek/wfo/DisconnectCause;

    invoke-direct {v2, v0, v1}, Lcom/mediatek/wfo/DisconnectCause;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/DisconnectCause$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/wfo/DisconnectCause;
    .locals 1
    .param p1, "size"    # I

    .line 42
    new-array v0, p1, [Lcom/mediatek/wfo/DisconnectCause;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/DisconnectCause$1;->newArray(I)[Lcom/mediatek/wfo/DisconnectCause;

    move-result-object p1

    return-object p1
.end method
