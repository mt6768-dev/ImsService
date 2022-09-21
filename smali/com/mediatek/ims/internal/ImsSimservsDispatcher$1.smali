.class Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;
.super Ljava/lang/Thread;
.source "ImsSimservsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsSimservsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 45
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->this$0:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 49
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->this$0:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    new-instance v1, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;-><init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;)V

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$002(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;

    .line 67
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 68
    return-void
.end method
