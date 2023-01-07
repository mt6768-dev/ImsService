.class Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;
.super Lcom/mediatek/ims/internal/IMtkImsUt$Stub;
.source "MtkImsUtImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/feature/MtkImsUtImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkImsUtImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    .line 60
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXcapConflictErrorMessage()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->getXcapConflictErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportCFT()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->isSupportCFT()Z

    move-result v0

    return v0
.end method

.method public processECT(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->explicitCallTransfer(Landroid/os/Message;Landroid/os/Messenger;)V

    .line 104
    return-void
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public queryCallForwardInTimeSlot(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 80
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->queryCallForwardInTimeSlot(I)I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsUtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    new-instance v1, Lcom/mediatek/ims/feature/MtkImsUtListener;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/feature/MtkImsUtListener;-><init>(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->setListener(Lcom/mediatek/ims/feature/MtkImsUtListener;)V

    .line 64
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->setupXcapUserAgentString(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "enable"    # I
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .locals 6
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;->this$0:Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v0

    return v0
.end method
