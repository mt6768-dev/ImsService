.class Lcom/mediatek/ims/feature/MtkMmTelFeature$3;
.super Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
.source "MtkMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/feature/MtkMmTelFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

.field final synthetic val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field final synthetic val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 435
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    iput-object p5, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    iput-object p6, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public setFeatureValueReceived(I)V
    .locals 4
    .param p1, "value"    # I

    .line 438
    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 443
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    const/4 v3, -0x1

    .line 442
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 445
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;->this$0:Lcom/mediatek/ims/feature/MtkMmTelFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities - setFeatureValueReceived with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->access$100(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V

    .line 449
    :cond_2
    return-void
.end method
