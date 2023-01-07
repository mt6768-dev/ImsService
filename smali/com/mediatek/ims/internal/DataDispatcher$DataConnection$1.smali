.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setFirewallInterfaceChain(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

.field final synthetic val$isAdded:Z


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 947
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iput-boolean p3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->val$isAdded:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 950
    :try_start_0
    invoke-static {}, Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;->getService()Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;

    move-result-object v0

    .line 951
    .local v0, "agent":Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;
    if-nez v0, :cond_0

    .line 952
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v2, "agnet is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 953
    return-void

    .line 955
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->val$isAdded:Z

    if-eqz v1, :cond_1

    const-string v1, "allow"

    goto :goto_0

    :cond_1
    const-string v1, "deny"

    .line 956
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    const-string v2, "netdagent firewall set_interface_for_chain_rule %s dozable %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 958
    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 956
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 960
    invoke-interface {v0, v2}, Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;->dispatchNetdagentCmd(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    nop

    .end local v0    # "agent":Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;
    .end local v1    # "rule":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    goto :goto_1

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFirewallInterfaceChain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 964
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
