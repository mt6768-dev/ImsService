.class public Lcom/mediatek/ims/WfcReasonInfo;
.super Ljava/lang/Object;
.source "WfcReasonInfo.java"


# static fields
.field public static final CODE_UNSPECIFIED:I = 0x3e7

.field public static final CODE_WFC_403_AUTH_SCHEME_UNSUPPORTED:I = 0x644

.field public static final CODE_WFC_403_FORBIDDEN:I = 0x640

.field public static final CODE_WFC_403_HANDSET_BLACKLISTED:I = 0x645

.field public static final CODE_WFC_403_MISMATCH_IDENTITIES:I = 0x643

.field public static final CODE_WFC_403_NOT_ALLOWED_FROM_THIS_REGION:I = 0x646

.field public static final CODE_WFC_403_ROAMING_NOT_ALLOWED:I = 0x642

.field public static final CODE_WFC_403_UNKNOWN_USER:I = 0x641

.field public static final CODE_WFC_503_ECC_OVER_WIFI_NOT_ALLOWED:I = 0x6a6

.field public static final CODE_WFC_606_WIFI_CALLING_IP_NOT_ACCEPTABLE:I = 0x6a7

.field public static final CODE_WFC_911_MISSING:I = 0x6a5

.field public static final CODE_WFC_ANY_OTHER_CONN_ERROR:I = 0x57f

.field public static final CODE_WFC_DEFAULT:I = 0x64

.field public static final CODE_WFC_DNS_RECV_NAPTR_QUERY_RSP_ERROR:I = 0x4b1

.field public static final CODE_WFC_DNS_RECV_RSP_QUERY_ERROR:I = 0x4b3

.field public static final CODE_WFC_DNS_RECV_RSP_SRV_QUERY_ERROR:I = 0x4b2

.field public static final CODE_WFC_DNS_RESOLVE_FQDN_ERROR:I = 0x411

.field public static final CODE_WFC_EPDG_CON_OR_LOCAL_OR_NULL_PTR_ERROR:I = 0x439

.field public static final CODE_WFC_EPDG_IPSEC_SETUP_ERROR:I = 0x43a

.field public static final CODE_WFC_INCORRECT_SIM_CARD_ERROR:I = 0x515

.field public static final CODE_WFC_INTERNAL_SERVER_ERROR:I = 0x57e

.field public static final CODE_WFC_LOCAL_OR_NULL_PTR_ERROR:I = 0x579

.field public static final CODE_WFC_NO_AVAILABLE_QUALIFIED_MOBILE_NETWORK:I = 0x7d4

.field public static final CODE_WFC_RNS_ALLOWED_RADIO_DENY:I = 0x7d6

.field public static final CODE_WFC_RNS_ALLOWED_RADIO_NONE:I = 0x7d7

.field public static final CODE_WFC_SERVER_CERT_INVALID_ERROR:I = 0x5e0

.field public static final CODE_WFC_SERVER_CERT_VALIDATION_ERROR:I = 0x5dd

.field public static final CODE_WFC_SERVER_IPSEC_CERT_INVALID_ERROR:I = 0x457

.field public static final CODE_WFC_SERVER_IPSEC_CERT_VALIDATION_ERROR:I = 0x44d

.field public static final CODE_WFC_SUCCESS:I = 0x63

.field public static final CODE_WFC_TLS_CONN_ERROR:I = 0x57d

.field public static final CODE_WFC_UNABLE_TO_COMPLETE_CALL:I = 0x7d3

.field public static final CODE_WFC_UNABLE_TO_COMPLETE_CALL_CD:I = 0x7d5

.field public static final CODE_WFC_WIFI_SIGNAL_LOST:I = 0x7d1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImsStatusCodeString(I)I
    .locals 1
    .param p0, "status"    # I

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "resId":I
    nop

    .line 164
    return v0
.end method
