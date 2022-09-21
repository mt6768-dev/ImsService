.class Lcom/mediatek/ims/internal/ImsVTProvider$2;
.super Ljava/lang/Object;
.source "ImsVTProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 487
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceOrientation, apply orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v1, v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v1, v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/VTSource;->setDeviceOrientation(I)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$2;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v1, v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDeviceOrientation(II)I

    .line 493
    return-void
.end method
