.class public final Landroid/hardware/radio/V1_5/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 7
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
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentity;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 265
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 266
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xa8

    int-to-long v5, v3

    .line 267
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 266
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 270
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 272
    new-instance v5, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 273
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentity;
    mul-int/lit16 v6, v4, 0xa8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_5/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 274
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentity;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
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
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            ">;)V"
        }
    .end annotation

    .line 334
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentity;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 336
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 337
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 338
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 339
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 340
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 341
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/CellIdentity;

    mul-int/lit16 v5, v3, 0xa8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 346
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 347
    return-void
.end method


# virtual methods
.method public cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;
    .locals 4

    .line 122
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 124
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 127
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    return-object v0
.end method

.method public cdma(Landroid/hardware/radio/V1_2/CellIdentityCdma;)V
    .locals 1
    .param p1, "cdma"    # Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 117
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 118
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 182
    return v0

    .line 184
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 185
    return v1

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CellIdentity;

    if-eq v2, v3, :cond_2

    .line 188
    return v1

    .line 190
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/CellIdentity;

    .line 191
    .local v2, "other":Landroid/hardware/radio/V1_5/CellIdentity;
    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    if-eq v3, v4, :cond_3

    .line 192
    return v1

    .line 194
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 195
    return v1

    .line 197
    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 1

    .line 177
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    return v0
.end method

.method public gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;
    .locals 4

    .line 62
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 64
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 67
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    return-object v0
.end method

.method public gsm(Landroid/hardware/radio/V1_5/CellIdentityGsm;)V
    .locals 1
    .param p1, "gsm"    # Landroid/hardware/radio/V1_5/CellIdentityGsm;

    .line 57
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 58
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 203
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 204
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 202
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lte()Landroid/hardware/radio/V1_5/CellIdentityLte;
    .locals 4

    .line 142
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 144
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 147
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    return-object v0
.end method

.method public lte(Landroid/hardware/radio/V1_5/CellIdentityLte;)V
    .locals 1
    .param p1, "lte"    # Landroid/hardware/radio/V1_5/CellIdentityLte;

    .line 137
    const/4 v0, 0x5

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 138
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 42
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 44
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 47
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public noinit(Landroid/hidl/safe_union/V1_0/Monostate;)V
    .locals 1
    .param p1, "noinit"    # Landroid/hidl/safe_union/V1_0/Monostate;

    .line 37
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 38
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public nr()Landroid/hardware/radio/V1_5/CellIdentityNr;
    .locals 4

    .line 162
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 164
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 167
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    return-object v0
.end method

.method public nr(Landroid/hardware/radio/V1_5/CellIdentityNr;)V
    .locals 1
    .param p1, "nr"    # Landroid/hardware/radio/V1_5/CellIdentityNr;

    .line 157
    const/4 v0, 0x6

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 158
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 283
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 284
    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentityNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 317
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 318
    goto :goto_0

    .line 311
    :pswitch_1
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 312
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 313
    goto :goto_0

    .line 306
    :pswitch_2
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 307
    check-cast v0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentityCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 308
    goto :goto_0

    .line 301
    :pswitch_3
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 302
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 303
    goto :goto_0

    .line 296
    :pswitch_4
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentityWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 297
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 298
    goto :goto_0

    .line 291
    :pswitch_5
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentityGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 292
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 293
    goto :goto_0

    .line 286
    :pswitch_6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 287
    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 288
    nop

    .line 324
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 256
    const-wide/16 v0, 0xa8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 257
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 258
    return-void
.end method

.method public tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;
    .locals 4

    .line 102
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 104
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 107
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    return-object v0
.end method

.method public tdscdma(Landroid/hardware/radio/V1_5/CellIdentityTdscdma;)V
    .locals 1
    .param p1, "tdscdma"    # Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    .line 97
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 98
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-byte v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    packed-switch v1, :pswitch_data_0

    .line 248
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :pswitch_0
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->nr()Landroid/hardware/radio/V1_5/CellIdentityNr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    goto :goto_0

    .line 238
    :pswitch_1
    const-string v1, ".lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->lte()Landroid/hardware/radio/V1_5/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_0

    .line 233
    :pswitch_2
    const-string v1, ".cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    goto :goto_0

    .line 228
    :pswitch_3
    const-string v1, ".tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    goto :goto_0

    .line 223
    :pswitch_4
    const-string v1, ".wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    goto :goto_0

    .line 218
    :pswitch_5
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    goto :goto_0

    .line 213
    :pswitch_6
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    nop

    .line 251
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;
    .locals 4

    .line 82
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 84
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 87
    invoke-static {v3}, Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    return-object v0
.end method

.method public wcdma(Landroid/hardware/radio/V1_5/CellIdentityWcdma;)V
    .locals 1
    .param p1, "wcdma"    # Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    .line 77
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    .line 78
    iput-object p1, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_o:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 351
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 352
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    .line 382
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/CellIdentity;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->nr()Landroid/hardware/radio/V1_5/CellIdentityNr;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 379
    goto :goto_0

    .line 374
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->lte()Landroid/hardware/radio/V1_5/CellIdentityLte;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 375
    goto :goto_0

    .line 370
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentityCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 371
    goto :goto_0

    .line 366
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 367
    goto :goto_0

    .line 362
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 363
    goto :goto_0

    .line 358
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 359
    goto :goto_0

    .line 354
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 355
    nop

    .line 385
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 327
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 328
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 329
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 330
    return-void
.end method
