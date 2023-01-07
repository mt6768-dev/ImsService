.class Lcom/mediatek/ims/MtkImsCallSessionProxy$1;
.super Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;
.source "MtkImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 69
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .locals 1
    .param p1, "isAprroved"    # Z

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->approveEccRedial(Z)V

    .line 109
    return-void
.end method

.method public callTerminated()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 119
    return-void
.end method

.method public close()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->close()V

    .line 74
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getHeaderCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0
.end method

.method public removeLastParticipant()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->removeLastParticipant()V

    .line 129
    return-void
.end method

.method public resume()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->resume()V

    .line 114
    return-void
.end method

.method public setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 99
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setImsCallMode(I)V

    .line 124
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 89
    return-void
.end method
