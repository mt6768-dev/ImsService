.class public Lcom/mediatek/wfo/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/wfo/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCause:I

.field private subErrorCause:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/mediatek/wfo/DisconnectCause$1;

    invoke-direct {v0}, Lcom/mediatek/wfo/DisconnectCause$1;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "subError"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    .line 12
    iput p2, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    return v0
.end method

.method public getSubErrorCause()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisconnectCause {errorCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subErrorCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 30
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
.end method
