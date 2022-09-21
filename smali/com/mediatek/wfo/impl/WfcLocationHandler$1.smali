.class Lcom/mediatek/wfo/impl/WfcLocationHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerDefaultNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 590
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 593
    const-string v0, "WfcLocationHandler"

    const-string v1, "NetworkCallback.onAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$302(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 595
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendEmptyMessage(I)Z

    .line 596
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 600
    const-string v0, "WfcLocationHandler"

    const-string v1, "NetworkCallback.onLost()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$302(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 602
    return-void
.end method
