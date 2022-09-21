.class public Lcom/mediatek/wfo/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/WifiOffloadManager$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_CONNECTION_ERROR:Ljava/lang/String; = "android.intent.action.NOTIFY_CONNECTION_ERROR"

.field public static final ACTION_ROVE_OUT_ALERT:Ljava/lang/String; = "android.intent.action.ROVE_OUT_ALERT"

.field public static final CALL_STATE_ACTIVE:I = 0x1

.field public static final CALL_STATE_END:I = 0x0

.field public static final CALL_STATE_ESTABLISHING:I = 0x2

.field public static final CALL_TYPE_VIDEO:I = 0x2

.field public static final CALL_TYPE_VOICE:I = 0x1

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final HANDOVER_END:I = 0x1

.field public static final HANDOVER_FAILED:I = -0x1

.field public static final HANDOVER_START:I = 0x0

.field public static final RAN_TYPE_DENY:I = -0x1

.field public static final RAN_TYPE_MOBILE_3GPP:I = 0x1

.field public static final RAN_TYPE_MOBILE_3GPP2:I = 0x3

.field public static final RAN_TYPE_NONE:I = -0x2

.field public static final RAN_TYPE_UNSPEC:I = 0x0

.field public static final RAN_TYPE_WIFI:I = 0x2

.field public static final WFO_SERVICE:Ljava/lang/String; = "wfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
