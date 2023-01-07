.class public Lcom/mediatek/ims/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# static fields
.field public static final ACTION_IMS_CONFERENCE_CALL_INDICATION:Ljava/lang/String; = "android.intent.action.ims.conference"

.field public static final ACTION_IMS_DIALOG_EVENT_PACKAGE:Ljava/lang/String; = "com.mediatek.intent.action.ims.dialogEventPackage"

.field public static final ACTION_LTE_MESSAGE_WAITING_INDICATION:Ljava/lang/String; = "mediatek.intent.action.lte.mwi"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "call.id"

.field public static final EXTRA_DEP_CONTENT:Ljava/lang/String; = "com.mediatek.intent.extra.DEP_CONTENT"

.field public static final EXTRA_LTE_MWI_BODY:Ljava/lang/String; = "lte_mwi_body"

.field public static final EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = "message.content"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone.id"

.field public static final IMS_STATE_DISABLED:I = 0x0

.field public static final IMS_STATE_DISABLING:I = 0x3

.field public static final IMS_STATE_ENABLE:I = 0x1

.field public static final IMS_STATE_ENABLING:I = 0x2

.field public static final PACKAGE_NAME_PHONE:Ljava/lang/String; = "com.android.phone"

.field public static final PERMISSION_READ_LTE_MESSAGE_WAITING_INDICATION:Ljava/lang/String; = "com.mediatek.permission.READ_LTE_MESSAGE_WAITING_INDICATION"

.field public static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field public static final PROPERTY_MD_MULTI_IMS_SUPPORT:Ljava/lang/String; = "ro.vendor.md_mims_support"

.field public static PROPERTY_TBCW_MODE:Ljava/lang/String; = null

.field public static final REGISTRATION_TECH_CELLULAR:I = 0x0

.field public static final REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final REGISTRATION_TECH_NONE:I = -0x1

.field public static final REGISTRATION_TECH_VODATA1:I = 0x6

.field public static final REGISTRATION_TECH_VODATA2:I = 0x7

.field public static final REGISTRATION_TECH_VODATA3:I = 0x8

.field public static final REGISTRATION_TECH_VODATA4:I = 0x9

.field public static final SELF_IDENTIFY_UPDATE:Ljava/lang/String; = "com.mediatek.ims.action.self_identify_update"

.field public static final SYS_PROP_MD_AUTO_SETUP_IMS:Ljava/lang/String; = "ro.vendor.md_auto_setup_ims"

.field public static TBCW_DISABLED:Ljava/lang/String;

.field public static TBCW_OFF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "persist.vendor.radio.terminal-based.cw"

    sput-object v0, Lcom/mediatek/ims/ImsConstants;->PROPERTY_TBCW_MODE:Ljava/lang/String;

    .line 69
    const-string v0, "disabled_tbcw"

    sput-object v0, Lcom/mediatek/ims/ImsConstants;->TBCW_DISABLED:Ljava/lang/String;

    .line 70
    const-string v0, "enabled_tbcw_off"

    sput-object v0, Lcom/mediatek/ims/ImsConstants;->TBCW_OFF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
