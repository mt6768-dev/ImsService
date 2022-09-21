.class public final enum Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "ImsCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsCommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const-string v1, "RADIO_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 51
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const-string v1, "RADIO_UNAVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 52
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const-string v1, "RADIO_ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 49
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    sget-object v5, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 1

    .line 49
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v0}, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 59
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOn()Z
    .locals 1

    .line 55
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
