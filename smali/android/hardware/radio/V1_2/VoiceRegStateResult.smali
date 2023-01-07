.class public final Landroid/hardware/radio/V1_2/VoiceRegStateResult;
.super Ljava/lang/Object;
.source "VoiceRegStateResult.java"


# instance fields
.field public cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

.field public cssSupported:Z

.field public defaultRoamingIndicator:I

.field public rat:I

.field public reasonForDenial:I

.field public regState:I

.field public roamingIndicator:I

.field public systemIsInPrl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    .line 15
    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    .line 21
    iput-boolean v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 26
    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 31
    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 36
    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 77
    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 78
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentity;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

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
            "Landroid/hardware/radio/V1_2/VoiceRegStateResult;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/VoiceRegStateResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 166
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 167
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 168
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 167
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 171
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 173
    new-instance v5, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 174
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    mul-int/lit8 v6, v4, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 175
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
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
            "Landroid/hardware/radio/V1_2/VoiceRegStateResult;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/VoiceRegStateResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 204
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 206
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 207
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 208
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 209
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 214
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 215
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 86
    return v1

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    if-eq v2, v3, :cond_2

    .line 89
    return v1

    .line 91
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 92
    .local v2, "other":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    if-eq v3, v4, :cond_3

    .line 93
    return v1

    .line 95
    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    if-eq v3, v4, :cond_4

    .line 96
    return v1

    .line 98
    :cond_4
    iget-boolean v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    if-eq v3, v4, :cond_5

    .line 99
    return v1

    .line 101
    :cond_5
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    if-eq v3, v4, :cond_6

    .line 102
    return v1

    .line 104
    :cond_6
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    if-eq v3, v4, :cond_7

    .line 105
    return v1

    .line 107
    :cond_7
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    if-eq v3, v4, :cond_8

    .line 108
    return v1

    .line 110
    :cond_8
    iget v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    iget v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    if-eq v3, v4, :cond_9

    .line 111
    return v1

    .line 113
    :cond_9
    iget-object v3, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 114
    return v1

    .line 116
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 121
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 129
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 121
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 184
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    .line 185
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    .line 186
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 187
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 188
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 189
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 190
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 191
    iget-object v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 157
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 158
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 159
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ".regState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .cssSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .roamingIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", .systemIsInPrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", .defaultRoamingIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", .reasonForDenial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", .cellIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 219
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 220
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 221
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 222
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 225
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 226
    iget-object v0, p0, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 227
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 195
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 196
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 198
    return-void
.end method
