.class Lcom/mediatek/ims/MtkSuppServExt$2$1;
.super Ljava/lang/Object;
.source "MtkSuppServExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/MtkSuppServExt$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/MtkSuppServExt$2;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkSuppServExt$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/MtkSuppServExt$2;

    .line 609
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$2$1;->this$1:Lcom/mediatek/ims/MtkSuppServExt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$2$1;->this$1:Lcom/mediatek/ims/MtkSuppServExt$2;

    iget-object v0, v0, Lcom/mediatek/ims/MtkSuppServExt$2;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v0}, Lcom/mediatek/ims/MtkSuppServExt;->access$900(Lcom/mediatek/ims/MtkSuppServExt;)V

    .line 613
    return-void
.end method
