.class public abstract Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
.super Ljava/lang/Object;
.source "DefaultConferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/DefaultConferenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoTerminate()V
    .locals 0

    .line 49
    return-void
.end method

.method public onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "confState"    # Landroid/telephony/ims/ImsConferenceState;

    .line 48
    return-void
.end method
