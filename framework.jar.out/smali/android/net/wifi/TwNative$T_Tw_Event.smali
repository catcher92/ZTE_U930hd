.class public final enum Landroid/net/wifi/TwNative$T_Tw_Event;
.super Ljava/lang/Enum;
.source "TwNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/TwNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T_Tw_Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/TwNative$T_Tw_Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_GET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_GET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_GET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_GET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_SET_PIN:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

.field public static final enum EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_GET_SIM_TYPE_ACTION"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 26
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_SET_SIM_TYPE_ACTION"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 27
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_GET_IMSI_ACTION"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 28
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_SET_IMSI_ACTION"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 29
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_GET_GSM_AUTH_ACTION"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 30
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_SET_GSM_AUTH_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 31
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_GET_UMTS_AUTH_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 32
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_SET_UMTS_AUTH_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 33
    new-instance v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    const-string v1, "EVENT_SET_PIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwNative$T_Tw_Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_PIN:Landroid/net/wifi/TwNative$T_Tw_Event;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/wifi/TwNative$T_Tw_Event;

    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_GET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_PIN:Landroid/net/wifi/TwNative$T_Tw_Event;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->$VALUES:[Landroid/net/wifi/TwNative$T_Tw_Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/TwNative$T_Tw_Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/TwNative$T_Tw_Event;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/TwNative$T_Tw_Event;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/net/wifi/TwNative$T_Tw_Event;->$VALUES:[Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v0}, [Landroid/net/wifi/TwNative$T_Tw_Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/TwNative$T_Tw_Event;

    return-object v0
.end method
