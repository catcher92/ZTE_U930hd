.class public final enum Landroid/net/wifi/TwState;
.super Ljava/lang/Enum;
.source "TwState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/TwState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/TwState;

.field public static final enum ALIVE:Landroid/net/wifi/TwState;

.field public static final enum CONNECTED:Landroid/net/wifi/TwState;

.field public static final enum CONNECTING:Landroid/net/wifi/TwState;

.field public static final enum CONNECT_FAILED:Landroid/net/wifi/TwState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/TwState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wifi/TwState;

.field public static final enum DISCONNECTING:Landroid/net/wifi/TwState;

.field public static final enum DISCONNECT_FAILED:Landroid/net/wifi/TwState;

.field public static final enum IDLE:Landroid/net/wifi/TwState;

.field public static final enum INACTIVE:Landroid/net/wifi/TwState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->INACTIVE:Landroid/net/wifi/TwState;

    .line 37
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->IDLE:Landroid/net/wifi/TwState;

    .line 43
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->CONNECTING:Landroid/net/wifi/TwState;

    .line 49
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    .line 54
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "CONNECT_FAILED"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    .line 60
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "ALIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->ALIVE:Landroid/net/wifi/TwState;

    .line 65
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->DISCONNECTING:Landroid/net/wifi/TwState;

    .line 72
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->DISCONNECTED:Landroid/net/wifi/TwState;

    .line 76
    new-instance v0, Landroid/net/wifi/TwState;

    const-string v1, "DISCONNECT_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/TwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/TwState;->DISCONNECT_FAILED:Landroid/net/wifi/TwState;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/wifi/TwState;

    sget-object v1, Landroid/net/wifi/TwState;->INACTIVE:Landroid/net/wifi/TwState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/TwState;->IDLE:Landroid/net/wifi/TwState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/TwState;->CONNECTING:Landroid/net/wifi/TwState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/TwState;->CONNECT_FAILED:Landroid/net/wifi/TwState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/TwState;->ALIVE:Landroid/net/wifi/TwState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/TwState;->DISCONNECTING:Landroid/net/wifi/TwState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/TwState;->DISCONNECTED:Landroid/net/wifi/TwState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/TwState;->DISCONNECT_FAILED:Landroid/net/wifi/TwState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/TwState;->$VALUES:[Landroid/net/wifi/TwState;

    .line 111
    new-instance v0, Landroid/net/wifi/TwState$1;

    invoke-direct {v0}, Landroid/net/wifi/TwState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/TwState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isAliveState(Landroid/net/wifi/TwState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 87
    sget-object v0, Landroid/net/wifi/TwState;->ALIVE:Landroid/net/wifi/TwState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/net/wifi/TwState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 93
    sget-object v0, Landroid/net/wifi/TwState;->ALIVE:Landroid/net/wifi/TwState;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/wifi/TwState;->CONNECTED:Landroid/net/wifi/TwState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldLogout(Landroid/net/wifi/TwState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 98
    invoke-static {p0}, Landroid/net/wifi/TwState;->isConnected(Landroid/net/wifi/TwState;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/TwState;->CONNECTING:Landroid/net/wifi/TwState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/TwState;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Landroid/net/wifi/TwState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/TwState;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/TwState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/net/wifi/TwState;->$VALUES:[Landroid/net/wifi/TwState;

    invoke-virtual {v0}, [Landroid/net/wifi/TwState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/TwState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/net/wifi/TwState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void
.end method
