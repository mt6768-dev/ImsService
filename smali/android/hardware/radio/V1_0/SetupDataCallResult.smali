.class public final Landroid/hardware/radio/V1_0/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public active:I

.field public addresses:Ljava/lang/String;

.field public cid:I

.field public dnses:Ljava/lang/String;

.field public gateways:Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public pcscf:Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 15
    iput v0, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

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
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 121
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 122
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 122
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 126
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 128
    new-instance v5, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 129
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    mul-int/lit8 v6, v4, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
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
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 198
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 200
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 201
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 203
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 208
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 209
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 19
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 20
    return v0

    .line 22
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 23
    return v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-eq v2, v3, :cond_2

    .line 26
    return v1

    .line 28
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 29
    .local v2, "other":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    if-eq v3, v4, :cond_3

    .line 30
    return v1

    .line 32
    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    if-eq v3, v4, :cond_4

    .line 33
    return v1

    .line 35
    :cond_4
    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    if-eq v3, v4, :cond_5

    .line 36
    return v1

    .line 38
    :cond_5
    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    if-eq v3, v4, :cond_6

    .line 39
    return v1

    .line 41
    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 42
    return v1

    .line 44
    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 45
    return v1

    .line 47
    :cond_8
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 48
    return v1

    .line 50
    :cond_9
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 51
    return v1

    .line 53
    :cond_a
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 54
    return v1

    .line 56
    :cond_b
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 57
    return v1

    .line 59
    :cond_c
    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    if-eq v3, v4, :cond_d

    .line 60
    return v1

    .line 62
    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 67
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 76
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 77
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 67
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 139
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 140
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    .line 141
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 142
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 143
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    .line 145
    nop

    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 145
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 150
    const-wide/16 v4, 0x20

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 152
    nop

    .line 153
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 152
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 157
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    .line 159
    nop

    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 159
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 164
    const-wide/16 v4, 0x40

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    .line 166
    nop

    .line 167
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 166
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 171
    const-wide/16 v4, 0x50

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    .line 173
    nop

    .line 174
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 173
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 178
    const-wide/16 v4, 0x60

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    .line 180
    nop

    .line 181
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 180
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 185
    const-wide/16 v2, 0x70

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    .line 186
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 112
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 113
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .suggestedRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .addresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .dnses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .gateways = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .mtu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 213
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 217
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 218
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 219
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 220
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 221
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 222
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 223
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 189
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 190
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 192
    return-void
.end method
