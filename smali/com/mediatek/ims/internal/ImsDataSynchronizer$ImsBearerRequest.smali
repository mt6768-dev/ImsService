.class public Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
.super Ljava/lang/Object;
.source "ImsDataSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsBearerRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x46215451d42594eeL


# instance fields
.field private mAction:I

.field private mAid:I

.field private mCapability:Ljava/lang/String;

.field private mPhoneId:I

.field private mRequest:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "phoneId"    # I
    .param p4, "request"    # I
    .param p5, "capability"    # Ljava/lang/String;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    .line 591
    iput p2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    .line 592
    iput p3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    .line 593
    iput p4, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    .line 594
    iput-object p5, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    .line 595
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    return v0
.end method

.method public getAid()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    return v0
.end method

.method public getCapability()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    return v0
.end method

.method public getRequest()I
    .locals 1

    .line 610
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    const-string v1, " Request: EVENT_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 624
    :cond_1
    const-string v1, " Request: EVENT_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    nop

    .line 630
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Capability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
