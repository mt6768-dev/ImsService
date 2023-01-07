.class public final synthetic Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/AsyncResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$0:Lcom/mediatek/ims/ImsService;

    iput p2, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$1:I

    iput-object p3, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$2:Landroid/os/AsyncResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$0:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$1:I

    iget-object v2, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$ZSU0zi1_CR_tVhNgJwIx7D2DHwU;->f$2:Landroid/os/AsyncResult;

    check-cast p1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/ims/ImsService;->lambda$notifyRedirectIncomingCall$6$ImsService(ILandroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V

    return-void
.end method
