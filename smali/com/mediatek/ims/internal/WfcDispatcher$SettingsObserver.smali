.class Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/WfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/WfcDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/WfcDispatcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 171
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 173
    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;

    .line 170
    invoke-direct {p0}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->register()V

    return-void
.end method

.method private register()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$300(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void
.end method

.method private unregister()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$300(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 187
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 191
    invoke-static {}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$200()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 193
    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$300(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 192
    const-string v2, "wfc_aid_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$402(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive AID changed from Setting, AID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$400(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$SettingsObserver;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$100(Lcom/mediatek/ims/internal/WfcDispatcher;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :cond_0
    return-void
.end method
