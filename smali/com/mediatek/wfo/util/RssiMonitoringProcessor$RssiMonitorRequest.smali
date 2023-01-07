.class Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;
.super Ljava/lang/Object;
.source "RssiMonitoringProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/RssiMonitoringProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RssiMonitorRequest"
.end annotation


# instance fields
.field mCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mRequest:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/util/RssiMonitoringProcessor;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/RssiMonitoringProcessor;
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 48
    iput-object p1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;->this$0:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;->mRequest:Landroid/net/NetworkRequest;

    .line 50
    iput-object p3, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;->mCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 51
    return-void
.end method
