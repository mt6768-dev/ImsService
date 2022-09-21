.class final Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;
.super Ljava/lang/Object;
.source "ImsAdapter.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsaProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsAdapter;

    .line 332
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 336
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "IMSA HIDL serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$100()Lcom/mediatek/ims/ImsAdapter;

    move-result-object v0

    .line 339
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$100()Lcom/mediatek/ims/ImsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-static {v2}, Lcom/mediatek/ims/ImsAdapter;->access$000(Lcom/mediatek/ims/ImsAdapter;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ImsAdapter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 338
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ImsAdapter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    return-void
.end method
