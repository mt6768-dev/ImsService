.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

.field final synthetic val$imsNotification:Landroid/telephony/ims/ImsSuppServiceNotification;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    .line 2839
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->val$imsNotification:Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2843
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->val$imsNotification:Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 2846
    :cond_0
    return-void
.end method
