.class public Lcom/mediatek/ims/config/op/Op12ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op12ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const-string v0, "Op12ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 7
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 14
    const/4 v0, 0x1

    .line 15
    .local v0, "set":Z
    const/16 v1, 0x3e9

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    const-string v1, "60"

    const-string v3, "30"

    const-string v4, "300"

    const-string v5, "0"

    const-string v6, "1"

    packed-switch p1, :pswitch_data_0

    .line 148
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 134
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 136
    goto/16 :goto_0

    .line 131
    :pswitch_1
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 132
    goto/16 :goto_0

    .line 128
    :pswitch_2
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 129
    goto/16 :goto_0

    .line 124
    :pswitch_3
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 125
    goto/16 :goto_0

    .line 119
    :pswitch_4
    iput-object v3, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 120
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 121
    goto/16 :goto_0

    .line 115
    :pswitch_5
    const-string v1, "100"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 116
    goto/16 :goto_0

    .line 110
    :pswitch_6
    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 111
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 112
    goto/16 :goto_0

    .line 105
    :pswitch_7
    const-string v1, "625000"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 106
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 107
    goto/16 :goto_0

    .line 100
    :pswitch_8
    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 101
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 102
    goto/16 :goto_0

    .line 95
    :pswitch_9
    const-string v1, "7776000"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 96
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 97
    goto/16 :goto_0

    .line 138
    :pswitch_a
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 139
    goto/16 :goto_0

    .line 90
    :pswitch_b
    const-string v1, "86400"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 91
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 92
    goto/16 :goto_0

    .line 85
    :pswitch_c
    const-string v1, "1200"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 86
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 87
    goto :goto_0

    .line 81
    :pswitch_d
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 77
    :pswitch_e
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 78
    goto :goto_0

    .line 73
    :pswitch_f
    const-string v1, "vzims.com"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 74
    goto :goto_0

    .line 69
    :pswitch_10
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 65
    :pswitch_11
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 66
    goto :goto_0

    .line 60
    :pswitch_12
    iput-object v3, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 61
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 62
    goto :goto_0

    .line 55
    :pswitch_13
    const-string v1, "16"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 56
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 57
    goto :goto_0

    .line 50
    :pswitch_14
    const-string v1, "3"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 51
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 52
    goto :goto_0

    .line 46
    :pswitch_15
    iput-object v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 41
    :pswitch_16
    const-string v1, "5"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 42
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 43
    goto :goto_0

    .line 36
    :pswitch_17
    const-string v1, "6"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 37
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 38
    goto :goto_0

    .line 31
    :pswitch_18
    iput-object v4, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 32
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 33
    goto :goto_0

    .line 26
    :pswitch_19
    iput-object v4, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 27
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 28
    goto :goto_0

    .line 22
    :pswitch_1a
    const-string v1, "2"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 23
    goto :goto_0

    .line 18
    :pswitch_1b
    const-string v1, "7"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 145
    :cond_0
    const-string v1, ""

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 146
    goto :goto_0

    .line 141
    :cond_1
    const-string v1, "21600"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 142
    iput v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 143
    nop

    .line 151
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
