.class Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
.super Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConferenceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4045
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoTerminate()V
    .locals 3

    .line 4062
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "onAutoTerminate()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4063
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 4064
    return-void
.end method

.method public onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 4
    .param p1, "confState"    # Landroid/telephony/ims/ImsConferenceState;

    .line 4049
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "onParticipantsUpdate()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4050
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4051
    return-void

    .line 4054
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4057
    goto :goto_0

    .line 4055
    :catch_0
    move-exception v0

    .line 4056
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x5

    const-string v3, "RuntimeException callSessionConferenceStateUpdated()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4058
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
