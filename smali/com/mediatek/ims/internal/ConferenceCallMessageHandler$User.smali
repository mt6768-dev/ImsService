.class public Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
.super Ljava/lang/Object;
.source "ConferenceCallMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "User"
.end annotation


# instance fields
.field private mConnectionIndex:I

.field private mDisplayText:Ljava/lang/String;

.field private mEndPoint:Ljava/lang/String;

.field private mEntity:Ljava/lang/String;

.field private mIndex:I

.field private mSipTelUri:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    .line 101
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->this$0:Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "disconnected"

    iput-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mStatus:Ljava/lang/String;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mConnectionIndex:I

    return-void
.end method


# virtual methods
.method public getConnectionIndex()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mConnectionIndex:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mIndex:I

    return v0
.end method

.method public getSipTelUri()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mSipTelUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 173
    iput p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mConnectionIndex:I

    .line 174
    return-void
.end method

.method setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mDisplayText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method setEndPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "endPoint"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mEndPoint:Ljava/lang/String;

    .line 117
    return-void
.end method

.method setEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mEntity:Ljava/lang/String;

    .line 126
    return-void
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 164
    iput p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mIndex:I

    .line 165
    return-void
.end method

.method setSipTelUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mSipTelUri:Ljava/lang/String;

    .line 135
    return-void
.end method

.method setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->mStatus:Ljava/lang/String;

    .line 155
    return-void
.end method
