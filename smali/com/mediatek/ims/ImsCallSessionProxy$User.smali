.class public Lcom/mediatek/ims/ImsCallSessionProxy$User;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field public mDisplayText:Ljava/lang/String;

.field public mEndPoint:Ljava/lang/String;

.field public mEntity:Ljava/lang/String;

.field public mStatus:Ljava/lang/String;

.field public mUserAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const-string v0, "disconnected"

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    return-void
.end method
