.class public final Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
.super Ljava/lang/Object;
.source "DedicateDataCall.java"


# instance fields
.field public active:I

.field public bearerId:I

.field public cid:I

.field public ddcId:I

.field public failCause:I

.field public hasPcscf:I

.field public hasQos:I

.field public hasTft:I

.field public interfaceId:I

.field public pcscf:Ljava/lang/String;

.field public primaryCid:I

.field public qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

.field public signalingFlag:I

.field public tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    .line 6
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    .line 7
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    .line 8
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    .line 9
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    .line 10
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    .line 11
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    .line 12
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    .line 13
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    .line 14
    new-instance v1, Lvendor/mediatek/hardware/radio/V3_0/Qos;

    invoke-direct {v1}, Lvendor/mediatek/hardware/radio/V3_0/Qos;-><init>()V

    iput-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    .line 15
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    .line 16
    new-instance v1, Lvendor/mediatek/hardware/radio/V3_0/Tft;

    invoke-direct {v1}, Lvendor/mediatek/hardware/radio/V3_0/Tft;-><init>()V

    iput-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    .line 17
    iput v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 142
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 143
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 144
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 143
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 147
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 149
    new-instance v5, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v5}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 150
    .local v5, "_hidl_vec_element":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    mul-int/lit16 v6, v4, 0x88

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v5    # "_hidl_vec_element":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 192
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 193
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 194
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 195
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 196
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 197
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    mul-int/lit16 v5, v3, 0x88

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 202
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 203
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 26
    return v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    if-eq v2, v3, :cond_2

    .line 29
    return v1

    .line 31
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    .line 32
    .local v2, "other":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    if-eq v3, v4, :cond_3

    .line 33
    return v1

    .line 35
    :cond_3
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    if-eq v3, v4, :cond_4

    .line 36
    return v1

    .line 38
    :cond_4
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    if-eq v3, v4, :cond_5

    .line 39
    return v1

    .line 41
    :cond_5
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    if-eq v3, v4, :cond_6

    .line 42
    return v1

    .line 44
    :cond_6
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    if-eq v3, v4, :cond_7

    .line 45
    return v1

    .line 47
    :cond_7
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    if-eq v3, v4, :cond_8

    .line 48
    return v1

    .line 50
    :cond_8
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    if-eq v3, v4, :cond_9

    .line 51
    return v1

    .line 53
    :cond_9
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    if-eq v3, v4, :cond_a

    .line 54
    return v1

    .line 56
    :cond_a
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    if-eq v3, v4, :cond_b

    .line 57
    return v1

    .line 59
    :cond_b
    iget-object v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    iget-object v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 60
    return v1

    .line 62
    :cond_c
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    if-eq v3, v4, :cond_d

    .line 63
    return v1

    .line 65
    :cond_d
    iget-object v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    iget-object v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 66
    return v1

    .line 68
    :cond_e
    iget v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    iget v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    if-eq v3, v4, :cond_f

    .line 69
    return v1

    .line 71
    :cond_f
    iget-object v3, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 72
    return v1

    .line 74
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 79
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    .line 89
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    .line 91
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 160
    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    .line 161
    const-wide/16 v3, 0x4

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    .line 162
    const-wide/16 v3, 0x8

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    .line 163
    const-wide/16 v3, 0xc

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    .line 164
    const-wide/16 v3, 0x10

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    .line 165
    const-wide/16 v3, 0x14

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    .line 166
    const-wide/16 v3, 0x18

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    .line 167
    const-wide/16 v3, 0x1c

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    .line 168
    const-wide/16 v3, 0x20

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    .line 169
    iget-object v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    const-wide/16 v4, 0x24

    add-long v4, p3, v4

    invoke-virtual {v3, p1, v10, v4, v5}, Lvendor/mediatek/hardware/radio/V3_0/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 170
    const-wide/16 v3, 0x38

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    .line 171
    iget-object v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v3, p1, v10, v4, v5}, Lvendor/mediatek/hardware/radio/V3_0/Tft;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 172
    const-wide/16 v3, 0x70

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    .line 173
    const-wide/16 v3, 0x78

    add-long v5, p3, v3

    invoke-virtual {v10, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    .line 175
    nop

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 175
    const/4 v13, 0x0

    move-object v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v11

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 180
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 133
    const-wide/16 v0, 0x88

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 134
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 135
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ".ddcId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .interfaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .primaryCid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .signalingFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .bearerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .hasQos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .qos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .hasTft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .tft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .hasPcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 207
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->ddcId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 208
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->interfaceId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 209
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->primaryCid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 211
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->active:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 212
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->signalingFlag:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->bearerId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->failCause:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasQos:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->qos:Lvendor/mediatek/hardware/radio/V3_0/Qos;

    const-wide/16 v1, 0x24

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 217
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasTft:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 218
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->tft:Lvendor/mediatek/hardware/radio/V3_0/Tft;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/Tft;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 219
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->hasPcscf:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 220
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->pcscf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 221
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 183
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 184
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 186
    return-void
.end method
