.class public final Lvendor/mediatek/hardware/mtkradioex/V2_0/VendorSetting;
.super Ljava/lang/Object;
.source "VendorSetting.java"


# static fields
.field public static final VENDOR_SETTING_BIP_OVERRIDE_APN:I = 0x6

.field public static final VENDOR_SETTING_BIP_PDN_NAME_REUSE:I = 0x7

.field public static final VENDOR_SETTING_BIP_PDN_REUSE:I = 0x5

.field public static final VENDOR_SETTING_CXP_CONFIG_OPTR:I = 0x0

.field public static final VENDOR_SETTING_CXP_CONFIG_SBP:I = 0x3

.field public static final VENDOR_SETTING_CXP_CONFIG_SEG:I = 0x2

.field public static final VENDOR_SETTING_CXP_CONFIG_SPEC:I = 0x1

.field public static final VENDOR_SETTING_CXP_CONFIG_SUBID:I = 0x4

.field public static final VENDOR_SETTING_DATA_SSC_MODE:I = 0xf

.field public static final VENDOR_SETTING_RADIO_AIRPLANE_MODE:I = 0x8

.field public static final VENDOR_SETTING_RADIO_SILENT_REBOOT:I = 0xa

.field public static final VENDOR_SETTING_RADIO_SIM_MODE:I = 0x9

.field public static final VENDOR_SETTING_RCS_UA_ENABLE:I = 0xe

.field public static final VENDOR_SETTING_VILTE_ENABLE:I = 0xc

.field public static final VENDOR_SETTING_VIWIFI_ENABLE:I = 0xd

.field public static final VENDOR_SETTING_VOLTE_ENABLE:I = 0xb

.field public static final VENDOR_SETTING_WFC_ENABLE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 80
    .local v1, "flipped":I
    const-string v2, "VENDOR_SETTING_CXP_CONFIG_OPTR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 82
    const-string v2, "VENDOR_SETTING_CXP_CONFIG_SPEC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x1

    .line 85
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 86
    const-string v2, "VENDOR_SETTING_CXP_CONFIG_SEG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x2

    .line 89
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 90
    const-string v2, "VENDOR_SETTING_CXP_CONFIG_SBP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x3

    .line 93
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 94
    const-string v2, "VENDOR_SETTING_CXP_CONFIG_SUBID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x4

    .line 97
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 98
    const-string v2, "VENDOR_SETTING_BIP_PDN_REUSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x5

    .line 101
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 102
    const-string v2, "VENDOR_SETTING_BIP_OVERRIDE_APN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x6

    .line 105
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 106
    const-string v2, "VENDOR_SETTING_BIP_PDN_NAME_REUSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x7

    .line 109
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 110
    const-string v2, "VENDOR_SETTING_RADIO_AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x8

    .line 113
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 114
    const-string v2, "VENDOR_SETTING_RADIO_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x9

    .line 117
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 118
    const-string v2, "VENDOR_SETTING_RADIO_SILENT_REBOOT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0xa

    .line 121
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 122
    const-string v2, "VENDOR_SETTING_VOLTE_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0xb

    .line 125
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 126
    const-string v2, "VENDOR_SETTING_VILTE_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xc

    .line 129
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 130
    const-string v2, "VENDOR_SETTING_VIWIFI_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xd

    .line 133
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 134
    const-string v2, "VENDOR_SETTING_RCS_UA_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xe

    .line 137
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 138
    const-string v2, "VENDOR_SETTING_DATA_SSC_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0xf

    .line 141
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 142
    const-string v2, "VENDOR_SETTING_WFC_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x10

    .line 145
    :cond_f
    if-eq p0, v1, :cond_10

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_10
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "VENDOR_SETTING_CXP_CONFIG_OPTR"

    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 27
    const-string v0, "VENDOR_SETTING_CXP_CONFIG_SPEC"

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 30
    const-string v0, "VENDOR_SETTING_CXP_CONFIG_SEG"

    return-object v0

    .line 32
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 33
    const-string v0, "VENDOR_SETTING_CXP_CONFIG_SBP"

    return-object v0

    .line 35
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 36
    const-string v0, "VENDOR_SETTING_CXP_CONFIG_SUBID"

    return-object v0

    .line 38
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 39
    const-string v0, "VENDOR_SETTING_BIP_PDN_REUSE"

    return-object v0

    .line 41
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 42
    const-string v0, "VENDOR_SETTING_BIP_OVERRIDE_APN"

    return-object v0

    .line 44
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 45
    const-string v0, "VENDOR_SETTING_BIP_PDN_NAME_REUSE"

    return-object v0

    .line 47
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 48
    const-string v0, "VENDOR_SETTING_RADIO_AIRPLANE_MODE"

    return-object v0

    .line 50
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 51
    const-string v0, "VENDOR_SETTING_RADIO_SIM_MODE"

    return-object v0

    .line 53
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 54
    const-string v0, "VENDOR_SETTING_RADIO_SILENT_REBOOT"

    return-object v0

    .line 56
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 57
    const-string v0, "VENDOR_SETTING_VOLTE_ENABLE"

    return-object v0

    .line 59
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 60
    const-string v0, "VENDOR_SETTING_VILTE_ENABLE"

    return-object v0

    .line 62
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 63
    const-string v0, "VENDOR_SETTING_VIWIFI_ENABLE"

    return-object v0

    .line 65
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 66
    const-string v0, "VENDOR_SETTING_RCS_UA_ENABLE"

    return-object v0

    .line 68
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 69
    const-string v0, "VENDOR_SETTING_DATA_SSC_MODE"

    return-object v0

    .line 71
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 72
    const-string v0, "VENDOR_SETTING_WFC_ENABLE"

    return-object v0

    .line 74
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
