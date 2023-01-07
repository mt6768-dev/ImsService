.class public Lcom/mediatek/ims/ril/RadioIndicationImpl;
.super Lcom/mediatek/ims/ril/RadioIndicationBase;
.source "RadioIndicationImpl.java"


# instance fields
.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 13
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioIndicationBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 15
    return-void
.end method


# virtual methods
.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 29
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 31
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 33
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 36
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 47
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 49
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 54
    :cond_0
    return-void
.end method

.method protected getRadioStateFromInt(I)I
    .locals 3
    .param p1, "stateInt"    # I

    .line 90
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "state":I
    goto :goto_0

    .line 101
    .end local v0    # "state":I
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    const/4 v0, 0x2

    .line 96
    .restart local v0    # "state":I
    goto :goto_0

    .line 92
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x0

    .line 93
    .restart local v0    # "state":I
    nop

    .line 103
    :goto_0
    return v0
.end method

.method public radioStateChanged(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "radioState"    # I

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/RadioIndicationImpl;->getRadioStateFromInt(I)I

    move-result v0

    .line 70
    .local v0, "newState":I
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(I)V

    .line 75
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyRadioStateChanged(I)V

    .line 76
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioIndicationImpl;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 81
    return-void
.end method
