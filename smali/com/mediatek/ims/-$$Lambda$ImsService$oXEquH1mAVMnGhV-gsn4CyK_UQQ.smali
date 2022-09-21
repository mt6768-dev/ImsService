.class public final synthetic Lcom/mediatek/ims/-$$Lambda$ImsService$oXEquH1mAVMnGhV-gsn4CyK_UQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$oXEquH1mAVMnGhV-gsn4CyK_UQQ;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$oXEquH1mAVMnGhV-gsn4CyK_UQQ;->f$0:Landroid/telephony/ims/ImsReasonInfo;

    check-cast p1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsService;->lambda$updateImsRegstrationEx$2(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method
