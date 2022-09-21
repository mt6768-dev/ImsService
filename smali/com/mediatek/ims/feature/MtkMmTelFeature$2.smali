.class Lcom/mediatek/ims/feature/MtkMmTelFeature$2;
.super Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
.source "MtkMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/feature/MtkMmTelFeature;->queryCapabilityConfiguration(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

.field final synthetic val$capability:I

.field final synthetic val$radioTech:I

.field final synthetic val$returnValue:[I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;[III)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 385
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    iput-object p5, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$returnValue:[I

    iput p6, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$capability:I

    iput p7, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$radioTech:I

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public getFeatureValueReceived(I)V
    .locals 4
    .param p1, "value"    # I

    .line 388
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$returnValue:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$capability:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tech "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$radioTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "enable? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;->val$returnValue:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->access$100(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 391
    return-void
.end method
