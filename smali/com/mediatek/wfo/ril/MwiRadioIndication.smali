.class public Lcom/mediatek/wfo/ril/MwiRadioIndication;
.super Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication$Stub;
.source "MwiRadioIndication.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p2, "phoneId"    # I

    .line 11
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication$Stub;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    .line 13
    iput p2, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mPhoneId:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MwiRadioIndication, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private convertArrayListToIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 184
    .local p1, "input":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 185
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 186
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onLocationRequest(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc08

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLog(I)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 100
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onNattKeepAliveChanged(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc0e

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLog(I)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 129
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onPdnHandover(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc04

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 72
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onWfcPdnError(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc07

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 59
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onWfcPdnStateChanged(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc09

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 117
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onWifiLock(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc37

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 161
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onWifiMonitoringThreshouldChanged(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 28
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc06

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 33
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onWifiPdnActivate(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 41
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc05

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 46
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onWifiPdnOOS(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc10

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 145
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onWifiPingRequest(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc0f

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 179
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioIndication;->convertArrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onWifiRoveout(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc03

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRadioIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 90
    :cond_0
    return-void
.end method
