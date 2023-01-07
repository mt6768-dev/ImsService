.class final enum Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
.super Ljava/lang/Enum;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WifiLockSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

.field public static final enum MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

.field public static final enum WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 217
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    const-string v1, "WIFI_STATE_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    .line 218
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    const-string v1, "MODEM_STATE_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    .line 216
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 216
    const-class v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .locals 1

    .line 216
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-object v0
.end method
