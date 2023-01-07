.class Lcom/mediatek/ims/internal/DataDispatcher$1;
.super Ljava/util/HashMap;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 77
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$1;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "OPERATOR_BARRED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NAS_SIGNALLING"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MBMS_CAPABILITIES_INSUFFICIENT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LLC_SNDCP"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MISSING_UNKNOWN_APN"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNKNOWN_PDP_ADDRESS_TYPE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "USER_AUTHENTICATION"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ACTIVATION_REJECT_GGSN"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NSAPI_IN_USE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "REGULAR_DEACTIVATION"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "QOS_NOT_ACCEPTED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NETWORK_FAILURE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UMTS_REACTIVATION_REQ"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FEATURE_NOT_SUPP"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TFT_SEMANTIC_ERROR"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TFT_SYTAX_ERROR"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNKNOWN_PDP_CONTEXT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FILTER_SEMANTIC_ERROR"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FILTER_SYTAX_ERROR"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PDP_WITHOUT_ACTIVE_TFT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MULTICAST_GROUP_MEMBERSHIP_TIMEOUT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BCM_VIOLATION"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LAST_PDN_DISC_NOT_ALLOWED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ONLY_IPV4_ALLOWED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ONLY_IPV6_ALLOWED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/16 v0, 0x34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ONLY_SINGLE_BEARER_ALLOWED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ESM_INFO_NOT_RECEIVED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PDN_CONN_DOES_NOT_EXIST"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "COLLISION_WITH_NW_INITIATED_REQUEST"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNSUPPORTED_QCI_VALUE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BEARER_HANDLING_NOT_SUPPORT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v0, 0x42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/16 v0, 0x51

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INVALID_TRANSACTION_ID"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MESSAGE_INCORRECT_SEMANTIC"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INVALID_MANDATORY_INFO"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v0, 0x61

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MESSAGE_TYPE_UNSUPPORTED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MSG_TYPE_NONCOMPATIBLE_STATE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNKNOWN_INFO_ELEMENT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CONDITIONAL_IE_ERROR"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PROTOCOL_ERRORS"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "APN_TYPE_CONFLICT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "REGISTRATION_FAIL"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "GPRS_REGISTRATION_FAIL"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SIGNAL_LOST"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PREF_RADIO_TECH_CHANGED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RADIO_POWER_OFF"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TETHERED_CALL_ACTIVE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v0, -0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PDP_FAIL_ROUTER_ADVERTISEMENT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v0, -0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PDP_FAIL_FALLBACK_RETRY"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const v0, 0xffffe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INSUFFICIENT_LOCAL_RESOURCES"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const v0, 0xffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ERROR_UNSPECIFIED"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const v0, 0x10001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const v0, 0x10002

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UNACCEPTABLE_NETWORK_PARAMETER"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const v0, 0x10003

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const v0, 0x10004

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LOST_CONNECTION"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const v0, 0x10005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RESET_BY_FRAMEWORK"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v0, 0x1402

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const v0, 0x1502a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TCM_ESM_TIMER_TIMEOUT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v0, 0xf46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MTK_TCM_ESM_TIMER_TIMEOUT"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v0, 0xe0f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DUE_TO_REACH_RETRY_COUNTER"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v0, 0x100c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "OEM_DCFAILCAUSE_12"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/ims/internal/DataDispatcher$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method
