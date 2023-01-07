.class Lcom/mediatek/ims/MtkSuppServExt$1;
.super Landroid/telephony/PhoneStateListener;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/MtkSuppServExt;->initPhoneStateListener(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 436
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 439
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    const/4 v2, 0x0

    const-string v3, "Data reg state in service."

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    .line 442
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$800(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 443
    nop

    .line 447
    .end local v0    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    :goto_0
    return-void
.end method
