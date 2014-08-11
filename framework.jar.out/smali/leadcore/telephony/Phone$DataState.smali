.class public final enum Lleadcore/telephony/Phone$DataState;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lleadcore/telephony/Phone$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lleadcore/telephony/Phone$DataState;

.field public static final enum CONNECTED:Lleadcore/telephony/Phone$DataState;

.field public static final enum CONNECTING:Lleadcore/telephony/Phone$DataState;

.field public static final enum DISCONNECTED:Lleadcore/telephony/Phone$DataState;

.field public static final enum SUSPENDED:Lleadcore/telephony/Phone$DataState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lleadcore/telephony/Phone$DataState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lleadcore/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataState;->CONNECTED:Lleadcore/telephony/Phone$DataState;

    new-instance v0, Lleadcore/telephony/Phone$DataState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lleadcore/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataState;->CONNECTING:Lleadcore/telephony/Phone$DataState;

    new-instance v0, Lleadcore/telephony/Phone$DataState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lleadcore/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataState;->DISCONNECTED:Lleadcore/telephony/Phone$DataState;

    new-instance v0, Lleadcore/telephony/Phone$DataState;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v5}, Lleadcore/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lleadcore/telephony/Phone$DataState;->SUSPENDED:Lleadcore/telephony/Phone$DataState;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lleadcore/telephony/Phone$DataState;

    sget-object v1, Lleadcore/telephony/Phone$DataState;->CONNECTED:Lleadcore/telephony/Phone$DataState;

    aput-object v1, v0, v2

    sget-object v1, Lleadcore/telephony/Phone$DataState;->CONNECTING:Lleadcore/telephony/Phone$DataState;

    aput-object v1, v0, v3

    sget-object v1, Lleadcore/telephony/Phone$DataState;->DISCONNECTED:Lleadcore/telephony/Phone$DataState;

    aput-object v1, v0, v4

    sget-object v1, Lleadcore/telephony/Phone$DataState;->SUSPENDED:Lleadcore/telephony/Phone$DataState;

    aput-object v1, v0, v5

    sput-object v0, Lleadcore/telephony/Phone$DataState;->$VALUES:[Lleadcore/telephony/Phone$DataState;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lleadcore/telephony/Phone$DataState;
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    const-class v0, Lleadcore/telephony/Phone$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lleadcore/telephony/Phone$DataState;

    return-object v0
.end method

.method public static values()[Lleadcore/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lleadcore/telephony/Phone$DataState;->$VALUES:[Lleadcore/telephony/Phone$DataState;

    invoke-virtual {v0}, [Lleadcore/telephony/Phone$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lleadcore/telephony/Phone$DataState;

    return-object v0
.end method
